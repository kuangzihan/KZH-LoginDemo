//
//  KZHLTView.m
//  环信Demo
//
//  Created by 邝子涵 on 2017/2/24.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

#import "KZHLTView.h"

@interface KZHLTView()

@property (nonatomic, weak) UIView *imgBackView;


@property (nonatomic, weak) UIView *textFieldBackView;

@end


@implementation KZHLTView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
        
        [self setNotification];
    }
    return self;
}

// 创建UI
- (void)setupUI {
    UIView *imgBackView = [[UIView alloc] init];
    imgBackView.backgroundColor = RGBA(20, 20, 20, 0.4);
    [self addSubview:imgBackView];
    self.imgBackView = imgBackView;
    [imgBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(KZHLoginTextFHeight);
        make.height.mas_equalTo(KZHLoginTextFHeight);
        make.top.left.mas_equalTo(self).offset(0);
    }];
    
    UIImageView *myImg = [[UIImageView alloc] init];
    [imgBackView addSubview:myImg];
    self.myImg = myImg;
    [myImg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(imgBackView).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
    }];
    
    
    
    UIView *textFieldBackView = [[UIView alloc] init];
    textFieldBackView.backgroundColor = RGBA(50, 50, 50, 0.4);
    [self addSubview:textFieldBackView];
    self.textFieldBackView = textFieldBackView;
    [textFieldBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(KZHLoginTextFHeight);
        make.top.mas_equalTo(self).offset(0);
        make.left.mas_equalTo(imgBackView.mas_right).offset(0);
        make.right.mas_equalTo(self.mas_right).offset(0);
    }];
    
    
    UITextField *myTextField = [[UITextField alloc] init];
    myTextField.textColor = [UIColor whiteColor];
    myTextField.font = KZHFONT_14;
    // 光标颜色
    myTextField.tintColor = [UIColor whiteColor];
    // 设置clearButton
    myTextField.clearsOnInsertion = YES;
    myTextField.clearButtonMode = UITextFieldViewModeAlways;
    [textFieldBackView addSubview:myTextField];
    self.myTextField = myTextField;
    
    [myTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(textFieldBackView).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
    }];
    
}

#pragma mark - corners
- (void)setImgCorners:(UIRectCorner)imgCorners{
    if (_imgCorners != imgCorners) {
        _imgCorners = imgCorners;
    }
    
    self.imgBackView.layer.mask = [KZHMaskLayer changeMaskLayerWithView:self.imgBackView withRect:CGRectMake(0, 0, KZHLoginTextFHeight, KZHLoginTextFHeight) with:CGSizeMake(4, 4) withCorners:_imgCorners];
}

- (void)setTextFCorners:(UIRectCorner)textFCorners{
    if (_textFCorners != textFCorners) {
        _textFCorners = textFCorners;
    }
    self.textFieldBackView.layer.mask = [KZHMaskLayer changeMaskLayerWithView:self.textFieldBackView withRect:CGRectMake(0, 0, SCREEN_WIDTH - KZHLoginTFX*2 - KZHLoginTextFHeight, KZHLoginTextFHeight) with:CGSizeMake(4, 4) withCorners:_textFCorners];
}

#pragma mark - register keyboard Notification
- (void)setNotification {
    // 键盘将要弹出
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldTextDidChange:) name:UIKeyboardWillShowNotification object:nil];
    // 键盘将要回弹
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
}

- (void)textFieldTextDidChange:(NSNotification *)notification {
    NSDictionary *dataDic = notification.userInfo;
    NSTimeInterval time = [dataDic[UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    
    if ([self.delegate respondsToSelector:@selector(keyboardWillShowDelegate:withDuration:)]) {
        [self.delegate keyboardWillShowDelegate:self withDuration:time];
    }
}

- (void)keyboardWillHide:(NSNotification *)notification {
    NSDictionary *dataDic = notification.userInfo;
    NSTimeInterval time = [dataDic[UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    
    if ([self.delegate respondsToSelector:@selector(keyboardWillHideDelegate:withDuration:)]) {
        [self.delegate keyboardWillHideDelegate:self withDuration:time];
    }
}

#pragma mark - dealloc
- (void)dealloc {
    NSLog(@"LTView 已释放");
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}

@end
