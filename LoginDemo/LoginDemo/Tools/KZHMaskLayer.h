//
//  KZHMaskLayer.h
//  环信Demo
//
//  Created by 邝子涵 on 2017/2/27.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KZHMaskLayer : NSObject

+ (CAShapeLayer *)changeMaskLayerWithView:(UIView *)view withRect:(CGRect)rect with:(CGSize)make withCorners:(UIRectCorner)corners;

@end
