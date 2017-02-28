//
//  KZHVideoFunctions.m
//  环信Demo
//
//  Created by 邝子涵 on 2017/2/27.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

#import "KZHVideoFunctions.h"

@implementation KZHVideoFunctions
// 获取plist文件
+ (NSDictionary *)getUrlInfo {
    NSString *MD5PlistPath = [[NSBundle mainBundle] pathForResource:@"KZHLoginVideo-info" ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:MD5PlistPath];
    return dict;
}

+ (NSString *)getVideoUrl {
    NSString *videoUrl = [[KZHVideoFunctions getUrlInfo] objectForKey:@"Url"];
    return videoUrl;
}

+ (NSString *)getVideoType {
    NSString *Type = [[KZHVideoFunctions getUrlInfo] objectForKey:@"Type"];
    return Type;
}

+ (BOOL)getLoopMode {
    BOOL ModeBool = [[[KZHVideoFunctions getUrlInfo] objectForKey:@"Mode Loop"] boolValue];
    return ModeBool;
}
@end
