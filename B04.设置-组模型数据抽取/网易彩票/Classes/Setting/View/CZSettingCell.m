//
//  CZSettingCell.m
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZSettingCell.h"
#import "CZSettingItem.h"
#import "CZSettingArrowItem.h"
#import "CZSettingSwitchItem.h"

@implementation CZSettingCell

+(instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString *ID = @"SettingCell";
    CZSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (!cell) {
        cell = [[CZSettingCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    
    return cell;
}

-(void)setItem:(CZSettingItem *)item{
    _item = item;
    
    //显示图片和标题
    self.textLabel.text = item.title;
    self.imageView.image = [UIImage imageNamed:item.icon];
    
    //设置箭头
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    if ([item isKindOfClass:[CZSettingArrowItem class]]) {//箭头
        self.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }else if([item isKindOfClass:[CZSettingSwitchItem class]]){//开关
        self.accessoryView = [[UISwitch alloc] init];
    }
    
}
@end
