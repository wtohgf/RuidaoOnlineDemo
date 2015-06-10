//
//  NEUWebRequestTool.h
//  RuidaoOnlineDemo
//
//  Created by hegf on 15/6/10.
//  Copyright (c) 2015年 hegf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NEUWebAPI.h"

@interface NEUWebRequestTool : NSObject
+(instancetype)sharedWebRequestTool;

//登录
-(void)Neu_logonWithName:(NSString*)username Password:(NSString*)password ImageCode:(NSString*)imageCode;

//退出
-(void)Neu_logout;

@end
