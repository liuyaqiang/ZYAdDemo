//
//  ZYDemoMacros.h
//  ZYAdDemo
//
//  Created by liuyaqiang on 2019/4/29.
//  Copyright © 2019 zhangyu. All rights reserved.
//

#ifndef ZYDMacros_h
#define ZYDMacros_h

#define ZYD_Log(fmt, ...) NSLog((@"[ZYADDemo] %s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);

//
#define ZYD_APPCHANNEL @"50002" //测试默认渠道
//#define ZYD_APPCHANNEL @"50009"

#define ZYD_APPKEY  @"71A279EA6C93F02A076D1A43E4A5E541" //demo



#endif /* BUDMacros_h */
