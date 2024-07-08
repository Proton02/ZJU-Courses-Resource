#include <stdio.h>
#include <malloc.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "BMPHEAD.h"
// 全局变量，本次进行操作的图像为zjz
FILESTRUCT zjz,zjz1,zjz2,zjz3,zjz4,zjz5;
FILE_HEAD FH;
INF_HEAD IH;
// 用来储存像素个数，因为要进行除法所以使用double类型，否则除法后全为0了(当时纳闷半天)
double pix_Y[256]={0};
double pix_R[256]={0};
double pix_G[256]={0};
double pix_B[256]={0};
double sum_pix_Y[256]={0};
double sum_pix_R[256]={0};
double sum_pix_G[256]={0};
double sum_pix_B[256]={0};
// 输出函数
void Output(FILESTRUCT *temp, char *name){
    FILE *fp = fopen(name, "wb");
    if ((temp->IH).biBitCount == 8) fwrite(temp, sizeof(FILE_HEAD) + sizeof(INF_HEAD) + 256 * sizeof(RGB), 1, fp);
    else fwrite(temp, sizeof(FILE_HEAD) + sizeof(INF_HEAD), 1, fp);
    fwrite(temp->pix_val, (temp->IH).biSizeImage * sizeof(unsigned char), 1, fp);
    fclose(fp);
}
// RGB转YUV
void RGB_YUV(double R, double G, double B, double *Y, double *U, double *V){
    *Y = 0.299 * R + 0.587 * G + 0.114 * B;
    *U = -0.147 * R - 0.289 * G + 0.435 * B;
    *V = 0.615 * R - 0.515 * G - 0.100 * B;
}
// YUV转RGB
void YUV_RGB(double Y, double U, double V, double* R, double* G, double* B){
    *R = Y + 1.4075 * V;
    *G = Y - 0.3455 * U - 0.7169*V;
    *B = Y + 1.779 * U;
}
// 将值映射到[0,255]以内
double new(double val){
    if(val < 0.0) return 0.0;
    else if(val > 255.0)  return 255.0;
    else return val;
}
// 对数增强
void Log(int BMPheight, int BMPwidth){
    int row_byte = (3 * BMPwidth + 3) / 4 * 4;
    int byte_row = (BMPwidth + 3) / 4 * 4;
    int now_position,new_position;
    double max=0;
    // 遍历像素找出最大灰度值max
    for (int i = 0; i < BMPheight; i++){
        for (int j = 0; j < BMPwidth; j++){
            now_position = row_byte * i + 3 * j;
            double B = zjz.pix_val[now_position];
            double G = zjz.pix_val[now_position + 1];
            double R = zjz.pix_val[now_position + 2];
            double Y, U, V;
            RGB_YUV(R, G, B, &Y, &U, &V);
            if (max < Y) max = Y;
        }
    }
    // 遍历每一个像素并在转换成YVU空间后对Y进行对数增强
    for(int i=0; i<BMPheight;i++){
        for(int j=0;j<BMPwidth;j++){
            now_position = row_byte * i + 3 * j;
            new_position = byte_row * i + j;
            double B = zjz.pix_val[now_position];
            double G = zjz.pix_val[now_position + 1];
            double R = zjz.pix_val[now_position + 2];
            double Y, U, V;
            RGB_YUV(R, G, B, &Y, &U, &V);
            Y = new(log(Y+1)/log(max+1)*255); // 在这里对数增强
            zjz1.pix_val[new_position]=Y;
            YUV_RGB(Y,U,V,&R,&G,&B);
            zjz2.pix_val[now_position]=new(B);
            zjz2.pix_val[now_position+1]=new(G);
            zjz2.pix_val[now_position+2]=new(R);
        }
    }
    Output(&zjz1,"zjz_Gray_Log.bmp"); // 输出灰度增强
    Output(&zjz2,"zjz_Color_Log.bmp"); // 输出彩色增强图
}

void Histogram(int BMPheight, int BMPwidth){
    int row_byte = (3 * BMPwidth + 3) / 4 * 4;
    int byte_row = (BMPwidth + 3) / 4 * 4;
    int now_position,new_position;
    // 首先计算Y和RGB每一通道对应的像素个数，像素总数为BMPheight*BMPwidth
    for(int i=0; i<BMPheight;i++){
        for(int j=0;j<BMPwidth;j++){
            now_position = row_byte*i+3*j;
            double B = zjz.pix_val[now_position];
            double G = zjz.pix_val[now_position + 1];
            double R = zjz.pix_val[now_position + 2];
            double Y, U, V;
            RGB_YUV(R, G, B, &Y, &U, &V);
            pix_R[(unsigned char)new(R)]+=1.0; // R通道
            pix_G[(unsigned char)new(G)]+=1.0; // G通道
            pix_B[(unsigned char)new(B)]+=1.0; // B通道
            pix_Y[(unsigned char)new(Y)]+=1.0; // Y通道
        }
    }
for(int i=0;i<256;i++){
    if(i==0){ // i=0时和其他情况区分开
        sum_pix_Y[i]=pix_Y[i]/(BMPheight*BMPwidth);
        sum_pix_R[i]=pix_R[i]/(BMPheight*BMPwidth);
        sum_pix_G[i]=pix_G[i]/(BMPheight*BMPwidth);
        sum_pix_B[i]=pix_B[i]/(BMPheight*BMPwidth);
    }else{ // 0到i之间所有像素数相加除以总像素数
        sum_pix_Y[i]=sum_pix_Y[i-1]+pix_Y[i]/(BMPheight*BMPwidth);
        sum_pix_R[i]=sum_pix_R[i-1]+pix_R[i]/(BMPheight*BMPwidth);
        sum_pix_G[i]=sum_pix_G[i-1]+pix_G[i]/(BMPheight*BMPwidth);
        sum_pix_B[i]=sum_pix_B[i-1]+pix_B[i]/(BMPheight*BMPwidth);
    }
}
// 进行均衡化，三种算法一起计算节约时间
    for(int i=0; i<BMPheight;i++){
        for(int j=0;j<BMPwidth;j++){
            now_position = row_byte*i+3*j;
            new_position = byte_row*i+j;
            double B = zjz.pix_val[now_position];
            double G = zjz.pix_val[now_position + 1];
            double R = zjz.pix_val[now_position + 2];
            double Y, U, V;
            RGB_YUV(R, G, B, &Y, &U, &V);
            // 在Y上进行均衡化，输出灰度图
            Y=zjz3.pix_val[new_position]=sum_pix_Y[(unsigned char)new(Y)]*255;
            // 在RGB上进行均衡化，输出彩色图
            zjz4.pix_val[now_position]=sum_pix_B[(unsigned char)new(B)]*255;
            zjz4.pix_val[now_position+1]=sum_pix_G[(unsigned char)new(G)]*255;
            zjz4.pix_val[now_position+2]=sum_pix_R[(unsigned char)new(R)]*255;
            // 在Y上进行均衡化，转换成RGB，输出彩色图
YUV_RGB(Y,U,V,&R,&G,&B);
zjz5.pix_val[now_position]=new(B);
zjz5.pix_val[now_position+1]=new(G);
zjz5.pix_val[now_position+2]=new(R);
        }
    }
    Output(&zjz3,"zjz_histogram1.bmp");
    Output(&zjz4,"zjz_histogram2.bmp");
    Output(&zjz5,"zjz_histogram3.bmp");
}
int main(){
    // 读取图像
    FILE *fp;
    int BMPSize, BMPheight, BMPwidth;
    fp = fopen("zjz.bmp", "rb"); // 读取本目录下的bmp文件
    if (!fp){
        printf("憨憨不见了:(\n");
        return 0;
    }
    else printf("憨憨在这里:)\n");
    fread(&zjz.FH, sizeof(FILE_HEAD), 1, fp);
    fread(&zjz.IH, sizeof(INF_HEAD), 1, fp);
    BMPheight = zjz.IH.biHeight;
    BMPwidth = zjz.IH.biWidth;
    if (!zjz.IH.biSizeImage) // biSizeImage可能为则需要zjz.FH.bfSize - zjz.FH.bfOffBits
        zjz.IH.biSizeImage = zjz.FH.bfSize - zjz.FH.bfOffBits;
    BMPSize = zjz.IH.biSizeImage;
    fseek(fp, zjz.FH.bfOffBits, SEEK_SET);
    zjz.pix_val = (unsigned char *)malloc(sizeof(unsigned char) * BMPSize);
    fread(zjz.pix_val, BMPSize * sizeof(unsigned char), 1, fp);
    fclose(fp);

    // 灰度对数增强
    memcpy(&(zjz1.FH), &(zjz.FH), sizeof(FILE_HEAD));
    memcpy(&(zjz1.IH), &(zjz.IH), sizeof(INF_HEAD));
    zjz1.FH.bfOffBits = 1078;
    zjz1.IH.biBitCount = 8;
    zjz1.IH.biSizeImage = BMPheight * ((BMPwidth + 3) / 4 * 4);
    zjz1.FH.bfSize = zjz1.IH.biSizeImage + zjz1.FH.bfOffBits;
    zjz1.pix_val = (unsigned char *)calloc(zjz1.IH.biSizeImage, sizeof(unsigned char));
    for (int i = 0; i < 256; i++) zjz1.Color[i].rgbBlue = zjz1.Color[i].rgbGreen = zjz1.Color[i].rgbRed = i;
    // 彩色对数增强
    zjz2.pix_val = (unsigned char *)calloc(zjz.IH.biSizeImage, sizeof(unsigned char));
    memcpy(&(zjz2.FH), &(zjz.FH), sizeof(FILE_HEAD));
    memcpy(&(zjz2.IH), &(zjz.IH), sizeof(INF_HEAD));
    memcpy(&(zjz2.Color), &(zjz.Color), sizeof(RGB) * 256);
    memcpy((zjz2.pix_val), (zjz.pix_val), sizeof(unsigned char) * (((BMPwidth + 3) / 4 * 4) * BMPheight));
    Log(BMPheight, BMPwidth); 

    // 均衡化1
    memcpy(&(zjz3.FH), &(zjz.FH), sizeof(FILE_HEAD));
    memcpy(&(zjz3.IH), &(zjz.IH), sizeof(INF_HEAD));
    zjz3.FH.bfOffBits = 1078;
    zjz3.IH.biBitCount = 8;
    zjz3.IH.biSizeImage = BMPheight * ((BMPwidth + 3) / 4 * 4);
    zjz3.FH.bfSize = zjz3.IH.biSizeImage + zjz3.FH.bfOffBits;
    zjz3.pix_val = (unsigned char *)calloc(zjz3.IH.biSizeImage, sizeof(unsigned char));
    for (int i = 0; i < 256; i++) zjz3.Color[i].rgbBlue = zjz3.Color[i].rgbGreen = zjz3.Color[i].rgbRed = i;
    // 均衡化2
    zjz4.pix_val = (unsigned char *)calloc(zjz.IH.biSizeImage, sizeof(unsigned char));
    memcpy(&(zjz4.FH), &(zjz.FH), sizeof(FILE_HEAD));
    memcpy(&(zjz4.IH), &(zjz.IH), sizeof(INF_HEAD));
    memcpy(&(zjz4.Color), &(zjz.Color), sizeof(RGB) * 256);
    memcpy((zjz4.pix_val), (zjz.pix_val), sizeof(unsigned char) * (((BMPwidth + 3) / 4 * 4) * BMPheight));
    // 均衡化3
    zjz5.pix_val = (unsigned char *)calloc(zjz.IH.biSizeImage, sizeof(unsigned char));
    memcpy(&(zjz5.FH), &(zjz.FH), sizeof(FILE_HEAD));
    memcpy(&(zjz5.IH), &(zjz.IH), sizeof(INF_HEAD));
    memcpy(&(zjz5.Color), &(zjz.Color), sizeof(RGB) * 256);
    memcpy((zjz5.pix_val), (zjz.pix_val), sizeof(unsigned char) * (((BMPwidth + 3) / 4 * 4) * BMPheight));
    Histogram(BMPheight, BMPwidth); // 均衡化处理
}