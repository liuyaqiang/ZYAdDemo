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
- (void)loadAd:(UIButton *)button{
    [super loadAd:button];
    
    [self.banner load];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.showBu.hidden = YES;
       
    
    ZYAdSize adSize = kZYAdSize320x50;
    self.banner = [[ZYAdBanner alloc] initWithZYSize:adSize adPoint:CGPointMake(([UIScreen mainScreen].bounds.size.width - adSize.size.width) /2.0, 0)];
    self.banner.rootViewController = self;
    self.banner.delegate = self;
    [self.banner load];
    [self.view addSubview:self.banner];
}
#pragma mark - ZYAdBannerDelegate
- (void)bannerDidLoad:(ZYAdBanner *)ad
{
    [self showHudLoadSuccess];

}
- (void)bannerDidFail:(ZYAdBanner *)ad withError:(NSError *)error
{
   
    [self showHudLoadFailed];

}
- (void)bannerDidClick:(ZYAdBanner *)ad
{

}


@end
