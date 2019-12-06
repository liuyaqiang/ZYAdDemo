//
//  ZYRequestManager.h
//  PluginSDK
//
//  Created by liuyaqiang on 2017/5/26.
//  Copyright © 2017年 yifan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYAFNetworking.h"
@interface ZYRequestManager : ZYAFHTTPSessionManager
+ (instancetype)requestManager;
+ (instancetype)jsonRequestManager;
- (NSURLSessionDataTask *)POST:(NSString *)URLString parameters:(NSDictionary *)parameters complete:(void (^)(NSURLSessionDataTask *task, id responseObject, NSError *error))complete;
- (NSURLSessionDataTask *)GET:(NSString *)URLString parameters:(NSDictionary *)parameters complete:(void (^)(NSURLSessionDataTask *task, id responseObject, NSError *error))complete;
@end
