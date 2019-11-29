//
//  ZYClientInfoUtils.h
//  FineBase
//
//  Created by liuyaqiang on 2017/7/18.
//  Copyright © 2017年 zhangyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"
/**
 网络类型
 */
typedef NS_ENUM(NSInteger,ZYNetworkType) {
    ZYNetworkTypeNone = 0,
    ZYNetworkTypeWifi = 1,
    ZYNetworkType2G = 2,
    ZYNetworkType3G = 3,
    ZYNetworkType4G = 4
};
@interface ZYClientInfoUtils : NSObject

#pragma mark - 语言地区
/**
 获取当前设置 地区code

 @return 地区code
 */
+ (NSString *)getLocaleCountryCode;

/**
 获取当前设置语言code

 @return 语言code
 */
+ (NSString *)getLanguageCode;


#pragma mark - 版本相关
/**
 *  得到当前项目版本
 *
 *  @return 当前版本
 */
+ (NSString *)getProjectVersion;
/**
 *  得到当前项目构建版本号
 *
 *  @return 当前构建版本
 */
+ (NSString *)getProjectBuildVersion;

/**
 获取bundleID
 
 @return bundleID
 */
+ (NSString *)getBundleID;
/**
 *  得到当前项目名称
 *
 *  @return 当前名称
 */
+ (NSString *)getDisplayName;
/**
 *  得到BundleName
 *
 *  @return 当前名称
 */
+ (NSString *)getBundleName;
#pragma mark - 手机 系统相关

/**
 *  得到当前用的什么手机，iPhone9,1
 *
 *  @return 手机类型名称
 */
+ (NSString *)getDeviceType;
/**
 *  得到当前系统版本
 *
 *  @return 版本.例如：9.3.4,以及最新的10
 */
+ (NSString *)getSystemVersion;
/**
 *  得到当前系统名称
 *
 *  @return 系统名称
 */
+ (NSString *)getSystemName;
/**
 *  得到当前设备类型 ：iPhone / iPad
 *
 *  @return iPhone / iPad
 */
+ (NSString *)getDeviceModel;
/**
 *  得到当前的手机名称，关于本机里面的名称
 *
 *  @return 手机名称
 */
+ (NSString *)getCurrentDeviceName;

/**
 获取像素

 @return 像素
 */
+ (NSString *)getDeviceScreenDPI;
/**
 *  得到构建描述
 *
 *  @return 得到内核描述信息
 */
+ (NSString *)getDarwinBuildDescription;
/**
 *  得到内核操作系统名称
 *
 *  @return 内核操作系统名称
 */
+ (NSString *)getKernelSysName;
/**
 *  获取当前设置XNU内核版本号
 *
 *  @return 返回当前XNU内核版本号
 */
+ (NSString *)getKernelVersion;

/**
 *  得到当前网络节点名称
 *
 *  @return 当前节点名称
 */
+ (NSString *)getNetWordNodeName;
/**
 *  得到当前设备的核数
 *
 *  @return 核数
 */
+ (NSInteger)getNuclearCount;
/**
 *  得到当前设备活跃的核数
 *
 *  @return 核数
 */
+ (NSInteger)getActiveNuclearCount;
/** 获取CPU数量 */
+ (NSUInteger)getCPUCount;
/** 获取磁盘总空间 */
+ (int64_t)getTotalDiskSpace;
/** 获取总内存空间 */
+ (int64_t)getTotalMemory;
#pragma mark -IDFA IDFV TID
/**
 得到广告唯一标识符 关闭传 空

 @return  唯一标识符
 */
+ (NSString *)getIDFACanNil;
/**
 得到广告唯一标识符 关闭传 00000000-0000-0000-0000-000000000000

 @return  唯一标识符
 */
+ (NSString *)getIDFA;
/**
 得到IDFV

 @return IDFV
 */
+ (NSString *)getIDFV;

#pragma mark - 运营商相关
/**
 得到当前手机所属运营商名称，如果没有则为nil
 
 @return 返回运营商名称
 */

+ (NSString *)getTelephonyNetworkOperatorName;


/**
 得到当前手机号的国家代码,如果没有则为nil
 
 @return 返回国家代码
 */
+ (NSString *)getTelephonyNetworkISOCountryCode;

/**
 得到移动国家码
 
 @return 返回移动国家码
 */
+ (NSString *)getTelephonyNetworkCountryCode;

#pragma mark - 网络相关
/**
 得到网络状态名称
 
 @return 网络状态名称
 */
+ (NSString *)getNetworkTypeStr;
/**
 得到网络状态
 
 @return 网络状态
 */
+ (ZYNetworkType)getZYNetworkType;

/** 获取ip */
/**
 获取deviceIP

 @return deviceIP
 */
+ (NSString *)getDeviceIPAddresses;

/**
 获取WIFI IP

 @return WIFI IP
 */
+ (NSString *)getIpAddressWIFI;

/**
 获取蜂窝 IP

 @return cell IP
 */
+ (NSString *)getIpAddressCell;

@end
