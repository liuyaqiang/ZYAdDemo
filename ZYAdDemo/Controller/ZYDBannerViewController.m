//
//  ZYDBannerViewController.m
//  ZYAdDemo
//
//  Created by liuyaqiang on 2019/4/24.
//  Copyright © 2019 zhangyu. All rights reserved.
//

#import "ZYDBannerViewController.h"

@interface ZYDBannerViewController ()<ZYAdBannerDelegate>
@property (nonatomic, strong) ZYAdBanner *banner;
@end

@implementation ZYDBannerViewController
- (void)showAd:(UIButton *)button{
    [super showAd:button];
    [self showHudLoadAd];

    [self.banner load];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self showHudLoadAd];
    
    self.banner = [[ZYAdBanner alloc] initWithZYSize:kZYAdSize320x50 adPoint:CGPointMake(([UIScreen mainScreen].bounds.size.width - kZYAdSize320x50.size.width) /2.0, 0)];
    self.banner.rootViewController = self;
    self.banner.delegate = self;
    [self.banner load];
    [self.view addSubview:self.banner];

}
#pragma mark - ZYAdBannerDelegate
- (void)bannerDidLoad:(ZYAdBanner *)ad
{
    [self hideHudLoadSuccess];

}
- (void)bannerDidFail:(ZYAdBanner *)ad withError:(NSError *)error
{
   
    [self hideHudLoadFailed];

}
- (void)bannerDidClick:(ZYAdBanner *)ad
{

}


@end
