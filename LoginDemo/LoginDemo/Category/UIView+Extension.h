//
//  UIView+Extension.h
//  环信Demo
//
//  Created by 邝子涵 on 2017/2/27.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

- (void)borderViewStyleWithCornerRadius:(CGFloat)cornerRadius withColor:(UIColor *)color;

- (void)hiddenWith:(BOOL)ishidden withDuration:(CGFloat)duration;

@end
