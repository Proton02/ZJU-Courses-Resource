#include <stdio.h>
#include <malloc.h>
#include <stdlib.h>
#include <string.h>
#include "BMPHEAD.h"
// 全局变量，要进行操作的图像为Violet
FILESTRUCT Violet,Violet1,Violet2,Violet3,Violet4,Violet5,Violet6;
FILE_HEAD FH;
INF_HEAD IH;
int flag = 0;
// 输出函数
void Output(FILESTRUCT *temp, FILE *fp){
    if ((temp->IH).biBitCount == 8)
        fwrite(temp, sizeof(FILE_HEAD) + sizeof(INF_HEAD) + 256 * sizeof(RGB), 1, fp);
    else
        fwrite(temp, sizeof(FILE_HEAD) + sizeof(INF_HEAD), 1, fp);
    fwrite(temp->pix_val, (temp->IH).biSizeImage * sizeof(unsigned char), 1, fp);
    fclose(fp);
}
// RGB转YUV
void RGB_YUV(double R, double G, double B, double *Y, double *U, double *V){
    *Y = 0.299 * R + 0.587 * G + 0.114 * B;
    *U = -0.147 * R - 0.289 * G + 0.435 * B;
    *V = 0.615 * R - 0.515 * G - 0.100 * B;
}
// 将图像转换为灰度
void GRAY(int BMPheight, int BMPwidth){
    int row_byte = (3 * BMPwidth + 3) / 4 * 4;
    int byte_row = (BMPwidth + 3) / 4 * 4;
    int now_position;
    // 遍历像素并转换为灰度
    for (int i = 0; i < BMPheight; i++){
        for (int j = 0; j < BMPwidth; j++){
            now_position = row_byte * i + 3 * j;
            double B = Violet.pix_val[now_position];
            double G = Violet.pix_val[now_position + 1];
            double R = Violet.pix_val[now_position + 2];
            double Y, U, V;
            RGB_YUV(R, G, B, &Y, &U, &V);
            if (Y < 0.0) Y = 0.0;
            else if (Y > 255.0) Y = 255.0;
            Violet1.pix_val[byte_row * i + j] = Y;
        }
    }
}
// 腐蚀
void Erosion(int BMPheight, int BMPwidth, FILESTRUCT Org_Image, FILESTRUCT Image){
    int byte_row = (BMPwidth + 3) / 4 * 4;
    int x, y, index;
    int matrix[3][3] = {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}};
    for (int i = 1; i < BMPheight - 1; i++){
        for (int j = 1; j < BMPwidth - 1; j++){
            index = 1;
            for (int p = -1; p <= 1; p++){
                for (int q = -1; q <= 1; q++){
                    if (matrix[p + 1][q + 1] == 1&&Org_Image.pix_val[(i + p) * byte_row + (j + q)] == 0){
                        index = 0;
                        break;
                    }
                }
                if (index == 0) break;
            }
            if (index == 1) Image.pix_val[i * byte_row + j] = 255;
            else Image.pix_val[i * byte_row + j] = 0;
        }
    }
    if (flag == 217){
        FILE *fp = fopen("Violet_binwife_Close.bmp", "wb");
        Output(&Image, fp);
    }
    else if (flag != 216){
        FILE *fp = fopen("Violet_binwife_Erosion.bmp", "wb");
        Output(&Image, fp);
    }
}
// 膨胀
void Dilation(int BMPheight, int BMPwidth, FILESTRUCT Org_Image, FILESTRUCT Image)
{
    int byte_row = (BMPwidth + 3) / 4 * 4;
    int x, y, index;
    int matrix[3][3] = {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}};
    for (int i = 1; i < BMPheight - 1; i++){
        for (int j = 1; j < BMPwidth - 1; j++){
            int index = 0;
            for (int p = -1; p <= 1; p++){
                for (int q = -1; q <= 1; q++){
                    if (matrix[p + 1][q + 1] == 1&&Org_Image.pix_val[(i + p) * byte_row + (j + q)] == 255){
                        index = 1;
                        break;
                    }
                }
                if (index == 0) break;
            }
            if (index == 1) Image.pix_val[i * byte_row + j] = 255;
            else Image.pix_val[i * byte_row + j] = 0;       
        }
    }
    if (flag == 216){
        FILE *fp = fopen("Violet_binwife_Open.bmp", "wb");
        Output(&Image, fp);
    }
    if (flag != 217){
        FILE *fp = fopen("Violet_binwife_Dilation.bmp", "wb");
        Output(&Image, fp);
    }
}
// 开操作
void Open(int BMPheight, int BMPwidth){
    flag = 216;
    Dilation(BMPheight, BMPwidth, Violet3, Violet5);
}
// 闭操作
void Close(int BMPheight, int BMPwidth){
    flag = 217;
    Erosion(BMPheight, BMPwidth, Violet4, Violet6);
}
// 大津算法
void OTSU(int BMPheight, int BMPwidth){
    // 获取最大和最小像素
    int byte_row = (BMPwidth + 3) / 4 * 4;
    int now_position, max = 0, min = 255;
    unsigned char now_pix;
    for (int i = 0; i < BMPheight; i++){
        for (int j = 0; j < BMPwidth; j++){
            now_position = i * byte_row + j;
            now_pix = Violet1.pix_val[now_position];
            if (now_pix > max) max = now_pix;
            if (now_pix < min) min = now_pix;
        }
    }
    // 计算阈值threshold
    int N, N0, N1, avg_N0, avg_N1, g, max_g = 0, grey, threshold;
    for (grey = min + 1; grey <= max; grey++){
        // 灰度值每更新一次就初始化总像素值、前后景像素值、前后景平均灰度值
        N0 = N1 = avg_N0 = avg_N1 =0;
        for (int i = 0; i < BMPheight; i++){
            for (int j = 0; j < BMPwidth; j++, N++){
                now_position = i * byte_row + j;
                now_pix = Violet1.pix_val[now_position];
                if (now_pix >= grey){
                    avg_N0 += now_pix;
                    N0 ++;
                }
                else{
                    avg_N1 += now_pix;
                    N1 ++;
                }
            }
        }
        g = ((N0 * N1) / (N * N)) * (avg_N0/N0 - avg_N1/N1) * (avg_N0/N0 - avg_N1/N1);
        if (g > max_g){
            max_g = g;
            threshold = grey;
        }
    }
    // 图像二值化
    for (int i = 0; i < BMPheight; i++){
        for (int j = 0; j < BMPwidth; j++){
            now_position = i * byte_row + j;
            if (Violet1.pix_val[now_position] >= threshold) Violet2.pix_val[now_position] = 255;
            else Violet2.pix_val[now_position] = 0;
        }
    }
    FILE *fp = fopen("Violet_binwife_block.bmp", "wb");
    Output(&Violet2, fp);
}
int main(){
    // 读取图像
    FILE *fp;
    int BMPSize, BMPheight, BMPwidth;
    fp = fopen("Violet.bmp", "rb"); // 读取本目录下的bmp文件
    if (fp == NULL){
        printf("薇尔莉特不见了:(\n");
        return 0;
    }
    else printf("薇尔莉特在这里:)\n");
    fread(&Violet.FH, sizeof(FILE_HEAD), 1, fp);
    fread(&Violet.IH, sizeof(INF_HEAD), 1, fp);
    BMPheight = Violet.IH.biHeight;
    BMPwidth = Violet.IH.biWidth;
    if (!Violet.IH.biSizeImage) // biSizeImage可能为则需要Violet.FH.bfSize - Violet.FH.bfOffBits
        Violet.IH.biSizeImage = Violet.FH.bfSize - Violet.FH.bfOffBits;
    BMPSize = Violet.IH.biSizeImage;
    fseek(fp, FH.bfOffBits, SEEK_SET);
    Violet.pix_val = (unsigned char *)malloc(sizeof(unsigned char) * BMPSize);
    fread(Violet.pix_val, BMPSize * sizeof(unsigned char), 1, fp);
    fclose(fp);
    // 转灰度图
    memcpy(&(Violet1.FH), &(Violet.FH), sizeof(FILE_HEAD));
    memcpy(&(Violet1.IH), &(Violet.IH), sizeof(INF_HEAD));
    Violet1.FH.bfOffBits = 1078;
    Violet1.IH.biBitCount = 8;
    Violet1.IH.biSizeImage = BMPheight * ((BMPwidth + 3) / 4 * 4);
    Violet1.FH.bfSize = Violet1.IH.biSizeImage + Violet1.FH.bfOffBits;
    Violet1.pix_val = (unsigned char *)calloc(Violet1.IH.biSizeImage, sizeof(unsigned char));
    for (int i = 0; i < 256; i++) Violet1.Color[i].rgbBlue = Violet1.Color[i].rgbGreen = Violet1.Color[i].rgbRed = i;
    GRAY(BMPheight, BMPwidth); // 转灰度
    // 二值化
    Violet2.pix_val = (unsigned char *)calloc(Violet1.IH.biSizeImage, sizeof(unsigned char));
    memcpy(&(Violet2.FH), &(Violet1.FH), sizeof(FILE_HEAD));
    memcpy(&(Violet2.IH), &(Violet1.IH), sizeof(INF_HEAD));
    memcpy(&(Violet2.Color), &(Violet1.Color), sizeof(RGB) * 256);
    memcpy((Violet2.pix_val), (Violet1.pix_val), sizeof(unsigned char) * (((BMPwidth + 3) / 4 * 4) * BMPheight));
    OTSU(BMPheight, BMPwidth); // 大津算法二值化
    // 腐蚀
    Violet3.pix_val = (unsigned char *)calloc(Violet2.IH.biSizeImage, sizeof(unsigned char));
    memcpy(&(Violet3.FH), &(Violet2.FH), sizeof(FILE_HEAD));
    memcpy(&(Violet3.IH), &(Violet2.IH), sizeof(INF_HEAD));
    memcpy(&(Violet3.Color), &(Violet2.Color), sizeof(RGB) * 256);
    memcpy((Violet3.pix_val), (Violet2.pix_val), sizeof(unsigned char) * (((BMPwidth + 3) / 4 * 4) * BMPheight));
    Erosion(BMPheight, BMPwidth, Violet2, Violet3);
    // 膨胀
    Violet4.pix_val = (unsigned char *)calloc(Violet2.IH.biSizeImage, sizeof(unsigned char));
    memcpy(&(Violet4.FH), &(Violet2.FH), sizeof(FILE_HEAD));
    memcpy(&(Violet4.IH), &(Violet2.IH), sizeof(INF_HEAD));
    memcpy(&(Violet4.Color), &(Violet2.Color), sizeof(RGB) * 256);
    memcpy((Violet4.pix_val), (Violet2.pix_val), sizeof(unsigned char) * (((BMPwidth + 3) / 4 * 4) * BMPheight));
    Dilation(BMPheight, BMPwidth, Violet2, Violet4);
    // 开操作
    Violet5.pix_val = (unsigned char *)calloc(Violet3.IH.biSizeImage, sizeof(unsigned char));
    memcpy(&(Violet5.FH), &(Violet3.FH), sizeof(FILE_HEAD));
    memcpy(&(Violet5.IH), &(Violet3.IH), sizeof(INF_HEAD));
    memcpy(&(Violet5.Color), &(Violet3.Color), sizeof(RGB) * 256);
    memcpy((Violet5.pix_val), (Violet3.pix_val), sizeof(unsigned char) * (((BMPwidth + 3) / 4 * 4) * BMPheight));
    Open(BMPheight, BMPwidth);
    // 闭操作
    Violet6.pix_val = (unsigned char *)calloc(Violet4.IH.biSizeImage, sizeof(unsigned char));
    memcpy(&(Violet6.FH), &(Violet4.FH), sizeof(FILE_HEAD));
    memcpy(&(Violet6.IH), &(Violet4.IH), sizeof(INF_HEAD));
    memcpy(&(Violet6.Color), &(Violet4.Color), sizeof(RGB) * 256);
    memcpy((Violet6.pix_val), (Violet4.pix_val), sizeof(unsigned char) * (((BMPwidth + 3) / 4 * 4) * BMPheight));
    Close(BMPheight, BMPwidth);
}