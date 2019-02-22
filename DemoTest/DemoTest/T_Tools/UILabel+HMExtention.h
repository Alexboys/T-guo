//
//  UILabel+HMExtention.h
//
//  Created by Alex on 16/8/26.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (HMExtention)

+ (instancetype)hm_labelWithText:(NSString *)text font:(UIFont *)font;
+ (instancetype)hm_labelWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)color;
+ (instancetype)hm_labelWithText:(NSString *)text font:(UIFont *)font hexColor:(uint32_t)hexColor;

+ (instancetype)hm_labelWithText:(NSString *)text font:(UIFont *)font HexStringColor:(NSString *) locHexStringColor;


/// 实例化 UILabel
///
/// @param text                     label的文字
/// @param Stringfont               label的文字的大小
/// @param locHexStringColor        label的文字的颜色
/// @param backGroundColor          label的背景颜色
/// @return textAlignment           label文字显示位置（l居左，居中，居右）
+ (instancetype)hm_labelWithText:(NSString *)text
                            TextStringfont:(UIFont *)Stringfont
              HexTextStringColor:(UIColor *)locHexStringColor
                 backGroundColor:(UIColor *)backGroundColor
                   textAlignment:(NSTextAlignment)textAlignment;
@end
