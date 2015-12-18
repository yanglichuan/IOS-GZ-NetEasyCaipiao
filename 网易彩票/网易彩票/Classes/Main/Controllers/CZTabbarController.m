//
//  CZTabbarController.m
//  网易彩票
//
//  Created by apple on 15-1-5.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZTabbarController.h"
#import "CZTabbar.h"

@interface CZTabbarController ()<CZTabbarDelegate>



@end

@implementation CZTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%s",__func__);
    
    
#warning 系统的tabbarbutton 里面小图片 30x30
    //自己写一个tabbar 替换 系统Tabbar
    //自定义一个tabbar
    CZTabbar *mTabbar = [[CZTabbar alloc] initWithFrame:self.tabBar.bounds];
    mTabbar.backgroundColor = [UIColor redColor];
    
    
    //添加按钮
    for (NSInteger i = 0; i < 5; i++) {
       // 获取普通状态的图片名称
        NSString *normalImg = [NSString stringWithFormat:@"TabBar%ld", i+1];
    
        // 获取选中的图片
        NSString *selImg = [NSString stringWithFormat:@"TabBar%ldSel", i + 1];
        [mTabbar addTabbarBtnWithNormalImg:normalImg selImg:selImg];
    
    }
    
    //设置代理
    mTabbar.delegate = self;
    
    //把自定义的tabbar添加到 系统的tabbar上
    [self.tabBar addSubview:mTabbar];

}

#pragma mark 自定义Tabbar的代理
-(void)tabbar:(CZTabbar *)tabbar didSelectedFrom:(NSInteger)from to:(NSInteger)to{
    //切换tabbar控制器的子控件器
    self.selectedIndex = to;

}


@end
