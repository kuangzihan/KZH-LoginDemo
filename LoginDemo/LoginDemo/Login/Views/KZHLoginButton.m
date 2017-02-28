//
//  KZHLoginButton.m
//  环信Demo
//
//  Created by 邝子涵 on 2017/2/27.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

#import "KZHLoginButton.h"

@implementation KZHLoginButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.titleLabel.font = KZHFONT_16;
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self borderViewStyleWithCornerRadius:3 withColor:[UIColor clearColor]];
        
        
        
        [self setupUI];
    }
    return self;
}


- (void)setupUI {
    CGFloat btnW = 10;
    CGFloat btnX = 15;
    
    UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    spinner.frame = CGRectMake(btnX, (KZHLoginBTMH-btnW)/2, btnW, btnW);
    CGAffineTransform transform = CGAffineTransformMakeScale(.6f, .6f);
    spinner.transform = transform;
    [spinner startAnimating];
    spinner.alpha = 0;
    [self addSubview:spinner];
    self.spinner = spinner;
}


@end
