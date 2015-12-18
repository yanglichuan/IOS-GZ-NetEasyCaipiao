//
//  CZTabbar.h
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CZTabbar;
@protocol CZTabbarDelegate <NSObject>

-(void)tabbar:(CZTabbar *)tabbar didSelectedFrom:(NSInteger)from to:(NSInteger)to;

@end

@interface CZTabbar : UIView

@property(nonatomic,weak)id<CZTabbarDelegate> delegate;

/**
 * 传普通状态和选中状态的图片，内部就帮你添加一个按钮
 */
-(void)addTabbarBtnWithNormalImg:(NSString *)normalImg selImg:(NSString *)selImg;

@end


//自定义按钮
@interface CZTabbarButton : UIButton

@end

