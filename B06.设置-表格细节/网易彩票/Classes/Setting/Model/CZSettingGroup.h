//
//  CZSettingGroup.h
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZSettingGroup : NSObject

/**
 *  组的头部标题
 */
@property(nonatomic,copy)NSString *headerTitle;

/**
 *  组的尾部标题
 */
@property(nonatomic,copy)NSString *footerTitle;


/**
 *  组的每一行数据模型
 */
@property(nonatomic,strong)NSArray *items;
@end
