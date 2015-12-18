//
//  CZSettingViewController.m
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZPushAndWarningViewController.h"
#import "CZSettingItem.h"
#import "CZSettingGroup.h"
#import "CZSettingArrowItem.h"
#import "CZSettingSwitchItem.h"
#import "CZSettingCell.h"
#import "ViewController.h"
#import "MBProgressHUD+Extend.h"
#import "CZAwardNumPushViewController.h"
#import "CZAwardAnimationViewController.h"
#import "CZScoreLiveWarnningViewController.h"



@implementation CZPushAndWarningViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //初始化数据
    //第一组
    CZSettingItem *item1 = [CZSettingArrowItem itemWithIcon:nil title:@"开奖号码推送" vcClass:[CZAwardNumPushViewController class]];
    CZSettingItem *item2= [CZSettingArrowItem itemWithIcon:nil title:@"中奖动画" vcClass:[CZAwardAnimationViewController class]];
    CZSettingItem *item3 = [CZSettingArrowItem itemWithIcon:nil title:@"比分直播提醒" vcClass:[CZScoreLiveWarnningViewController class]];
    CZSettingItem *item4 = [CZSettingArrowItem itemWithIcon:nil title:@"购彩定时提醒" vcClass:[ViewController class]];
    
    CZSettingGroup *group1 = [[CZSettingGroup alloc] init];
    group1.items = @[item1,item2,item3,item4];
    
    [self.cellData addObject:group1];
  
}


@end
