//
//  CZTitleButton.m
//  网易彩票
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZTitleButton.h"

#define ImageW 30//图片的宽度

@implementation CZTitleButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        //设置图片的显示样式
        self.imageView.contentMode = UIViewContentModeCenter;
    }
    
    return self;
    
}

//设置标题的位置
-(CGRect)titleRectForContentRect:(CGRect)contentRect{

    CGFloat titleW = contentRect.size.width - ImageW;
    CGFloat titleH = contentRect.size.height;
    return CGRectMake(0, 0, titleW, titleH);
}

//设置图片的位置
-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat imageW = ImageW;
    CGFloat imageH = contentRect.size.height;
    CGFloat imageX = contentRect.size.width - ImageW;
    //self.imageView.contentMode = UIViewContentModeCenter;
#warning 在此方法，UIButton的子控件都是空，不能在此地设置图片的显示样式
    
    //NSLog(@"%@",self.imageView);
    return CGRectMake(imageX, 0, imageW, imageH);

}

#pragma mark 去除按钮的高亮状态
//-(void)setHighlighted:(BOOL)highlighted{}



@end
