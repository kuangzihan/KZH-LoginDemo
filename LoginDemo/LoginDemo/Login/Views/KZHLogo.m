//
//  KZHLogo.m
//  环信Demo
//
//  Created by 邝子涵 on 2017/2/27.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

#import "KZHLogo.h"


@implementation KZHLogo

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}


- (void)setupUI {
    self.text = @"LittleSure";
    self.font = [UIFont fontWithName:@"Georgia-Bold" size:30];
    self.textColor = [UIColor whiteColor];
    self.textAlignment = NSTextAlignmentCenter;
    self.alpha = 0.8;
}

@end
