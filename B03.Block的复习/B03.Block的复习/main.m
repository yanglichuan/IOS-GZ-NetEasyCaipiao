//
//  main.m
//  B03.Block的复习
//
//  Created by apple on 15-1-8.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>


void test(){
    
}

int sum(int a,int b){
    return a + b;
}

int main(int argc, const char * argv[]) {
    
    //复习block
    //什么是block 就一个代码块
    //block和函数有什么区别
    // 1.函数只能在方法外面定义
    // 2.block可以定义在方法内 也可定义在方法外面
    // 3.block和函数共同点：都有返回值和参数
    
    
    //block定义
    
    //无返回值，无参数的block
    void (^testBlock)() = ^{
        NSLog(@"无返回值，无参数的block");
    };
    testBlock();
    
    //无返回值，有参数的block
    void (^test2Block)(int) = ^(int a){
        NSLog(@"你传入的是%d",a);
    };
    test2Block(2);
    
    //有返回值，有参数的block
    int (^sumBlock)(int,int) = ^(int a,int b){
        return a + b;
    };
    int result = sumBlock(2,3);
    NSLog(@"通过block的计算，结果是:%d",result);
    
    
    //有返回值，无参数
    
    //block可重定义 typedef
    typedef void (^MTestBlock)();
    // 给无返回值，无参数的block进行一自定义
    MTestBlock mTestBlock = ^(){
        NSLog(@"重定义的block");
    };
    mTestBlock();
    
    //定义一个特殊操作的block
    typedef void (^OperationBlock)();
    OperationBlock operationBlock = ^(){
        NSLog(@"正在检查的版本更新");
    };
    operationBlock();
    
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
