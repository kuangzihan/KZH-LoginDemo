//
//  KZHVideoFunctions.h
//  环信Demo
//
//  Created by 邝子涵 on 2017/2/27.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KZHVideoFunctions : NSObject
+(NSDictionary *)getUrlInfo;

+(NSString *)getVideoUrl;

+(NSString *)getVideoType;

+(BOOL)getLoopMode;
@end
