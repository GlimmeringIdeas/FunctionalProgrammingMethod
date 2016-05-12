//
//  CaculateManager.m
//  函数式编程思想
//
//  Created by Emo_Lin on 15/8/28.
//  Copyright © 2015年 linweida_emo. All rights reserved.
//

#import "CalculateManager.h"

@implementation CalculateManager
- (instancetype)calculate:(NSInteger (^)(NSInteger))calculateBlock
{
    _result =  calculateBlock(_result);
    
    return self;
}
@end
