//
//  UIImage+Colors.h
//  XWMagicBlockApp
//
//  Created by seven ma on 2018/7/25.
//  Copyright © 2018年 T_guo. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum  {
    UIImageColorGradientTypeTopToBottom = 0,//从上到小
    UIImageColorGradientTypeLeftToRight = 1,//从左到右
    UIImageColorGradientTypeUpleftTolowRight = 2,//左上到右下
    UIImageColorGradientTypeUprightTolowLeft = 3,//右上到左下
}GradientType;
@interface UIImage (Colors)
+(UIImage*)creatImageWithSize:(CGSize)size fromColors:(UIColor*)firstColor toColor:(UIColor*)secondColor ByGradientType:(GradientType)gradientType;
+ (UIImage *)imageByApplyingAlpha:(CGFloat)alpha  image:(UIImage*)image;
@end
