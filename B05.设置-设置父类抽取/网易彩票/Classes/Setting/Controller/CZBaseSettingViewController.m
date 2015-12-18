//
//  CZSettingViewController.m
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZBaseSettingViewController.h"
#import "CZSettingCell.h"
#import "ViewController.h"
#import "MBProgressHUD+Extend.h"
#import "CZPushAndWarningViewController.h"

@interface CZBaseSettingViewController ()


@end

@implementation CZBaseSettingViewController


#pragma mark 只要调用 init 方法，就返回组样式表格
-(instancetype)init{
    if (self = [super initWithStyle:UITableViewStyleGrouped]) {
        
    }
    
    return self;
}

-(NSMutableArray *)cellData{
    if (!_cellData) {
        _cellData = [NSMutableArray array];
    }
    
    return _cellData;
}



#pragma mark - 组的个数

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.cellData.count;
}

#pragma mark 组的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //组数据
    CZSettingGroup *group = self.cellData[section];
    
    return group.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CZSettingCell *cell = [CZSettingCell cellWithTableView:tableView];
    
    //获取组的模型数据
    CZSettingGroup *group = self.cellData[indexPath.section];
    
    //获取行的模型数据
    CZSettingItem *item = group.items[indexPath.row];
    
    //设置模型 显示数据
    cell.item = item;
    return cell;
}


#pragma mark cell的点中
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //进入下一个控制器
    //    if(indexPath.section == 0){
    //        if (indexPath.row == 0 ) {
    //            //进入 推送和提醒的控制器
    //        }
    //    }
    
    //获取组模型
    CZSettingGroup *group = self.cellData[indexPath.section];
    
    //获取行的模型
    CZSettingItem *item = group.items[indexPath.row];
    
    //判断是否有 "特殊的操作"
    if (item.operation) {
        //有特殊的操作，operation是有值，然后调用
        item.operation();
    }else if(item.vcClass){
        //创建控制器再显示
        id vc = [[item.vcClass alloc] init];
        //设置下一个控制器的标题
        [vc setTitle:item.title];
        [self.navigationController pushViewController:vc animated:YES];
    }
}


#pragma mark 头部标题
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    //获取组模型
    CZSettingGroup *group = self.cellData[section];
    return group.headerTitle;
    
}

#pragma mark 尾部标题
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    //获取组模型
    CZSettingGroup *group = self.cellData[section];
    return group.footerTitle;
}

@end
