//
//  NEUWebRequestTool.m
//  RuidaoOnlineDemo
//
//  Created by hegf on 15/6/10.
//  Copyright (c) 2015年 hegf. All rights reserved.
//

#import "NEUWebRequestTool.h"
#import "AFAppDotNetAPIClient.h"

static NEUWebRequestTool* tool;

@implementation NEUWebRequestTool
+(instancetype)sharedWebRequestTool{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        tool = [[NEUWebRequestTool alloc]init];
    });
    return tool;
}

+(instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        tool = [super allocWithZone:zone];
    });
    return tool;
}
/*
 username  用户名
 pwd       密码
 imgcode    验证码
 */
-(void)Neu_logonWithName:(NSString*)username Password:(NSString*)password ImageCode:(NSString*)imageCode{
    
    NSDictionary* parameters = @{
                                 @"username": username,
                                 @"pwd": password,
                                 @"imgcode": imageCode,
                                 };

    [[AFAppDotNetAPIClient sharedClient]apiPost:NEUAPI_Login Parameters:parameters Result:^(id result_data, ApiStatus result_status, NSString *api) {
        if (result_status == ApiStatusSuccess) {

        }else{
            if (result_status != ApiStatusNetworkNotReachable) {
 
            }
        };
        
    }];
}

-(void)Neu_logout{
    
    [[AFAppDotNetAPIClient sharedClient]apiPost:NEUAPI_Logout Parameters:nil Result:^(id result_data, ApiStatus result_status, NSString *api) {
        if (result_status == ApiStatusSuccess) {
            
        }else{
            if (result_status != ApiStatusNetworkNotReachable) {
                
            }
        };
        
    }];
}

@end
