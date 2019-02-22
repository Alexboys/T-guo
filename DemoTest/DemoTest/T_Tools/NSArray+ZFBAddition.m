//
//  NSArray+ZFBAddition.m
//
//  Created by 郭选 on 16/9/1.
//  Copyright © 2016年 郭选. All rights reserved.
//

#import "NSArray+ZFBAddition.h"

@implementation NSArray (ZFBAddition)

+ (instancetype)hm_arrWithPlistName:(NSString *)plistName className:(NSString *)className
{
    NSURL *url = [[NSBundle mainBundle]URLForResource:plistName withExtension:nil];
    
    NSArray *dictArr = [NSArray arrayWithContentsOfURL:url];
    
    NSMutableArray *arrModel = [NSMutableArray array];
    
    for (NSDictionary *dict in dictArr) {
        
        Class clz = NSClassFromString(className);
        
        NSObject *obj = [[clz alloc]init];
        
        [obj setValuesForKeysWithDictionary:dict];
        
        [arrModel addObject:obj];
    }

    return arrModel.copy;
}
@end
