//
//  ViewController.m
//  ZYAdDemo
//
//  Created by liuyaqiang on 2019/4/23.
//  Copyright © 2019 zhangyu. All rights reserved.
//

#import "ViewController.h"
#import "ZYDSettingViewController.h"

#import "ZYDAdsListTableViewCell.h"
#import "ZYDBannerViewController.h"
#import "ZYDNativeViewController.h"
#import "ZYDInterstitialViewController.h"
#import "ZYDRewardedVideoViewController.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.translucent = NO;
    
    self.title = @"ZYAdSDK Demo";
    
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    [button setTitle:@"setting" forState:UIControlStateNormal];
//    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    button.titleLabel.font = [UIFont systemFontOfSize:17.];
//    [button addTarget:self action:@selector(rightButtonClick) forControlEvents:UIControlEventTouchUpInside];
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
}
- (void)viewDidAppear:(BOOL)animated
{

}
- (void)rightButtonClick
{
    ZYDSettingViewController *settingCtl = [[ZYDSettingViewController alloc] initWithNibName:@"ZYDSettingViewController" bundle:nil];
    [self.navigationController pushViewController:settingCtl animated:YES];
}
#pragma mark - UITableViewDataSource/UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    NSArray *rowArr = self.dataArray[section];
    return rowArr.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    ZYDAdsListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"adsListCell"];
    NSArray *rowArr = self.dataArray[indexPath.section];
    cell.label.text = rowArr[indexPath.row];
    cell.imgView.image = [UIImage imageNamed:@"ic_ads"];
   
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSArray *rowArr = self.dataArray[indexPath.section];
    NSString *title = rowArr[indexPath.row];
    NSString *classStr = [NSString stringWithFormat:@"ZYD%@ViewController",title];
    UIViewController *ctrl = [[NSClassFromString(classStr) alloc] initWithNibName:classStr bundle:nil];
    ctrl.title = title;
    [self.navigationController pushViewController:ctrl animated:YES];
}

#pragma mark - UITableViewDelegate

- (NSArray *)dataArray
{
    if (!_dataArray) {
        _dataArray= @[@[@"Banner"],@[@"Native"],@[@"Interstitial"],@[@"FullscreenVideo"],@[@"RewardedVideo"],@[@"Splash"]];
    }
    return _dataArray;
}
@end
