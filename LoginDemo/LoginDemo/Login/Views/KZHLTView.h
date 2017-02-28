//
//  KZHLTView.h
//  环信Demo
//
//  Created by 邝子涵 on 2017/2/24.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

#import <UIKit/UIKit.h>
@class KZHLTView;

@protocol KZHLTViewDelegate <NSObject>

- (void)keyboardWillShowDelegate:(KZHLTView *)LTView withDuration:(NSTimeInterval)duration;

- (void)keyboardWillHideDelegate:(KZHLTView *)LTView withDuration:(NSTimeInterval)duration;

@end



@interface KZHLTView : UIView

@property (nonatomic, weak) id<KZHLTViewDelegate> delegate;


// 标题label
@property (nonatomic, weak) UIImageView *myImg;
// 文本框
@property (nonatomic, weak) UITextField *myTextField;




@property (nonatomic, assign) UIRectCorner imgCorners;

@property (nonatomic, assign) UIRectCorner textFCorners;

@end
