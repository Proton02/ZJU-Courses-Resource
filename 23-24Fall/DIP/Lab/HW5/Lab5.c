#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include "BMPHEAD.h"

// 输出函数
void Output(FILESTRUCT *temp, char *name){
    FILE *fp = fopen(name, "wb");
    if ((temp->IH).biBitCount == 8) fwrite(temp, sizeof(FILE_HEAD) + sizeof(INF_HEAD) + 256 * sizeof(RGB), 1, fp);
    else fwrite(temp, sizeof(FILE_HEAD) + sizeof(INF_HEAD), 1, fp);
    fwrite(temp->pix_val, (temp->IH).biSizeImage * sizeof(unsigned char), 1, fp);
    fclose(fp);
}
//限制
int Restrict(int data){
    if(data < 0) return 0;
    if(data > 255) return 255;
}
//偏移
int Position(int x, int y, int byte_offset, int pix_val, int Height, int Width){
    if(x < 0) x = 0;    
    else if(x >= Height) x = Height - 1;
    if(y < 0) y = 0;
    else if(y >= Width) y = Width - 1;
    return x * byte_offset + y * pix_val;
}

// 均值滤波
void Mean_Filtering(FILESTRUCT *Org, FILESTRUCT *Ans, int scale){
    memcpy(&(Ans->FH), &(Org->FH), sizeof(FILE_HEAD)); // 图像信息的复制
    memcpy(&(Ans->IH), &(Org->IH), sizeof(INF_HEAD));
    Ans->pix_val = (unsigned char *)malloc(sizeof(unsigned char) * Org->IH.biSizeImage);
    int now_position, i, j, p, q;
    int edge = scale / 2; // 窗口大小
    int row_offset = (Org->IH.biBitCount / 8 * Org->IH.biWidth + 3) / 4 * 4;
    for(i = 0; i < Org->IH.biHeight; i++){
        for(j = 0; j < Org->IH.biWidth; j++){
            if(Ans->IH.biBitCount == 24){ // 24位彩色图
                int sum_R = 0, sum_G = 0, sum_B = 0;
                for(p = i - edge; p <= i + edge; p++){
                    for(q = j - edge; q <= j + edge; q++){
                        now_position = Position(p, q, row_offset, 3, Org->IH.biHeight, Org->IH.biWidth);
                        sum_B += Org->pix_val[now_position];
                        sum_G += Org->pix_val[now_position + 1];
                        sum_R += Org->pix_val[now_position + 2];
                    }
                }
                now_position = i * row_offset + j * 3;
                Ans->pix_val[now_position] = sum_B / (scale * scale);
                Ans->pix_val[now_position + 1] = sum_G / (scale * scale);
                Ans->pix_val[now_position + 2] = sum_R / (scale * scale);
            }else{ // 8位灰度图
                int sum = 0;
                for(p = i - edge; p <= i + edge; p++){
                    for(q = j - edge; q <= j + edge; q++){
                        now_position = Position(p, q, row_offset, 1, Org->IH.biHeight, Org->IH.biWidth);
                        sum += Org->pix_val[now_position];
                    }
                } 
                now_position = i * row_offset + j;
                Ans->pix_val[now_position] = sum / (scale * scale);
            }

        }
    }
    Output(Ans, "Mean_Filtering.bmp");
}

// 图像锐化1
void Lapacian_Transform_1(FILESTRUCT *Org, FILESTRUCT *Ans){
    // 0  1  0
    // 1 -4  1
    // 0  1  0
    memcpy(&(Ans->FH), &(Org->FH), sizeof(FILE_HEAD));
    memcpy(&(Ans->IH), &(Org->IH), sizeof(INF_HEAD));
    Ans->pix_val = (unsigned char *)malloc(sizeof(unsigned char) * Org->IH.biSizeImage);
    int now_position, i, j, p;
    int ary_x[5] = {-1, 0, 0, 0, 1}; // 遍历五个位置，使用大小为5的数组，同实验2的方法
    int ary_y[5] = {0, -1, 0, -1, 0}; // y方向
    int row_offset = (Org->IH.biBitCount / 8 * Org->IH.biWidth + 3) / 4 * 4;
    for(i = 0; i < Org->IH.biHeight; i++){
        for(j = 0; j < Org->IH.biWidth; j++){
            if(Org->IH.biBitCount == 24){ // 24位彩色图
                int sum_B = 0, sum_R = 0, sum_G = 0;
                for(p = 0; p <= 4; p++){
                    now_position = Position(i + ary_x[p], j + ary_y[p], row_offset, 3, Org->IH.biHeight, Org->IH.biWidth);
                    sum_B += Org->pix_val[now_position];
                    sum_G += Org->pix_val[now_position + 1];
                    sum_R += Org->pix_val[now_position + 2];
                }
                now_position = i * row_offset + j * 3;
                Ans->pix_val[now_position] = Restrict(6 * Org->pix_val[now_position] - sum_B);
                Ans->pix_val[now_position + 1] = Restrict(6 * Org->pix_val[now_position + 1] - sum_G);
                Ans->pix_val[now_position + 2] = Restrict(6 * Org->pix_val[now_position + 2] - sum_R);
            }else{ // 8位灰度图
                int sum = 0;
                for(p = 0; p <= 4; p++){
                    now_position = Position(i + ary_x[p], j + ary_y[p], row_offset, 1, Org->IH.biHeight, Org->IH.biWidth);
                    sum += Org->pix_val[now_position];
                } 
                now_position = i * row_offset + j;
                Ans->pix_val[now_position] = Restrict(6 * Org->pix_val[now_position] - sum);
            }
        }
    }
    Output(Ans, "Lapacian_Transform_1.bmp");
}

// 图像锐化2
void Lapacian_Transform_2(FILESTRUCT *Org, FILESTRUCT *Ans){
    // 1  1  1
    // 1 -8  1
    // 1  1  1
    memcpy(&(Ans->FH), &(Org->FH), sizeof(FILE_HEAD));
    memcpy(&(Ans->IH), &(Org->IH), sizeof(INF_HEAD));
    Ans->pix_val = (unsigned char *)malloc(sizeof(unsigned char) * Org->IH.biSizeImage);
    int now_position, i, j, p, q;
    int row_offset = (Org->IH.biBitCount / 8 * Org->IH.biWidth + 3) / 4 * 4;
    for(i = 0; i < Org->IH.biHeight; i++){
        for(j = 0; j < Org->IH.biWidth; j++){
            if(Org->IH.biBitCount == 24){ // 24位彩色图
                int sum_B = 0, sum_R = 0, sum_G = 0;
                for(p = i - 1; p <= i + 1; p++){
                    for(q = j - 1; q <= j + 1; q++){
                        now_position = Position(p, q, row_offset, 3, Org->IH.biHeight, Org->IH.biWidth);
                        sum_B += Org->pix_val[now_position];
                        sum_G += Org->pix_val[now_position + 1];
                        sum_R += Org->pix_val[now_position + 2];
                    }
                }
                now_position = i * row_offset + j * 3;
                Ans->pix_val[now_position] = Restrict(10 * Org->pix_val[now_position] - sum_B);
                Ans->pix_val[now_position + 1] = Restrict(10 * Org->pix_val[now_position + 1] - sum_G);
                Ans->pix_val[now_position + 2] = Restrict(10 * Org->pix_val[now_position + 2] - sum_R);
            }else{ // 8位灰度图
                int sum = 0;
                for(p = i - 1; p <= i + 1; p++){
                    for(q = j - 1; q <= j + 1; q++){
                        now_position = Position(p, q, row_offset, 1, Org->IH.biHeight, Org->IH.biWidth);
                        sum += Org->pix_val[now_position];
                    }
                }
                now_position = i * row_offset + j;
                Ans->pix_val[now_position] = Restrict(10 * Org->pix_val[now_position] - sum);
            }
        }
    }
    Output(Ans, "Laplacian_Transform_2.bmp");
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
    // 均值滤波
    Mean_Filtering(&Org, &Ans, 17);
    free(Ans.pix_val);
    // 0 1 0  1 -4 1 0 1 0 
    Lapacian_Transform_1(&Org, &Ans);
    free(Ans.pix_val);
    // 1 1 1  1 -8 1  1 1 1 
    Lapacian_Transform_2(&Org, &Ans);
    free(Ans.pix_val);
}