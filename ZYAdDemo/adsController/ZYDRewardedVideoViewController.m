//
//  ZYDRewardedVideoViewController.m
//  ZYAdDemo
//
//  Created by liuyaqiang on 2019/4/24.
//  Copyright © 2019 zhangyu. All rights reserved.
//

#import "ZYDRewardedVideoViewController.h"

@interface ZYDRewardedVideoViewController ()<ZYAdRewardedVideoDelegate>
@property (nonatomic, strong) ZYAdRewardedVideo *video;
@end

@implementation ZYDRewardedVideoViewController
- (void)loadAd:(UIButton *)button{
    [super loadAd:button];
    
    [self.video load];
}
- (void)showAd:(UIButton *)button{
    [super showAd:button];
    
    if (self.video.isReady) {
        [self.video showFromRootViewController:self];
    }else{
        [self.video load];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.video = [[ZYAdRewardedVideo alloc] init];
    self.video.delegate = self;
    [self.video load];
}
#pragma mark - ZYAdRewardedVideoDelegate
- (void)rewardedVideoDidLoad:(ZYAdRewardedVideo *)ad
{
    [self showHudLoadSuccess];
}
- (void)rewardedVideoDidFail:(ZYAdRewardedVideo *)ad withError:(NSError *)error
{
    [self showHudLoadFailed];

}
- (void)rewardedVideoDidShow:(ZYAdRewardedVideo *)ad
{

}
- (void)rewardedVideoDidClick:(ZYAdRewardedVideo *)ad
{

}
- (void)rewardedVideoDidClose:(ZYAdRewardedVideo *)ad
{

}
- (void)rewardedVideoDidComplete:(ZYAdRewardedVideo *)ad
{

}
@end
