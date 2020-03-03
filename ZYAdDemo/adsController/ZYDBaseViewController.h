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
@property (nonatomic, strong) UITextField *levelTextField;
@property (nonatomic, strong) UIButton *showBu;
@property (nonatomic, strong) UIButton *loadBu;
//- (void)showHudLoadAd;
- (void)showHudLoadSuccess;
- (void)showHudLoadFailed;
- (void)showBuEnabled:(BOOL)enable;
- (void)loadBuEnabled:(BOOL)enable;
- (void)loadAd:(UIButton *)button;
- (void)showAd:(UIButton *)button;
@end

NS_ASSUME_NONNULL_END
