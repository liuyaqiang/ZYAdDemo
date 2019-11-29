//
//  ZYDBaseViewController.m
//  ZYAdDemo
//
//  Created by liuyaqiang on 2019/4/29.
//  Copyright © 2019 zhangyu. All rights reserved.
//

#import "ZYDBaseViewController.h"

@interface ZYDBaseViewController ()

@end

@implementation ZYDBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIButton *bu = [UIButton buttonWithType:UIButtonTypeCustom];
    [bu setTitle:@"show" forState:UIControlStateNormal];
    bu.backgroundColor = [UIColor greenColor];
    bu.frame = CGRectMake( ([UIScreen mainScreen].bounds.size.width - 50)/2, [UIScreen mainScreen].bounds.size.height - 200, 70, 30);
    [bu addTarget:self action:@selector(showAd:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bu];
    
}
- (void)showHudLoadAd
{
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    
}
- (void)hideHudLoadSuccess
{
    MBProgressHUD *hud = [MBProgressHUD HUDForView:self.view];
    hud.label.text = @"加载成功";
    hud.mode = MBProgressHUDModeText;
    [hud hideAnimated:NO afterDelay:0.8];
}
- (void)hideHudLoadFailed
{
    MBProgressHUD *hud = [MBProgressHUD HUDForView:self.view];
    hud.label.text = @"加载失败";
    hud.mode = MBProgressHUDModeText;
    [hud hideAnimated:NO afterDelay:0.8];
}
- (void)showAd:(UIButton *)button
{

}

@end
