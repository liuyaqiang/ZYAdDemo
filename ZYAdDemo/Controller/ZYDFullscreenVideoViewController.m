//
//  ZYDFullscreenVideoViewController.m
//  ZYAdDemo
//
//  Created by liuyaqiang on 2019/5/21.
//  Copyright © 2019 zhangyu. All rights reserved.
//

#import "ZYDFullscreenVideoViewController.h"

@interface ZYDFullscreenVideoViewController ()<ZYAdFullscreenVideoDelegate>
@property (nonatomic, strong) ZYAdFullscreenVideo *video;
@end

@implementation ZYDFullscreenVideoViewController
- (void)showAd:(UIButton *)button{
    if (self.video.isReady) {
        [self.video showFromRootViewController:self];
    }else{
        [self.video load];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showHudLoadAd];
    
    self.video = [[ZYAdFullscreenVideo alloc] init];
    self.video.delegate = self;
    [self.video load];
}
#pragma mark - ZYAdFullscreenVideoDelegate
- (void)fullscreenVideoDidLoad:(ZYAdRewardedVideo *)ad
{
    [self hideHudLoadSuccess];
}
- (void)fullscreenVideoDidFail:(ZYAdRewardedVideo *)ad withError:(NSError *)error
{
    [self hideHudLoadFailed];
    
}
- (void)fullscreenVideoDidShow:(ZYAdRewardedVideo *)ad
{
    
}
- (void)fullscreenVideoDidClick:(ZYAdRewardedVideo *)ad
{
    
}
- (void)fullscreenVideoDidClose:(ZYAdRewardedVideo *)ad
{
    [self showHudLoadAd];
    
    [self.video load];
    
}

@end
