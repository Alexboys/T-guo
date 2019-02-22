//
//  UIColor+ZFBAddition.h
//  Created by Alex on 16/8/31.
//  Copyright © 2016年 郭选. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ZFBAddition)

+ (instancetype)hm_colorWithHex:(uint32_t)hex;

+ (instancetype)hm_colorWithR:(int)red G:(int)green B:(int)blue alpha:(float)alpha;

+ (instancetype)colorWithHexString: (NSString *)color;

+ (instancetype)hm_randomColor;



@end
