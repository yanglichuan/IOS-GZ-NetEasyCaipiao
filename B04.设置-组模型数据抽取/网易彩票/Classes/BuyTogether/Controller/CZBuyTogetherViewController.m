//
//  CZBuyTogetherViewController.m
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZBuyTogetherViewController.h"

@interface CZBuyTogetherViewController ()
- (IBAction)btnClick:(id)sender;

@end

@implementation CZBuyTogetherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
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

- (IBAction)btnClick:(UIButton *)btn {
    
    //实现按钮图片的旋转
    [UIView animateWithDuration:0.25 animations:^{
        if (CGAffineTransformIsIdentity(btn.imageView.transform)) {//代表要旋转
            btn.imageView.transform = CGAffineTransformMakeRotation(M_PI);
        }else{//恢复原状
            btn.imageView.transform = CGAffineTransformIdentity;
        
        }
        
    }];
    
}
@end
