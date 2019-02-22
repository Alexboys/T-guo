//
//  UIColor+ZFBAddition.m
//
//  Created by Alex on 16/8/31.
//  Copyright © 2016年 郭选. All rights reserved.
//

#import "UIColor+ZFBAddition.h"

@implementation UIColor (ZFBAddition)

+ (instancetype)hm_colorWithHex:(uint32_t)hex
{
    int red = (hex & 0xFF0000) >> 16;   // (1 + 2) * 3
    
    int green = (hex & 0x00FF00) >> 8;
    
    int blue = hex & 0x0000FF;
    
    return [UIColor hm_colorWithR:red G:green B:blue alpha:1];
}
+ (instancetype)hm_colorWithR:(int)red G:(int)green B:(int)blue alpha:(float)alpha
{
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}


+ (instancetype)colorWithHexString: (NSString *)color
{
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    // 判断前缀
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor clearColor];
    // 从六位数值中找到RGB对应的位数并转换
    NSRange range;
    range.location = 0;
    range.length = 2;
    //R、G、B
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f];
}

+ (instancetype)hm_randomColor{
    return [UIColor hm_colorWithR:arc4random_uniform(256) G:arc4random_uniform(256) B:arc4random_uniform(256) alpha:1];
}

@end
