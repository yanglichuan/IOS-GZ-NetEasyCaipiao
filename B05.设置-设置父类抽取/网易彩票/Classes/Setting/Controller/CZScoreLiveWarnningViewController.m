//
//  CZScoreLiveWarnningViewController.m
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZScoreLiveWarnningViewController.h"


@implementation CZScoreLiveWarnningViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //第一组
    CZSettingItem *item1 = [CZSettingSwitchItem itemWithIcon:nil title:@"提醒我关注的比赛"];
    
    CZSettingGroup *group1 = [[CZSettingGroup alloc] init];
    group1.footerTitle = @"xxxxxxxxxxxxxx";
    group1.items = @[item1];
    [self.cellData addObject:group1];
    
    
    //第二组
    CZSettingItem *item2 = [CZSettingLabelItem itemWithIcon:nil title:@"起始时间"];
    
    CZSettingGroup *group2 = [[CZSettingGroup alloc] init];
    group2.headerTitle = @"xxxxxxxxxxxxxx";
    group2.items = @[item2];
    [self.cellData addObject:group2];
    
    //第三种组
    CZSettingItem *item3 = [CZSettingLabelItem itemWithIcon:nil title:@"结束时间"];
    
    CZSettingGroup *group3 = [[CZSettingGroup alloc] init];
    group3.items = @[item3];
    [self.cellData addObject:group3];
}



@end
