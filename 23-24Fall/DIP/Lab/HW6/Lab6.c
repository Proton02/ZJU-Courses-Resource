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
//偏移
int Position(int x, int y, int byte_offset, int pix_val, int Height, int Width){
    if(x < 0) x = 0;    
    else if(x >= Height) x = Height - 1;
    if(y < 0) y = 0;
    else if(y >= Width) y = Width - 1;
    return x * byte_offset + y * pix_val;
}
//Guass函数
double G(double sqr, double sig){
    return exp(- sqr / (2 * pow(sig, 2)));
}

// 双边滤波
void Bilateral(FILESTRUCT *Org, FILESTRUCT *Ans, int scale){
    memcpy(&(Ans->FH), &(Org->FH), sizeof(FILE_HEAD)); // 图像信息的复制
    memcpy(&(Ans->IH), &(Org->IH), sizeof(INF_HEAD));
    Ans->pix_val = (unsigned char *)malloc(sizeof(unsigned char) * Org->IH.biSizeImage);
    int now_position_1, now_position_2, i, j, p, q, edge = scale / 2; // 窗口大小
    int row_offset = (Org->IH.biBitCount / 8 * Org->IH.biWidth + 3) / 4 * 4;
    double sig_r = 10000; // 可调
    double sig_s = 0.2 * ((Org->IH.biHeight + Org->IH.biWidth) / 2); // 可调
    double tmp_R, tmp_G, tmp_B, sum_R, sum_G, sum_B, WR, WG, WB, GrayR, GrayG, GrayB, prstR, prstG, prstB, Dis, sum, Gray, W, tmp, prst;
    for(i = 0; i < Org->IH.biHeight; i++){
        for(j = 0; j < Org->IH.biWidth; j++){
            if(Ans->IH.biBitCount == 24){ // 24位彩色图
                sum_R = sum_G = sum_B = WR = WG = WB = 0.0;      
                now_position_1 = Position(i, j, row_offset, 3, Org->IH.biHeight, Org->IH.biWidth);
                prstB = Org->pix_val[now_position_1];
                prstG = Org->pix_val[now_position_1 + 1];
                prstR = Org->pix_val[now_position_1 + 2];
                for(p = i - edge; p <= i + edge; p++){
                    for(q = j - edge; q <= j + edge; q++){
                        now_position_2 = Position(p, q, row_offset, 3, Org->IH.biHeight, Org->IH.biWidth);
                        tmp_B = Org->pix_val[now_position_2];
                        tmp_G = Org->pix_val[now_position_2 + 1];
                        tmp_R = Org->pix_val[now_position_2 + 2];
                        // 求灰度
                        GrayR = G(pow(tmp_R - prstR, 2), sig_r);
                        GrayG = G(pow(tmp_G - prstG, 2), sig_r);
                        GrayB = G(pow(tmp_B - prstB, 2), sig_r);
                        // 求和中心的距离
                        Dis = G(pow(i - p, 2) + pow(j - q, 2), sig_s);
                        // 求归一化系数
                        WR += GrayR * Dis;
                        WG += GrayG * Dis;
                        WB += GrayB * Dis;
                        // 求和
                        sum_R += GrayR * Dis * tmp_R;
                        sum_G += GrayG * Dis * tmp_G;
                        sum_B += GrayB * Dis * tmp_B;
                    }
                }
                Ans->pix_val[now_position_1] = sum_B / WB;
                Ans->pix_val[now_position_1 + 1] = sum_G / WG;
                Ans->pix_val[now_position_1 + 2] = sum_R / WR;
            }else{ // 8位灰度图
                sum = W = 0;
                now_position_1 = Position(i, j, row_offset, 1, Org->IH.biHeight, Org->IH.biWidth);
                prst = Org->pix_val[now_position_1];
                for(p = i - edge; p <= i + edge; p++){
                    for(q = j - edge; q <= j + edge; q++){
                        now_position_2 = Position(p, q, row_offset, 1, Org->IH.biHeight, Org->IH.biWidth);
                        tmp = Org->pix_val[now_position_2];
                        // 求灰度
                        Gray = G(pow(tmp - prst, 2), sig_r);
                        // 求和中心距离
                        Dis = G(pow(i - p, 2) + pow(j - q, 2), sig_s);
                        // 求归一化系数
                        W += Gray * Dis;
                        // 求和
                        sum += Gray * Dis * tmp;
                    }
                } 
                Ans->pix_val[now_position_1] = sum / W;
            }

        }
    }
    Output(Ans, "Bilateral.bmp");
}

int main(){
    FILE *fp;
    FILESTRUCT Org, Ans; // 原图像Org，变换后的图像Ans
    int BMPSize, BMPheight, BMPwidth;
    fp = fopen("view.bmp", "rb"); // 读取本目录下的bmp文件
    if (!fp) printf("读取失败:(\n");
    else printf("读取成功:)\n");
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
    // 双边滤波
    Bilateral(&Org, &Ans, 9);
    free(Ans.pix_val);
}