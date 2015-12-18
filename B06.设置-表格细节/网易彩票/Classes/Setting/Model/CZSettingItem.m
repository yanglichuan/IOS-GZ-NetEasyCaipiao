//
//  CZSettingItem.m
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZSettingItem.h"

@implementation CZSettingItem


-(instancetype)initWithIcon:(NSString *)icon title:(NSString *)title{
    if (self = [super init]) {
        self.icon = icon;
        self.title = title;
    }
    
    return self;
}
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title{
    return [[self alloc] initWithIcon:icon title:title];
}

+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title vcClass:(Class)vcClass{
    CZSettingItem *item = [self itemWithIcon:icon title:title];
    item.vcClass = vcClass;
    
    return item;
}

@end
