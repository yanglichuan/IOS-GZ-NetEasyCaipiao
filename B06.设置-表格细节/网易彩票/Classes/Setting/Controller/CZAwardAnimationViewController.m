//
//  CZAwardAnimationViewController.m
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZAwardAnimationViewController.h"

@interface CZAwardAnimationViewController ()

@end

@implementation CZAwardAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //第一组
    CZSettingItem *item1 = [CZSettingSwitchItem itemWithIcon:nil title:@"中奖动画"];
    
    CZSettingGroup *group1 = [[CZSettingGroup alloc] init];
    group1.headerTitle = @"xxxxxxxxxxxxxx";
    group1.items = @[item1];
    
    [self.cellData addObject:group1];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
