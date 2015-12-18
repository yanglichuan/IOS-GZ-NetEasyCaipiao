//
//  CZSettingCell.h
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CZSettingItem;
@interface CZSettingCell : UITableViewCell

+(instancetype)cellWithTableView:(UITableView *)tableView;

/**
 *  表格的数据模型
 */
@property(nonatomic,strong)CZSettingItem *item;

@end
