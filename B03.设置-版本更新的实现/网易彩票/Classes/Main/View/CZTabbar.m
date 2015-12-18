//
//  CZTabbar.m
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZTabbar.h"

@interface CZTabbar()

/**
 *  当前选中的按钮
 */
@property(nonatomic,weak)UIButton *selectedBtn;

@end


@implementation CZTabbar

/*
*自定义控件
 1.在initWithFrame初始化的方法，添加子控件
 2.layoutSubviews 布局子控件frm
*/

/*
 //调用控件的init方法【[[UIView alloc] init]】 的时候被调用  接着还会调用initWithFrame
//-(instancetype)init

 
//调用控件的init方法【[[UIView alloc] initWithFrame]】 的时候被调用  
 //-(instancetype)initWithFrame:(CGRect)frame

 
 //调用控件的创建从xib/storybaord 的时候被调用
-(id)initWithCoder:(NSCoder *)aDecoder
*/

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        //初始化按钮
        //[self setupBtns];
    }
    
    return self;
}


#pragma mark 初始化按钮
-(void)addTabbarBtnWithNormalImg:(NSString *)normalImg selImg:(NSString *)selImg{
    UIButton *btn = [CZTabbarButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:[UIImage imageNamed:normalImg] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:selImg] forState:UIControlStateSelected];
    
    
    //监听事件
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
    //绑定tag
#warning tag绑定要在addSubview的方法之前
    btn.tag = self.subviews.count;
    
    [self addSubview:btn];
    
    //设置默认选中
    if (btn.tag == 0) {
//        btn.selected = YES;
//        self.selectedBtn = btn;
        [self btnClick:btn];
    }
    
    
}

//-(void)setupBtns{
//
//    //自定义的tabbar添加5个按钮
//    for (NSInteger i = 0; i < 5; i++) {
//        // 获取普通状态的图片名称
//        NSString *normalImg = [NSString stringWithFormat:@"TabBar%ld", i+1];
//        
//        // 获取选中的图片
//        NSString *selImg = [NSString stringWithFormat:@"TabBar%ldSel", i + 1];
//        
//        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [btn setBackgroundImage:[UIImage imageNamed:normalImg] forState:UIControlStateNormal];
//        [btn setBackgroundImage:[UIImage imageNamed:selImg] forState:UIControlStateSelected];
//        
//        
//        //监听事件
//        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
//        //绑定tag
//        btn.tag = i;
//        [self addSubview:btn];
//        
//        //默认选中第一个按钮为选中
//        if (i == 0) {
//            btn.selected = YES;
//            self.selectedBtn = btn;
//        }
//        
//    }
//    
//    
//}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    NSInteger count = self.subviews.count;
    //布局子控件
    //按钮宽度与高度
    CGFloat btnW = self.bounds.size.width / count;
    CGFloat btnH = self.bounds.size.height;
    
    //自定义的tabbar添加5个按钮
//    for (NSInteger i = 0; i < count; i++) {
//
//        //获取btn
//        UIButton *btn = self.subviews[i];
//        
//        //设置按钮的frm
//        btn.frame = CGRectMake(btnW * i, 0, btnW, btnH);
//
//    }
    
    for (UIButton *btn in self.subviews) {
        btn.frame = CGRectMake(btnW * btn.tag, 0, btnW, btnH);
    }
    
}

-(void)btnClick:(UIButton *)btn{
    
    //一点击通知代理
    if ([self.delegate respondsToSelector:@selector(tabbar:didSelectedFrom:to:)]) {
        [self.delegate tabbar:self didSelectedFrom:self.selectedBtn.tag to:btn.tag];
    }
    
#warning 开发过程，首先针对64位开发，苹果开发的应用上架，必需支持64位
    NSLog(@"%ld",btn.tag);
    
    //取消之前选中
    self.selectedBtn.selected = NO;
    
    //设置当前选中
    btn.selected = YES;
    self.selectedBtn = btn;

    
}
@end


//实现自定义的btn
@implementation CZTabbarButton

//图片高亮时候会调用这个方法
-(void)setHighlighted:(BOOL)highlighted{
    NSLog(@"%s",__func__);
    //只要不调用父类的方法，按钮就不会有高度的效果
    //[super setHighlighted:highlighted];
}

@end
