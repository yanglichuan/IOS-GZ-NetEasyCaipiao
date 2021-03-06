//
//  CZSettingViewController.m
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZSettingViewController.h"
#import "CZSettingItem.h"
#import "CZSettingArrowItem.h"
#import "CZSettingSwitchItem.h"
#import "CZSettingCell.h"
#import "ViewController.h"

@interface CZSettingViewController ()
/**
 *  表格数据，里面存储数组
 */
@property(nonatomic,strong)NSMutableArray *cellData;

@end

@implementation CZSettingViewController


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

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //初始化数据
    //第一组
    CZSettingItem *item1 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"推送和提醒" vcClass:[ViewController class]];
    CZSettingItem *item2 = [CZSettingSwitchItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
    CZSettingItem *item3 = [CZSettingSwitchItem itemWithIcon:@"handShake" title:@"声音和效果"];
    NSArray *group1 = @[item1,item2,item3];
    [self.cellData addObject:group1];
    
    
    //第二组
    CZSettingItem *item4 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"检查版本更新" vcClass:[ViewController class]];
    
    CZSettingItem *item5 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"帮助"];
    
    CZSettingItem *item6 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"分享"];
    
    CZSettingItem *item7 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"查看消息"];
    
    CZSettingItem *item8 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"产品推荐"];
    
    CZSettingItem *item9 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"头型"];
    NSArray *group2 = @[item4,item5,item6,item7,item8,item9];
    [self.cellData addObject:group2];
    
  
    
    
    //显示数据
}



#pragma mark - 组的个数

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.cellData.count;
}

#pragma mark 组的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //组数据
    NSArray *group = self.cellData[section];

    return group.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    CZSettingCell *cell = [CZSettingCell cellWithTableView:tableView];
    
    //获取模型显示数据
    NSArray *group = self.cellData[indexPath.section];
    CZSettingItem *item = group[indexPath.row];

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

    //获取模型里的vcClass[控制器的类型]
    NSArray *group = self.cellData[indexPath.section];
    CZSettingItem *item = group[indexPath.row];
    
    if(item.vcClass){
        //创建控制器再显示
        id vc = [[item.vcClass alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
}


@end
