//
//  UIImage+GXGradientColor.h
//  XWMagicBlockApp
//
//  Created by T-guo on 2018/8/3.
//  Copyright © 2018年 T_guo. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, BackGroundType) {
    
    BackGroundTypeTopToBottom = 0,//从上到小
    
    BackGroundTypeLeftToRight = 1,//从左到右
    
    BackGroundTypeUpleftToLowright = 2,//左上到右下
    
    BackGroundTypeUprightToLowleft = 3,//右上到左下
    
};


@interface UIImage (GXGradientColor)

+ (UIImage *)gradientColorImageFromColors:(NSArray*)colors gradientType:(BackGroundType)gradientType imgSize:(CGSize)imgSize;


@end
