//
//  KZHMaskLayer.m
//  环信Demo
//
//  Created by 邝子涵 on 2017/2/27.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

#import "KZHMaskLayer.h"

@implementation KZHMaskLayer

+ (CAShapeLayer *)changeMaskLayerWithView:(UIView *)view withRect:(CGRect)rect with:(CGSize)make withCorners:(UIRectCorner)corners{
    UIBezierPath * maskPath = [UIBezierPath bezierPathWithRoundedRect:rect
                                                    byRoundingCorners:corners
                                                          cornerRadii:make];
    CAShapeLayer * maskLayer = [CAShapeLayer layer];
    maskLayer.frame  = rect;
    maskLayer.path   = maskPath.CGPath;
    return maskLayer;
}


@end
