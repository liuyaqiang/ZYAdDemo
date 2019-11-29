//
//  NSError+ZYError.h
//  ZYAdSDK
//
//  Created by liuyaqiang on 2019/5/6.
//  Copyright © 2019 zhangyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#define L_error_code (88888)
#define L_error_domain @"ZYAdSDK"

NS_ASSUME_NONNULL_BEGIN

@interface NSError (ZYError)
+ (NSError *)error:(NSString *)errorMessage;
+ (NSError *)error:(NSString *)errorMessage code:(NSInteger)code;
- (NSString *)errorMessage;

- (BOOL)isNetworkError;

@end

NS_ASSUME_NONNULL_END
