//
//  ZYDSplashViewController.m
//  ZYAdDemo
//
//  Created by liuyaqiang on 2019/4/24.
//  Copyright © 2019 zhangyu. All rights reserved.
//

#import "ZYDSplashViewController.h"

@interface ZYDSplashViewController ()<ZYAdSplashDelegate>
@property (nonatomic, strong) ZYAdSplash *splash;
@end

@implementation ZYDSplashViewController
- (void)showAd:(UIButton *)button{
    [self showHudLoadAd];

    ZYAdSplash *splash = [ZYAdSplash splashWithRootViewController:self.navigationController];
    splash.delegate = self;
    [splash loadAndShow];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - ZYAdSplashDelegate
- (void)splashDidLoad:(ZYAdSplash *)ad
{
    [self hideHudLoadSuccess];

}
- (void)splashDidFail:(ZYAdSplash *)ad withError:(NSError *)error
{
    [self hideHudLoadFailed];

}
- (void)splashDidShow:(ZYAdSplash *)ad
{

}
- (void)splashDidClick:(ZYAdSplash *)ad
{

}
- (void)splashDidClose:(ZYAdSplash *)ad
{

}
@end
