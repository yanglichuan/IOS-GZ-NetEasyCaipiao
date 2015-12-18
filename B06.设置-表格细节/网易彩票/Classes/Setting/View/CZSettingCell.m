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
#import "CZSettingLabelItem.h"

@interface CZSettingCell()

/**
 *  箭头
 */
@property(nonatomic,strong)UIImageView *mArrow;


/**
 *  开关
 */
@property(nonatomic,strong)UISwitch *mSwitch;

/**
 *  Label
 */
@property(nonatomic,strong)UILabel *mLabel;

@end

@implementation CZSettingCell


-(UIImageView *)mArrow{
    if (!_mArrow) {
        _mArrow = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    
    return _mArrow;
}


-(UISwitch *)mSwitch{
    if (!_mSwitch) {
        _mSwitch = [[UISwitch alloc] init];
        
        //监听事件
        [_mSwitch addTarget:self action:@selector(valueChange:) forControlEvents:UIControlEventValueChanged];
        
    }
    
    return _mSwitch;
}

-(void)valueChange:(UISwitch *)mSwitch{
    //把开关状态保存到用户偏好设置
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:mSwitch.isOn forKey:self.item.title];
    [defaults synchronize];//保存同步
}

-(UILabel *)mLabel{
    if(!_mLabel){
        UILabel *label = [[UILabel alloc] init];
        label.bounds = CGRectMake(0, 0, 80, 44);
        label.text = @"00:00";
        _mLabel = label;

    }
    
    return _mLabel;
}

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
    if (item.icon) {
        self.imageView.image = [UIImage imageNamed:item.icon];    
    }
    
    
    //设置箭头
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    if ([item isKindOfClass:[CZSettingArrowItem class]]) {//箭头
        self.accessoryView = self.mArrow;
        
        //箭头可以选中
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }else if([item isKindOfClass:[CZSettingSwitchItem class]]){//开关
        //设置开关的状态
        self.mSwitch.on = [[NSUserDefaults standardUserDefaults] boolForKey:item.title];
        self.accessoryView = self.mSwitch;
        
        //开关的cell不能选中
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }else if([item isKindOfClass:[CZSettingLabelItem class]]){//右边添加一个Label
        
        self.accessoryView = self.mLabel;
        //Lable的cell可以选中
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
        
    
    }
    
}
@end
