//
//  ZYDBaseViewController.h
//  ZYAdDemo
//
//  Created by liuyaqiang on 2019/4/29.
//  Copyright © 2019 zhangyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZYDMacros.h"
#import "ZYDBaseViewController.h"
#import <MBProgressHUD.h>
#import <ZYAdSDK/ZYAdSDK.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZYDBaseViewController : UIViewController
- (void)showHudLoadAd;
- (void)hideHudLoadSuccess;
- (void)hideHudLoadFailed;
- (void)showAd:(UIButton *)button;
@end

NS_ASSUME_NONNULL_END
