//
//  CZBaseSettingViewController.h
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CZSettingItem.h"
#import "CZSettingGroup.h"
#import "CZSettingArrowItem.h"
#import "CZSettingSwitchItem.h"
#import "CZSettingLabelItem.h"

@interface CZBaseSettingViewController : UITableViewController

/**
 *  表格数据，里面存储CZSettingGroup
 */
@property(nonatomic,strong)NSMutableArray *cellData;


@end
