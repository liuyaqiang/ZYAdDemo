//
//  AppDelegate.m
//  ZYAdDemo
//
//  Created by liuyaqiang on 2019/4/23.
//  Copyright © 2019 zhangyu. All rights reserved.
//

#import "AppDelegate.h"
#import "ZYDMacros.h"

#import <ZYAdSDK/ZYAds.h>
#import <ZYAdSDK/ZYAdSplash.h>
#import <ZYAdSDK/ZYAdSDK.h>


@interface AppDelegate ()
@property (nonatomic, strong) ZYAdSplash *splash;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //test----------------------
    //注意：如果正式环境请注销测试代码
    //广告日志输出
    [ZYAds sharedInstance].logEnable = YES;
    //测试环境，请求测试后台数据
    [ZYAds sharedInstance].testDevices = @[@"2eb703f31e487d237bb82d712970edf0"];

    
    //基本配置--------------------
    //渠道设置
    [ZYAds sharedInstance].appChannel = ZYD_APPCHANNEL;
    //地区设置，注意：请按发布地区选择海外或国内
//    [ZYAds sharedInstance].publishZone = ZYPublishZoneForeign;
    [ZYAds sharedInstance].publishZone = ZYPublishZoneDomestic;

    //友盟初始化--------------------
    [[ZYAds sharedInstance] configurateUMengWithAppkey:@"5e69f092570df38e4200008f" launchOptions:launchOptions];
    //广告SDK初始化-----------------
    [[ZYAds sharedInstance] configurateWithAppkey:ZYD_APPKEY completionHandler:^(BOOL success, NSError * _Nullable error) {

    }];

    //开屏广告
    self.splash = [ZYAdSplash splashWithRootViewController:self.window.rootViewController];
    [self.splash loadAndShow];
    
    return YES;
}
@end
