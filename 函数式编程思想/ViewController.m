//
//  ViewController.m
//  函数式编程思想
//
//  Created by Emo_Lin on 15/8/28.
//  Copyright © 2015年 linweida_emo. All rights reserved.
//

#import "ViewController.h"
#import "CalculateManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CalculateManager *mgr = [[CalculateManager alloc] init];
    
    NSInteger finalResult = [[mgr calculate:^(NSInteger finalResult){
        // 存放所有的计算代码
        finalResult += 8;
        
        finalResult *= 10;
        
        return finalResult;
        
    }] result];
    
    NSLog(@"%ld",finalResult);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
