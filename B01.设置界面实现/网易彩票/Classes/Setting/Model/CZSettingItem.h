//
//  CZSettingItem.h
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZSettingItem : NSObject

@property(nonatomic,copy)NSString *icon;
@property(nonatomic,copy)NSString *title;


-(instancetype)initWithIcon:(NSString *)icon title:(NSString *)title;
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title;

@end
