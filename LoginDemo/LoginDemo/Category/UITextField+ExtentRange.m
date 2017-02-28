//
//  UITextField+ExtentRange.m
//  环信Demo
//
//  Created by 邝子涵 on 2017/2/27.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

#import "UITextField+ExtentRange.h"

@implementation UITextField (ExtentRange)

- (NSRange) selectedRange {
    UITextPosition* beginning = self.beginningOfDocument;
    
    UITextRange* selectedRange = self.selectedTextRange;
    UITextPosition* selectionStart = selectedRange.start;
    UITextPosition* selectionEnd = selectedRange.end;
    
    const NSInteger location = [self offsetFromPosition:beginning toPosition:selectionStart];
    const NSInteger length = [self offsetFromPosition:selectionStart toPosition:selectionEnd];
    
    return NSMakeRange(location, length);
}

// 备注：UITextField必须为第一响应者才有效
- (void) setSelectedRange:(NSRange) range {
    UITextPosition* beginning = self.beginningOfDocument;
    
    UITextPosition* startPosition = [self positionFromPosition:beginning offset:range.location];
    UITextPosition* endPosition = [self positionFromPosition:beginning offset:range.location + range.length];
    UITextRange* selectionRange = [self textRangeFromPosition:startPosition toPosition:endPosition];
    
    [self setSelectedTextRange:selectionRange];
}


//// 修改文本展示区域，一般跟editingRectForBounds一起重写
//- (CGRect)textRectForBounds:(CGRect)bounds {
//    CGRect inset = CGRectMake(bounds.origin.x+10, bounds.origin.y, bounds.size.width-25, bounds.size.height);//更好理解些
//    return inset;
//}
//
//// 重写来编辑区域，可以改变光标起始位置，以及光标最右到什么地方，placeHolder的位置也会改变
//-(CGRect)editingRectForBounds:(CGRect)bounds {
//    CGRect inset = CGRectMake(bounds.origin.x+10, bounds.origin.y, bounds.size.width-25, bounds.size.height);//更好理解些
//    return inset;
//}

@end
