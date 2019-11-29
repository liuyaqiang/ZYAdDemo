//
//  ZYDBaseViewController.m
//  ZYAdDemo
//
//  Created by liuyaqiang on 2019/4/29.
//  Copyright © 2019 zhangyu. All rights reserved.
//

#import "ZYDBaseViewController.h"

@interface ZYDBaseViewController ()<UITextFieldDelegate>

@end

@implementation ZYDBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.levelTextField = [[UITextField alloc]initWithFrame:CGRectMake( ([UIScreen mainScreen].bounds.size.width - 70)/2, [UIScreen mainScreen].bounds.size.height - 300, 70, 30)];
    self.levelTextField.clearButtonMode = UITextFieldViewModeAlways;
    self.levelTextField.layer.borderColor= [UIColor blackColor].CGColor;
    self.levelTextField.layer.borderWidth= 1.0f;
    [self.levelTextField addTarget:self action:@selector(changedTextField:) forControlEvents:UIControlEventEditingChanged];
    self.levelTextField.placeholder = @"level";
    if ([ZYAds sharedInstance].currentLevel > 0) {
        self.levelTextField.text = [NSString stringWithFormat:@"%@",@([ZYAds sharedInstance].currentLevel)];
    }
    [self.view addSubview:self.levelTextField];
    
    
    self.loadBu = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.loadBu setTitle:@"load" forState:UIControlStateNormal];
    self.loadBu.backgroundColor = [UIColor greenColor];
    self.loadBu.frame = CGRectMake( ([UIScreen mainScreen].bounds.size.width - 70)/2, [UIScreen mainScreen].bounds.size.height - 250, 70, 30);
    [self.loadBu addTarget:self action:@selector(loadAd:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.loadBu];
    
    
    self.showBu = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.showBu setTitle:@"show" forState:UIControlStateNormal];
    self.showBu.backgroundColor = [UIColor grayColor];
    self.showBu.enabled = NO;
    self.showBu.frame = CGRectMake( ([UIScreen mainScreen].bounds.size.width - 70)/2, [UIScreen mainScreen].bounds.size.height - 200, 70, 30);
    [self.showBu addTarget:self action:@selector(showAd:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.showBu];
}

-(void)changedTextField:(id)textField
{
    if ([self.levelTextField.text integerValue] > 0) {
        [ZYAds sharedInstance].currentLevel = [self.levelTextField.text integerValue];
    }
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
    
    self.showBu.backgroundColor = [UIColor greenColor];
    self.showBu.enabled = YES;
}
- (void)hideHudLoadFailed
{
    MBProgressHUD *hud = [MBProgressHUD HUDForView:self.view];
    hud.label.text = @"加载失败";
    hud.mode = MBProgressHUDModeText;
    [hud hideAnimated:NO afterDelay:0.8];
    
    self.showBu.backgroundColor = [UIColor grayColor];
    self.showBu.enabled = NO;
}

- (void)loadAd:(UIButton *)button
{
    [self showHudLoadAd];
}
- (void)showAd:(UIButton *)button
{

}

@end
