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
    CZSettingItem *item1 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"推送和提醒"];
    CZSettingItem *item2 = [CZSettingSwitchItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
    CZSettingItem *item3 = [CZSettingSwitchItem itemWithIcon:@"handShake" title:@"声音和效果"];
    NSArray *group1 = @[item1,item2,item3];
    
    
    [self.cellData addObject:group1];
    
    
    //第二组
    CZSettingItem *item4 = [CZSettingArrowItem itemWithIcon:@"handShake" title:@"检查版本更新"];
    
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
    static NSString *ID = @"SettingCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    //获取模型显示数据
    NSArray *group = self.cellData[indexPath.section];
    CZSettingItem *item = group[indexPath.row];
    
    //显示图片和标题
    cell.textLabel.text = item.title;
    cell.imageView.image = [UIImage imageNamed:item.icon];
    
    //设置箭头
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    if ([item isKindOfClass:[CZSettingArrowItem class]]) {//箭头
        cell.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    
    else if([item isKindOfClass:[CZSettingSwitchItem class]]){//开关
        cell.accessoryView = [[UISwitch alloc] init];
    }
    
    
    
    return cell;
}




@end
