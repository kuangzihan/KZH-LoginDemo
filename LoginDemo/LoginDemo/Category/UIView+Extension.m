//
//  UIView+Extension.m
//  环信Demo
//
//  Created by 邝子涵 on 2017/2/27.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)


- (void)borderViewStyleWithCornerRadius:(CGFloat)cornerRadius withColor:(UIColor *)color {
    self.layer.shadowColor = color.CGColor;
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = cornerRadius;
}

- (void)hiddenWith:(BOOL)ishidden withDuration:(CGFloat)duration{
    CATransition *animation = [CATransition animation];
    animation.type = kCATransitionFade;
    animation.duration = duration;
    [self.layer addAnimation:animation forKey:nil];
    self.hidden = ishidden;
}


@end
