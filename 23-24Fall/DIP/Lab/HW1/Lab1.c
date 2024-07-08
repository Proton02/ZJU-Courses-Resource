#include <stdio.h>
#include <malloc.h>
#include <stdlib.h>
#include <string.h>
#include "BMPHEAD.h"

// 全局变量
int BMPheight;
int BMPwidth;
int BMPSize;
int Pos;
FILESTRUCT Violet;
FILE_HEAD FH;
INF_HEAD IH;

// 将值限制在 [0, 255] 范围内的函数
double Update(double value)
{
    if (value < 0.0)
    {
        return 0.0;
    }
    else if (value > 255.0)
    {
        return 255.0;
    }
    else
    {
        return value;
    }
}

// 输出图像函数
void Output(FILESTRUCT *temp, FILE *fp)
{
    if (!fp)
    {
        printf("WTF????");
        return exit(0);
    }

    if ((temp->IH).biBitCount == 8)
    {
        fwrite(temp, sizeof(FILE_HEAD) + sizeof(INF_HEAD) + 256 * sizeof(RGB), 1, fp);
    }
    else
    {
        fwrite(temp, sizeof(FILE_HEAD) + sizeof(INF_HEAD), 1, fp);
    }

    fwrite(temp->pix_val, (temp->IH).biSizeImage * sizeof(unsigned char), 1, fp);
    fclose(fp);
    free(temp->pix_val);
}

// 将RGB颜色值转换为YUV颜色空间
void RGB_YUV(double R, double G, double B, double *Y, double *U, double *V)
{
    *Y = 0.299 * R + 0.587 * G + 0.114 * B;
    *U = -0.147 * R - 0.289 * G + 0.435 * B;
    *V = 0.615 * R - 0.515 * G - 0.100 * B;
}


// 将图像转换为灰度
void GRAY()
{
    FILESTRUCT Violet1;
    int row_byte = (3 * BMPwidth + 3) / 4 * 4;
    int new_row_byte = (BMPwidth + 3) / 4 * 4;
    int i, j;
    // 复制Violet的文件头和信息头到Violet1
    memcpy(&(Violet1.FH), &(Violet.FH), sizeof(FILE_HEAD));
    memcpy(&(Violet1.IH), &(Violet.IH), sizeof(INF_HEAD));
    // 设置Violet1的文件头偏移和位深度
    Violet1.FH.bfOffBits = 256 * 4 + 40 + 14;
    Violet1.IH.biBitCount = 8;
    Violet1.IH.biSizeImage = BMPheight * new_row_byte;
    Violet1.FH.bfSize = Violet1.IH.biSizeImage + Violet1.FH.bfOffBits;
    Violet1.pix_val = (unsigned char *)calloc(Violet1.IH.biSizeImage, sizeof(unsigned char));

    // 初始化颜色表
    for (i = 0; i < 256; i++)
        Violet1.Color[i].rgbBlue = Violet1.Color[i].rgbGreen = Violet1.Color[i].rgbRed = i;

    // 遍历像素并转换为灰度
    for (i = 0; i < BMPheight; i++)
        for (j = 0; j < BMPwidth; j++)
        {
            int now_position = row_byte * i + 3 * j;
            double B = Violet.pix_val[now_position];
            double G = Violet.pix_val[now_position + 1];
            double R = Violet.pix_val[now_position + 2];
            double Y, U, V;
            RGB_YUV(R, G, B, &Y, &U, &V);
            if (Y < 0.0)
                Y = 0.0;
            else if (Y > 255.0)
                Y = 255.0;
            Violet1.pix_val[new_row_byte * i + j] = Y;
        }

    FILE *fp = fopen("LNN.bmp", "wb");
    Output(&Violet1, fp);
}

// 将YUV颜色值转换为RGB颜色空间
void YUV_RGB(double Y, double U, double V, double *R, double *G, double *B)
{
    *R = Y + 1.4075 * V;
    *G = Y - 0.3455 * U - 0.7169 * V;
    *B = Y + 1.779 * U;
}

// // 改变图像亮度
// void LUMIN()
// {
//     int i, j;
//     for (i = 0; i < BMPheight; i++)
//         for (j = 0; j < BMPwidth; j++)
//         {
//             int Pos2 = Posi(i, j);
//             double B = Violet.pix_val[Pos2];
//             double G = Violet.pix_val[Pos2 + 1];
//             double R = Violet.pix_val[Pos2 + 2];
//             double Y, U, V;
//             RGB_YUV(R, G, B, &Y, &U, &V);

//             // 增加亮度
//             Y *= 1.3;
//             Y = Update(Y);
//             YUV_RGB(Y, U, V, &R, &G, &B);
//             R = Update(R);
//             G = Update(G);
//             B = Update(B);
//             Violet.pix_val[Pos2] = B;
//             Violet.pix_val[Pos2 + 1] = G;
//             Violet.pix_val[Pos2 + 2] = R;
//         }
//     FILE *fp = fopen("Violet_lightwife.bmp", "wb");
//     Output(&Violet, fp);
// }

int main()
{
    FILE *fp;
    fp = fopen("LN.bmp", "rb"); // 读取本目录下的bmp文件
    if (fp == NULL)
    {
        printf("薇尔莉特不见了:(\n");
        return 0;
    }
    else
    {
        printf("薇尔莉特在这里:)\n");
    }
    fread(&Violet.FH, sizeof(FILE_HEAD), 1, fp);
    fread(&Violet.IH, sizeof(INF_HEAD), 1, fp);
    BMPheight = Violet.IH.biHeight;
    BMPwidth = Violet.IH.biWidth;
    if (!Violet.IH.biSizeImage) // biSizeImage可能为则需要Violet.FH.bfSize - Violet.FH.bfOffBits
        Violet.IH.biSizeImage = Violet.FH.bfSize - Violet.FH.bfOffBits;
    BMPSize = Violet.IH.biSizeImage;
    Pos = (3 * BMPwidth + 3) / 4 * 4;
    fseek(fp, Violet.FH.bfOffBits, SEEK_SET);
    Violet.pix_val = (unsigned char *)malloc(sizeof(unsigned char) * BMPSize);
    fread(Violet.pix_val, BMPSize * sizeof(unsigned char), 1, fp);
    fclose(fp);

    GRAY();  // 转灰度
    // LUMIN(); // 改亮度
}