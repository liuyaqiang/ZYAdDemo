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
       
    self.video = [[ZYAdFullscreenVideo alloc] init];
    self.video.delegate = self;
    [self.video load];
}
#pragma mark - ZYAdFullscreenVideoDelegate
- (void)fullscreenVideoDidLoad:(ZYAdFullscreenVideo *)ad
{
    [self showHudLoadSuccess];
}
- (void)fullscreenVideoDidFail:(ZYAdFullscreenVideo *)ad withError:(NSError *)error
{
    [self showHudLoadFailed];
    
}
- (void)fullscreenVideoDidShow:(ZYAdFullscreenVideo *)ad
{
    
}
- (void)fullscreenVideoDidClick:(ZYAdFullscreenVideo *)ad
{
    
}
- (void)fullscreenVideoDidClose:(ZYAdFullscreenVideo *)ad
{

}
- (void)fullscreenVideoDidComplete:(ZYAdFullscreenVideo *)ad
{

}
@end
