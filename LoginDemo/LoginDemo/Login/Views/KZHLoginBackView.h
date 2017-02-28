//
//  KZHLoginBackView.h
//  环信Demo
//
//  Created by 邝子涵 on 2017/2/27.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KZHLoginBackView : UIView

@property (nonatomic,strong) MPMoviePlayerController *player;

@property (nonatomic,strong) AVAudioSession *avaudioSession;

@property (nonatomic,assign) BOOL isLoop;

@end
