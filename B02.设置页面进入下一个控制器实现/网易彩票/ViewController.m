//
//  ViewController.m
//  网易彩票
//
//  Created by apple on 15-1-5.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //[self.navigationController.navigationBar setBackgroundImage:<#(UIImage *)#> forBarMetrics:<#(UIBarMetrics)#>]
    //自己代码创建的控制器，要设置一个背景，不能导航控制器推送的时候，会出现 “卡卡”效果
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
