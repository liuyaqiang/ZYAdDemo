//
//  ZYDVideoViewController.m
//  ZYAdDemo
//
//  Created by liuyaqiang on 2019/4/24.
//  Copyright © 2019 zhangyu. All rights reserved.
//

#import "ZYDVideoViewController.h"

@interface ZYDVideoViewController ()<ZYAdVideoDelegate>
@property (nonatomic, strong) ZYAdVideo *video;
@end

@implementation ZYDVideoViewController
- (void)showAd:(UIButton *)button{
    if (self.video.isReady) {
        [self.video showFromRootViewController:self];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showHudLoadAd];

    self.video = [[ZYAdVideo alloc] init];
    self.video.delegate = self;
    [self.video load];
}
#pragma mark - ZYAdVideoDelegate
- (void)videoDidLoad:(ZYAdVideo *)ad
{
    [self hideHudLoadSuccess];
    ZYD_Log(@"videoDidLoad: %@",ad.platform);
}
- (void)videoDidFail:(ZYAdVideo *)ad withError:(NSError *)error
{
    [self hideHudLoadFailed];
    ZYD_Log(@"videoDidFail: %@  error:%@",ad.platform,error);

}
- (void)videoDidShow:(ZYAdVideo *)ad
{
    ZYD_Log(@"videoDidShow: %@",ad.platform);

}
- (void)videoDidClick:(ZYAdVideo *)ad
{
    ZYD_Log(@"videoDidClick: %@",ad.platform);

}
- (void)videoDidClose:(ZYAdVideo *)ad
{
    ZYD_Log(@"videoDidClose: %@",ad.platform);
    [self showHudLoadAd];
    
    [self.video load];
    
}
- (void)videoDidComplete:(ZYAdVideo *)ad
{
    ZYD_Log(@"videoDidComplete");

}
@end
