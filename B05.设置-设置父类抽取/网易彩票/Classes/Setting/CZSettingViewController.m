//
//  CZSettingViewController.m
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZSettingViewController.h"
#import "CZSettingItem.h"
#import "CZSettingGroup.h"
#import "CZSettingArrowItem.h"
#import "CZSettingSwitchItem.h"
#import "CZSettingCell.h"
#import "ViewController.h"
#import "MBProgressHUD+Extend.h"
#import "CZPushAndWarningViewController.h"


@implementation CZSettingViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"设置";
    
    //初始化数据
    //第一组
    CZSettingItem *item1 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"推送和提醒" vcClass:[CZPushAndWarningViewController class]];
    CZSettingItem *item2 = [CZSettingSwitchItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
    CZSettingItem *item3 = [CZSettingSwitchItem itemWithIcon:@"handShake" title:@"声音和效果"];
    //NSArray *group1 = @[item1,item2,item3];
    //创建组模型
    CZSettingGroup *group1 = [[CZSettingGroup alloc] init];
    group1.items = @[item1,item2,item3];
//    group1.footerTitle = @"aaaa";
//    group1.headerTitle = @"bbbb";
    
    [self.cellData addObject:group1];
    
    
    //第二组
    CZSettingItem *item4 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"检查版本更新"];
    //版本更新是一个特殊的操作，把这个操存在bock属性
    item4.operation = ^(){
        /*
        判断是否有最新的版本
        if(serverVersion > localVersion){
            //跳到APPStore （URL:地址）
        }else{ 
         最新版本
         
        }
         */
        
        // 1.获取服务器的版本号
        
        // 2.获取本地版本号【从bundle里获取】
        NSDictionary *info = [[NSBundle mainBundle] infoDictionary];
        NSLog(@"%@",info);
        NSString *localVersion = info[@"CFBundleShortVersionString"];
        
        // 3.对比
        NSLog(@"正在检查的版本更新");
        
        
        //现在，给一个假象
        [MBProgressHUD showMessage:@"正在检查版本更新中..."];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUD];
            [MBProgressHUD showSuccess:@"当前已经是最新版本"];
        });
    };
    
    CZSettingItem *item5 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"帮助"];
    
    CZSettingItem *item6 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"分享"];
    
    CZSettingItem *item7 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"查看消息"];
    
    CZSettingItem *item8 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"产品推荐"];
    
    CZSettingItem *item9 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"头型"];
    CZSettingGroup *group2 = [[CZSettingGroup alloc] init];
    group2.items = @[item4,item5,item6,item7,item8,item9];
//    group2.footerTitle = @"aaaa";
//    group2.headerTitle = @"bbbb";
    [self.cellData addObject:group2];
}




@end
