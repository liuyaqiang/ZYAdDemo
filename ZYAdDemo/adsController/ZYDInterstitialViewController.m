//
//  ZYDInterstitialViewController.m
//  ZYAdDemo
//
//  Created by liuyaqiang on 2019/4/24.
//  Copyright © 2019 zhangyu. All rights reserved.
//

#import "ZYDInterstitialViewController.h"

@interface ZYDInterstitialViewController ()<ZYAdInterstitialDelegate>
@property (nonatomic, strong) ZYAdInterstitial *interstitial;
@end

@implementation ZYDInterstitialViewController
- (void)loadAd:(UIButton *)button{
    [super loadAd:button];
    
    [self.interstitial load];
}

- (void)showAd:(UIButton *)button{
    [super showAd:button];
    
    if (self.interstitial.isReady) {
        [self.interstitial showFromRootViewController:self];
    }else{
        [self.interstitial load];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.interstitial = [[ZYAdInterstitial alloc] init];
    self.interstitial.delegate = self;
    [self.interstitial load];
}
#pragma mark - ZYAdInterstitialDelegate
- (void)interstitialDidLoad:(ZYAdInterstitial *)ad
{
    [self showHudLoadSuccess];

}
- (void)interstitialDidFail:(ZYAdInterstitial *)ad withError:(NSError *)error
{
    [self showHudLoadFailed];

}
- (void)interstitialDidShow:(ZYAdInterstitial *)ad
{

}
- (void)interstitialDidClick:(ZYAdInterstitial *)ad
{

}
- (void)interstitialDidClose:(ZYAdInterstitial *)ad
{

}
@end
