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

#import <GoogleMobileAds/GoogleMobileAds.h>

//友盟初始化
#import <UMCommon/UMConfigure.h>
//友盟推送
//#import <UMPush/UMessage.h>

#import <AppsFlyerLib/AppsFlyerTracker.h>


@interface AppDelegate ()
@property (nonatomic, strong) ZYAdSplash *splash;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //test------------------------
    //注意：如果正式环境请注销测试代码
#ifdef DEBUG
    //广告日志输出
    [ZYAds sharedInstance].logEnable = YES;
    //广告设置测试后台数据
    [ZYAds sharedInstance].isTestEnvironment = YES;
    //admob测试设备
    [ZYAds sharedInstance].admobTestDevices = @[kGADSimulatorID];
    //umeng
//    [UMConfigure setLogEnabled:YES];
    //AppsFlyer日志
//    [AppsFlyerTracker sharedTracker].isDebug= true;
#else
    
#endif
                             
    //基本配置---------------------
    //渠道设置
    [ZYAds sharedInstance].appChannel = ZYD_APPCHANNEL;
    //地区设置，注意：请按发布地区选择海外或国内
//    [ZYAds sharedInstance].publishZone = ZYPublishZoneForeign;
    [ZYAds sharedInstance].publishZone = ZYPublishZoneDomestic;

    //友盟初始化
    [[ZYAds sharedInstance] configurateUMengWithAppkey:@"5a434e92f29d981c5a000017" launchOptions:launchOptions];
    //AppsFlyer初始化
    [[ZYAds sharedInstance] configurateAppsFlyerWithAppkey:@"cHgazQf8GXxdaKCHKwScK3" appId:@"344257448"];
    //广告SDK初始化
    [[ZYAds sharedInstance] configurateWithAppkey:ZYD_APPKEY completionHandler:^(BOOL success, NSError * _Nullable error) {
        
        
    }];

    //开屏广告
    self.splash = [ZYAdSplash splashWithRootViewController:self.window.rootViewController];
    [self.splash loadAndShow];
    
    return YES;
}
//AppsFlyer
- (void)applicationDidBecomeActive:(UIApplication *)application {
    
    [[AppsFlyerTracker sharedTracker] trackAppLaunch];
}
/*
 
//UMPush集成适配 iOS < 10
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler
{
    [UMessage setAutoAlert:NO];
    if([[[UIDevice currentDevice] systemVersion]intValue] < 10){
        [UMessage didReceiveRemoteNotification:userInfo];
    }
    completionHandler(UIBackgroundFetchResultNewData);
}
 
*/
@end
