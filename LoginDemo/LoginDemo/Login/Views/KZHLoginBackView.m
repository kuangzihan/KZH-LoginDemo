//
//  KZHLoginBackView.m
//  环信Demo
//
//  Created by 邝子涵 on 2017/2/27.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

#import "KZHLoginBackView.h"
#import "KZHVideoFunctions.h"



@interface KZHLoginBackView ()

@property (nonatomic, weak) UIView *backView;

@end


@implementation KZHLoginBackView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self stillPlayMusic];
        
        if ([KZHVideoFunctions getUrlInfo] != nil) {
            self.isLoop = [KZHVideoFunctions getLoopMode];
            
            [self preparePlayback];
        }
    }
    return self;
}

#pragma mark - allow background music still play
- (void)stillPlayMusic {
    self.avaudioSession = [AVAudioSession sharedInstance];
    NSError *error = nil;
    [self.avaudioSession setCategory:AVAudioSessionCategoryAmbient error:&error];
    
}

- (void)preparePlayback {
    if (self.player == nil) {
        NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:[KZHVideoFunctions getVideoUrl] ofType:[KZHVideoFunctions getVideoType]]];
        self.player = [[MPMoviePlayerController alloc] initWithContentURL:url];
        [self.player setControlStyle:MPMovieControlStyleNone];
        [self.player prepareToPlay];
        [self.player.view setFrame:self.frame];
        [self addSubview:self.player.view];
        [self sendSubviewToBack:self.player.view];
        self.player.scalingMode = MPMovieScalingModeAspectFill;
        
        
        // 毛玻璃效果
        UIView *backView = [[UIView alloc] initWithFrame:self.frame];
        UIBlurEffect * blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
        UIVisualEffectView * effe = [[UIVisualEffectView alloc]initWithEffect:blur];
        effe.alpha = 0.9;
        effe.frame = self.frame;
        [effe addSubview:backView];
        [self addSubview:effe];
    }
}


@end
