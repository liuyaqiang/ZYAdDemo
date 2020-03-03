//
//  ZYDNativeViewController.m
//  ZYAdDemo
//
//  Created by liuyaqiang on 2019/4/24.
//  Copyright © 2019 zhangyu. All rights reserved.
//

#import "ZYDNativeViewController.h"
#import "UIImageView+WebCache.h"
@interface ZYDNativeViewController ()<ZYAdNativeDelegate>
@property (nonatomic, strong) ZYAdNative *native;
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *desLabel;
@property (weak, nonatomic) IBOutlet UIImageView *iconImgView;
@property (weak, nonatomic) IBOutlet UIImageView *coverImgView;
@property (weak, nonatomic) IBOutlet UILabel *callToActionLa;
@end

@implementation ZYDNativeViewController
- (void)loadAd:(UIButton *)button{
    [super loadAd:button];
    
    [self.native load];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.showBu.hidden = YES;

    self.native = [[ZYAdNative alloc] init];
    self.native.delegate = self;
    [self.native load];
    
}
#pragma mark - ZYAdNativeDelegate
- (void)nativeDidLoad:(ZYAdNative *)ad
{
    self.titleLabel.text = ad.adTitle;
    self.desLabel.text = ad.adDescription;
    [self.coverImgView sd_setImageWithURL:ad.imageUrl];
    [self.iconImgView sd_setImageWithURL:ad.iconUrl];
    self.callToActionLa.text = ad.callToAction;
    
    NSMutableDictionary *clickDic = [NSMutableDictionary dictionary];
    [clickDic setValue:self.titleLabel forKey:ZYAdNativeAssetTitle];
    [clickDic setValue:self.iconImgView forKey:ZYAdNativeAssetIcon];
    [clickDic setValue:self.coverImgView forKey:ZYAdNativeAssetImage];
    [clickDic setValue:self.callToActionLa forKey:ZYAdNativeAssetDescription];
    [clickDic setValue:self.desLabel forKey:ZYAdNativeAssetCallToAction];
    [self.native registerContainerView:self.containerView withClickableViews:clickDic];
    
    
    [self showHudLoadSuccess];

}
- (void)nativeDidFail:(ZYAdNative *)ad withError:(NSError *)error
{
    [self showHudLoadFailed];

}
- (void)nativeDidClick:(ZYAdNative *)ad
{
    
} 


@end
