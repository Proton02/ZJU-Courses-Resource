#include <stdio.h>
#include <malloc.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "BMPHEAD.h"
#define pi 3.14159

// 输出函数
void Output(FILESTRUCT *temp, char *name){
    FILE *fp = fopen(name, "wb");
    if ((temp->IH).biBitCount == 8) fwrite(temp, sizeof(FILE_HEAD) + sizeof(INF_HEAD) + 256 * sizeof(RGB), 1, fp);
    else fwrite(temp, sizeof(FILE_HEAD) + sizeof(INF_HEAD), 1, fp);
    fwrite(temp->pix_val, (temp->IH).biSizeImage * sizeof(unsigned char), 1, fp);
    fclose(fp);
}
// 平移
void TrAnslate(FILESTRUCT *Org, FILESTRUCT *Ans, int del_x, int del_y){
    memcpy(&(Ans->FH), &(Org->FH), sizeof(FILE_HEAD));
    memcpy(&(Ans->IH), &(Org->IH), sizeof(INF_HEAD));
    // 计算新图像大小
    int new_BMPwidth = Org->IH.biWidth + del_x;
    int new_BMPheight = Org->IH.biHeight + del_y;
    // 每行字节
    int Org_row_byte = (Org->IH.biBitCount / 8 * Org->IH.biWidth + 3) / 4 * 4; // 原图像
    int Ans_row_byte = (Ans->IH.biBitCount / 8 * new_BMPwidth + 3) / 4 * 4; // 变换图像
    Ans->IH.biWidth = new_BMPwidth;
    Ans->IH.biHeight = new_BMPheight;
    Ans->IH.biSizeImage = new_BMPheight * Ans_row_byte;
    Ans->FH.bfSize = Ans->IH.biSizeImage + Ans->FH.bfOffBits;
    Ans->pix_val = (unsigned char *)malloc(Ans->IH.biSizeImage * sizeof(unsigned char));
    // 设置新生成的背景颜色为白色（平移后空出来的）
    for(int i = 0; i < Ans->IH.biSizeImage; i++) Ans->pix_val[i] = 255;
    if(Ans->IH.biBitCount == 8){
        for(int i = 0; i < Org->IH.biHeight; i++){
            for(int j = 0; j < Org->IH.biWidth; j++){
                Ans->pix_val[(i + del_y) * Ans_row_byte + (j + del_x)] = Org->pix_val[i * Org_row_byte + j];
            }   
        }
        Output(Ans, "Translate_Gray.bmp");
    }else{ // 24位彩色图
        for(int i = 0; i < Org->IH.biHeight; i++){
            for(int j = 0; j < Org->IH.biWidth; j++){
                Ans->pix_val[(i + del_y) * Ans_row_byte + (j + del_x) * 3] = Org->pix_val[i * Org_row_byte + j * 3];
                Ans->pix_val[(i + del_y) * Ans_row_byte + (j + del_x) * 3 + 1] = Org->pix_val[i * Org_row_byte + j * 3 + 1];
                Ans->pix_val[(i + del_y) * Ans_row_byte + (j + del_x) * 3 + 2] = Org->pix_val[i * Org_row_byte + j * 3 + 2];
            }   
        }
        Output(Ans, "Translate_Color.bmp");
    }
}
// 旋转
void Rotate(FILESTRUCT *Org, FILESTRUCT *Ans, double angle){
    memcpy(&(Ans->FH), &(Org->FH), sizeof(FILE_HEAD));
    memcpy(&(Ans->IH), &(Org->IH), sizeof(INF_HEAD));
    angle *= pi / 180.0;
    int new_BMPwidth = Org->IH.biWidth * fabs(cos(angle)) + Org->IH.biHeight * fabs(sin(angle));
    int new_BMPheight = Org->IH.biWidth * fabs(sin(angle)) + Org->IH.biHeight * fabs(cos(angle));
    // 坐标系变换
    int center_x = Org->IH.biWidth / 2;
    int center_y = Org->IH.biHeight / 2;
    int new_center_x = center_x * cos(angle) - center_y * sin(angle);
    int new_center_y = center_x * sin(angle) + center_y * cos(angle);
    // 计算变换产生的偏移量
    int del_x = new_BMPwidth / 2 - new_center_x;
    int del_y = new_BMPheight / 2 - new_center_y;
    int Org_row_byte = (Org->IH.biBitCount / 8 * Org->IH.biWidth + 3) / 4 * 4; 
    int Ans_row_byte = (Ans->IH.biBitCount / 8 * new_BMPwidth + 3) / 4 * 4; 
    Ans->IH.biWidth = new_BMPwidth;
    Ans->IH.biHeight = new_BMPheight;
    Ans->IH.biSizeImage = new_BMPheight * Ans_row_byte;
    Ans->FH.bfSize = Ans->IH.biSizeImage + Ans->FH.bfOffBits;
    Ans->pix_val = (unsigned char *)malloc(Ans->IH.biSizeImage * sizeof(unsigned char));
    if(Ans->IH.biBitCount == 8){
        for(int i = 0; i < new_BMPheight; i++){
            for(int j = 0; j < new_BMPwidth; j++){
                // 计算当前像素点在原图像中的位置
                int Org_x = round((j - del_x) * cos(angle) + (i - del_y) * sin(angle));
                int Org_y = round((del_x - j) * sin(angle) + (i - del_y) * cos(angle));
                // 如果在原图像中这个点出界，则设为白色
                if(Org_x < 0 || Org_x >= Org->IH.biWidth || Org_y < 0 || Org_y >= Org->IH.biHeight){
                    Ans->pix_val[i * Ans_row_byte + j] = 255;
                }else{
                    Ans->pix_val[i * Ans_row_byte + j] = Org->pix_val[Org_y * Org_row_byte + Org_x];
                }
            }
        }
        Output(Ans, "Rotate_Gray.bmp");
    }else{
        for(int i = 0; i < new_BMPheight; i++){
            for(int j = 0; j < new_BMPwidth; j++){
                int Org_x = round((j - del_x) * cos(angle) + (i - del_y) * sin(angle));
                int Org_y = round((del_x - j) * sin(angle) + (i - del_y) * cos(angle));
                if(Org_x < 0 || Org_x >= Org->IH.biWidth || Org_y < 0 || Org_y >= Org->IH.biHeight){
                    Ans->pix_val[i * Ans_row_byte + j * 3] = 255;
                    Ans->pix_val[i * Ans_row_byte + j * 3 + 1] = 255;
                    Ans->pix_val[i * Ans_row_byte + j * 3 + 2] = 255;
                }else{
                    Ans->pix_val[i * Ans_row_byte + j * 3] = Org->pix_val[Org_y * Org_row_byte + Org_x * 3];
                    Ans->pix_val[i * Ans_row_byte + j * 3 + 1] = Org->pix_val[Org_y * Org_row_byte + Org_x * 3 + 1];
                    Ans->pix_val[i * Ans_row_byte + j * 3 + 2] = Org->pix_val[Org_y * Org_row_byte + Org_x * 3 + 2];
                }
            }
        }
        Output(Ans, "Rotate_Color.bmp");
    }
}
// 缩放
void Scale(FILESTRUCT *Org, FILESTRUCT *Ans, double dx, double dy){
    memcpy(&(Ans->FH), &(Org->FH), sizeof(FILE_HEAD));
    memcpy(&(Ans->IH), &(Org->IH), sizeof(INF_HEAD));
    // 缩放后图像大小，四舍五入
    int new_BMPwidth = round(Org->IH.biWidth * dx);
    int new_BMPheight = round(Org->IH.biHeight * dy);
    int Org_row_byte = (Org->IH.biBitCount / 8 * Org->IH.biWidth + 3) / 4 * 4; 
    int Ans_row_byte = (Ans->IH.biBitCount / 8 * new_BMPwidth + 3) / 4 * 4; 
    Ans->IH.biWidth = new_BMPwidth;
    Ans->IH.biHeight = new_BMPheight;
    Ans->IH.biSizeImage = new_BMPheight * Ans_row_byte;
    Ans->FH.bfSize = Ans->IH.biSizeImage + Ans->FH.bfOffBits;
    Ans->pix_val = (unsigned char *)malloc(Ans->IH.biSizeImage * sizeof(unsigned char));
    if(Ans->IH.biBitCount == 8){
        for(int i = 0; i < new_BMPheight; i++){
            for(int j = 0; j < new_BMPwidth; j++){
                int Org_x = round(j / dx);
                int Org_y = round(i / dy);
                Ans->pix_val[i * Ans_row_byte + j] = Org->pix_val[Org_y * Org_row_byte + Org_x];
            }
        }
        Output(Ans, "Scale_Gray.bmp");
    }else{
        for(int i = 0; i < new_BMPheight; i++){
            for(int j = 0; j < new_BMPwidth; j++){
                int Org_x = round(j / dx);
                int Org_y = round(i / dy);
                Ans->pix_val[i * Ans_row_byte + j * 3] = Org->pix_val[Org_y * Org_row_byte + Org_x * 3];
                Ans->pix_val[i * Ans_row_byte + j * 3 + 1] = Org->pix_val[Org_y * Org_row_byte + Org_x * 3 + 1];
                Ans->pix_val[i * Ans_row_byte + j * 3 + 2] = Org->pix_val[Org_y * Org_row_byte + Org_x * 3 + 2];
            }
        }   
        Output(Ans, "Scale_Color.bmp");
    }
}
// 剪切
void Shear(FILESTRUCT *Org, FILESTRUCT *Ans, double dx, double dy){
    memcpy(&(Ans->FH), &(Org->FH), sizeof(FILE_HEAD));
    memcpy(&(Ans->IH), &(Org->IH), sizeof(INF_HEAD));
    // 剪切后图像大小
    int new_BMPwidth = Org->IH.biWidth + round(Org->IH.biHeight * dx);
    int new_BMPheight = Org->IH.biHeight + round(Org->IH.biWidth * dy);
    int Org_row_byte = (Org->IH.biBitCount / 8 * Org->IH.biWidth + 3) / 4 * 4;
    int Ans_row_byte = (Ans->IH.biBitCount / 8 * new_BMPwidth + 3) / 4 * 4;
    Ans->IH.biWidth = new_BMPwidth;
    Ans->IH.biHeight = new_BMPheight;
    Ans->IH.biSizeImage = new_BMPheight * Ans_row_byte;
    Ans->FH.bfSize = Ans->IH.biSizeImage + Ans->FH.bfOffBits;
    Ans->pix_val = (unsigned char *)malloc(Ans->IH.biSizeImage * sizeof(unsigned char));
    if(Ans->IH.biBitCount == 8){
        for(int i = 0; i < new_BMPheight; i++){
            for(int j = 0; j < new_BMPwidth; j++){
                int Org_x = j - round(i * dx);
                int Org_y = i - round(j * dy);
                if(Org_x < 0 || Org_x >= Org->IH.biWidth || Org_y < 0 || Org_y >= Org->IH.biHeight)
                    Ans->pix_val[i * Ans_row_byte + j] = 255;
                else
                    Ans->pix_val[i * Ans_row_byte + j] = Org->pix_val[Org_y * Org_row_byte + Org_x];
            }
        }
        Output(Ans, "Shear_Gray.bmp");
    }else{
        for(int i = 0; i < new_BMPheight; i++){
            for(int j = 0; j < new_BMPwidth; j++){
                int Org_x = j - round(i * dx);
                int Org_y = i - round(j * dy);
                if(Org_x < 0 || Org_x >= Org->IH.biWidth || Org_y < 0 || Org_y >= Org->IH.biHeight){
                    Ans->pix_val[i * Ans_row_byte + j * 3] = 255;
                    Ans->pix_val[i * Ans_row_byte + j * 3 + 1] = 255;
                    Ans->pix_val[i * Ans_row_byte + j * 3 + 2] = 255;
                }else{
                    Ans->pix_val[i * Ans_row_byte + j * 3] = Org->pix_val[Org_y * Org_row_byte + Org_x * 3];
                    Ans->pix_val[i * Ans_row_byte + j * 3 + 1] = Org->pix_val[Org_y * Org_row_byte + Org_x * 3 + 1];
                    Ans->pix_val[i * Ans_row_byte + j * 3 + 2] = Org->pix_val[Org_y * Org_row_byte + Org_x * 3 + 2];
                }
            }
        }   
        Output(Ans, "Shear_Color.bmp");
    }
}
// 镜像
void Mirror(FILESTRUCT *Org, FILESTRUCT *Ans, char flag){
    memcpy(&(Ans->FH), &(Org->FH), sizeof(FILE_HEAD));
    memcpy(&(Ans->IH), &(Org->IH), sizeof(INF_HEAD));
    // 镜像后图像大小不变
    int new_BMPwidth = Org->IH.biWidth;
    int new_BMPheight = Org->IH.biHeight;
    int Org_row_byte = (Org->IH.biBitCount / 8 * Org->IH.biWidth + 3) / 4 * 4;
    int Ans_row_byte = Org_row_byte;
    Ans->pix_val = (unsigned char *)malloc(Ans->IH.biSizeImage * sizeof(unsigned char));
    if(Ans->IH.biBitCount == 8){
        for(int i = 0; i < new_BMPheight; i++){
            for(int j = 0; j < new_BMPwidth; j++){
                int Org_y, Org_x;
                if(flag == 'x'){
                    Org_x = j;
                    Org_y = Org->IH.biHeight - i;
                }else{
                    Org_x = Org->IH.biWidth - j;
                    Org_y = i;
                }
                if(Org_x < 0 || Org_x >= Org->IH.biWidth || Org_y < 0 || Org_y >= Org->IH.biHeight)
                    Ans->pix_val[i * Ans_row_byte + j] = 255;
                else
                    Ans->pix_val[i * Ans_row_byte + j] = Org->pix_val[Org_y * Org_row_byte + Org_x];
            }
        }
        Output(Ans, "Mirror_Gray.bmp");
    }else{
        for(int i = 0; i < new_BMPheight; i++){
            for(int j = 0; j < new_BMPwidth; j++){
                int Org_y, Org_x;
                if(flag == 'x'){
                    Org_x = j;
                    Org_y = Org->IH.biHeight - i;
                }else{
                    Org_x = Org->IH.biWidth - j;
                    Org_y = i;
                }
                if(Org_x < 0 || Org_x >= Org->IH.biWidth || Org_y < 0 || Org_y >= Org->IH.biHeight){
                    Ans->pix_val[i * Ans_row_byte + j * 3] = 255;
                    Ans->pix_val[i * Ans_row_byte + j * 3 + 1] = 255;
                    Ans->pix_val[i * Ans_row_byte + j * 3 + 2] = 255;
                }else{
                    Ans->pix_val[i * Ans_row_byte + j * 3] = Org->pix_val[Org_y * Org_row_byte + Org_x * 3];
                    Ans->pix_val[i * Ans_row_byte + j * 3 + 1] = Org->pix_val[Org_y * Org_row_byte + Org_x * 3 + 1];
                    Ans->pix_val[i * Ans_row_byte + j * 3 + 2] = Org->pix_val[Org_y * Org_row_byte + Org_x * 3 + 2];
                }
            }
        }   
        Output(Ans, "Mirror_Color.bmp");
    }
}
int main(){
    FILE *fp;
    FILESTRUCT Org, Ans; // 原图像Org，变换后的图像Ans
    int BMPSize, BMPheight, BMPwidth;
    fp = fopen("zjz_Color.bmp", "rb"); // 读取本目录下的bmp文件
    if (!fp) printf("憨憨丢掉了:(\n");
    else printf("憨憨在这里:)\n");
    fread(&(Org.FH), sizeof(FILE_HEAD), 1, fp);
    fread(&(Org.IH), sizeof(INF_HEAD), 1, fp);
    if (!Org.IH.biSizeImage) Org.IH.biSizeImage = Org.FH.bfSize - Org.FH.bfOffBits;
    BMPheight = Org.IH.biHeight;
    BMPwidth = Org.IH.biWidth;
    BMPSize = Org.IH.biSizeImage;
    // 给八位灰度图加上调色盘，本次实验分别对24位和8位进行图像几何变换
    if(Org.IH.biBitCount == 8){
        for(int i = 0; i < 256; i++){
            Org.Color[i].rgbBlue = Org.Color[i].rgbGreen = Org.Color[i].rgbRed = i;
            Ans.Color[i].rgbBlue = Ans.Color[i].rgbGreen = Ans.Color[i].rgbRed = i;
        }
    }
    fseek(fp, Org.FH.bfOffBits, SEEK_SET);
    Org.pix_val = (unsigned char *)malloc(sizeof(unsigned char) * BMPSize);
    fread(Org.pix_val, BMPSize * sizeof(unsigned char), 1, fp);
    fclose(fp);
    // 平移
    TrAnslate(&Org, &Ans, BMPwidth/2, BMPheight/2);
    free(Ans.pix_val);
    // 旋转
    Rotate(&Org, &Ans, 45);
    free(Ans.pix_val);
    // 缩放
    Scale(&Org, &Ans, 1.7, 1.7);
    free(Ans.pix_val);
    // 剪切
    Shear(&Org, &Ans, 0, 0.6);
    free(Ans.pix_val);
    // 镜像
    Mirror(&Org, &Ans, 'x');
    free(Ans.pix_val);
}