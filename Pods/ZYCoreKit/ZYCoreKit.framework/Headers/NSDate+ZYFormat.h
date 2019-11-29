

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, DateFormatType) {
    DateFormatTypeTimeline,
    DateFormatTypeTimePoint,
    DateFormatTypeTimeFull,
    DateFormatTypeDate,
};

@interface NSDate(ZYFormat)
/**
 时间转字符串
 
 @param dateFormat 类型 例如：yyyy-MM-dd
 @return 字符串
 */
- (NSString *)stringWithDateFormat:(NSString *)dateFormat;

- (NSString *)stringForType:(DateFormatType)formatType;

+ (NSString *)stringForTimeline:(NSDate *)date;
+ (NSString *)stringeForTimePoint:(NSDate *)date;


+ (NSString *)dateString:(NSDate *)date; //@"yyyy-MM-dd"
+ (NSString *)hourString:(NSDate *)date; //@"HH:mm"
+ (NSString *)fullString:(NSDate *)date; //@"yyyy-MM-dd HH:mm"

+ (NSString *)timeStampFromDateStr:(NSString *)timeStr FormatStr:(NSString *)format;  //通过字符串返回时间戳
+ (NSDate *)dateFromTimeStamp:(NSString *)timeStamp; //通过时间戳返回date
- (NSString *)timeStamp;

+ (NSString *)stringWithTimeStamp:(NSTimeInterval)timeStamp formatStr:(NSString *)format;

/**
 *  通过日期字符串返回NSDate对象
 *  @param dateString 日期字符串，例如：2015-10-21
 *  @param formate    格式字符串，例如：yyyy-MM-dd
 *
 *  @return NSDate
 */
+ (NSDate *)dateFromString:(NSString *)dateString formate:(NSString *)formate;


/**
 *  将秒数转为指定格式的字符串
 */
+(NSString *)formatTimeWithTimeStamp:(NSTimeInterval)time;
@end
