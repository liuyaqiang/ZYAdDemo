//
//  ZYDSettingViewController.m
//  ZYAdDemo
//
//  Created by liuyaqiang on 2019/6/10.
//  Copyright © 2019 zhangyu. All rights reserved.
//

#import "ZYDSettingViewController.h"

@interface ZYDSettingViewController ()

@end

@implementation ZYDSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"保存" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:17.];
    [button addTarget:self action:@selector(rightButtonClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    
}
- (void)rightButtonClick
{
    
}
@end
