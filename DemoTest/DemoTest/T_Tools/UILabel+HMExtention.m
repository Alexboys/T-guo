//
//  UILabel+HMExtention.m

//  Created by Alex on 16/8/26.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "UILabel+HMExtention.h"
#import "UIColor+HMExtention.h"

@implementation UILabel (HMExtention)
+ (instancetype)hm_labelWithText:(NSString *)text font:(UIFont *)font{
    UILabel *label = [UILabel new];
    label.text = text;
    label.font = font;
    return label;
}

+ (instancetype)hm_labelWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)color{
    UILabel *label = [self hm_labelWithText:text font:font];
    label.textColor = color;
    return label;
}

+ (instancetype)hm_labelWithText:(NSString *)text font:(UIFont *)font hexColor:(uint32_t)hexColor{
    UIColor *color = [UIColor hm_colorWithHex:hexColor];
    return [self hm_labelWithText:text font:font textColor:color];
}

+ (instancetype)hm_labelWithText:(NSString *)text font:(UIFont *)font HexStringColor:(NSString *)HexStringColor{

    UIColor *colorStr = [UIColor colorWithHexString:HexStringColor];
    
    return [self hm_labelWithText:text font:font textColor:colorStr];
}

+ (instancetype)hm_labelWithText:(NSString *)text
                  TextStringfont:(UIFont *)Stringfont
              HexTextStringColor:(UIColor *)locHexStringColor
                 backGroundColor:(UIColor *)backGroundColor
                   textAlignment:(NSTextAlignment)textAlignment
{
    UILabel *label = [self hm_labelWithText:text font:Stringfont];
    label.textColor = locHexStringColor;
    label.backgroundColor = backGroundColor;
    label.textAlignment = textAlignment;
    return label;
}


@end
