//
//  UIColor+HMExtention.h
//  Created by Alex on 16/8/26.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIColor (HMExtention)
/// 16 进制颜色转RGB颜色
+ (instancetype)hm_colorWithHex:(uint32_t)hex;

+ (instancetype)colorWithHexString: (NSString *)color;

//绘制渐变色颜色的方法
+ (CAGradientLayer *)setGradualChangingColor:(UIView *)view fromColor:(NSString *)fromHexColorStr toColor:(NSString *)toHexColorStr;


@end
