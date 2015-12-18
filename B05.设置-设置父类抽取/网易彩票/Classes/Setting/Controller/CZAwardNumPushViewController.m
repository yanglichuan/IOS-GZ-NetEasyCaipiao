//
//  CZAwardNumPushViewController.m
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZAwardNumPushViewController.h"

@interface CZAwardNumPushViewController ()

@end

@implementation CZAwardNumPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 设置数据
    //初始化数据
    //第一组
    CZSettingItem *item1 = [CZSettingSwitchItem itemWithIcon:nil title:@"双色球"];
    CZSettingItem *item2= [CZSettingSwitchItem itemWithIcon:nil title:@"大乐透"];
    
    CZSettingGroup *group1 = [[CZSettingGroup alloc] init];
    group1.headerTitle = @"xxxxxxxxxxxxxx";
    group1.items = @[item1,item2];
    
    [self.cellData addObject:group1];

    
    
}

@end
