//
//  UITextField+Extension.m
//  环信Demo
//
//  Created by 邝子涵 on 2017/2/27.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

#import "UITextField+Extension.h"

@implementation UITextField (Extension)





// placeholder
- (void)setPlaceholderWithString:(NSString *)placeholder withPlaceholderColor:(UIColor *)color {
    if (placeholder.length != 0) {
        NSAttributedString *str = [[NSAttributedString alloc] initWithString:placeholder attributes:@{NSForegroundColorAttributeName:color}];
        self.attributedPlaceholder = str;
    }
}


@end
