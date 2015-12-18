//
//  CZSettingItem.h
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
//定义一个block,无返回值，也无参数
typedef void (^OperationBlock)();

@interface CZSettingItem : NSObject

@property(nonatomic,copy)NSString *icon;
@property(nonatomic,copy)NSString *title;

/**
 * 控制器的类型
 */
@property(nonatomic,assign)Class vcClass;

/**
 *  存储一个特殊的Block 操作
 *   block 使用copy
 */
@property(nonatomic,copy)OperationBlock operation;


-(instancetype)initWithIcon:(NSString *)icon title:(NSString *)title;

+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title;

+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title vcClass:(Class)vcClass;



@end
