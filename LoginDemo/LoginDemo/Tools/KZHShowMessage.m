//
//  KZHShowMessage.m
//  环信Demo
//
//  Created by 邝子涵 on 2017/2/27.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

#import "KZHShowMessage.h"

@implementation KZHShowMessage

+(void)showMessage:(NSString *)message
{
    UIWindow * window = [UIApplication sharedApplication].keyWindow;
    UIView *showview =  [[UIView alloc]init];
    showview.backgroundColor = [UIColor blackColor];
    showview.frame = CGRectMake(1, 1, 1, 1);
    showview.alpha = 1.0f;
    showview.layer.cornerRadius = 5.0f;
    showview.layer.masksToBounds = YES;
    [window addSubview:showview];
    
    UILabel *label = [[UILabel alloc] init];
    
    CGSize LabelSize;
    if ([message isKindOfClass:[NSString class]]) {
        //        LabelSize = [message sizeWithFont:TITLE_FONT constrainedToSize:CGSizeMake(290, 9000)];
        CGSize size = CGSizeMake(290, 9000); //设置一个行高上限
        NSDictionary *attribute = @{NSFontAttributeName: KZHFONT_14};
        LabelSize = [message boundingRectWithSize:size options: NSStringDrawingUsesLineFragmentOrigin attributes:attribute context:nil].size;
        label.frame = CGRectMake(10, 5, LabelSize.width, LabelSize.height);
        label.text = message;
        label.textColor = [UIColor whiteColor];
        label.textAlignment = 1;
        label.backgroundColor = [UIColor clearColor];
        label.font = [UIFont boldSystemFontOfSize:12];
        label.numberOfLines = 0;
        [showview addSubview:label];
        showview.frame = CGRectMake((SCREEN_WIDTH - LabelSize.width - 20)/2, SCREEN_HEIGHT*.5, LabelSize.width+20, LabelSize.height+10);
        [UIView animateWithDuration:3.0f animations:^{
            showview.alpha = 0.0f;
        } completion:^(BOOL finished) {
            [showview removeFromSuperview];
        }];
    }
    else{
        
    }
}

@end
