#import <Foundation/Foundation.h>
@interface NSDictionary (ZYSafe)

- (id)safeObjectForKey:(id)aKey;
- (id)nilObjectForKey:(id)aKey;
- (id)nilObjectForKey:(id)aKey forClass:(Class)objectClass;

- (id)objectForKey:(id)aKey withDefault:(id)defaultValue;
- (id)objectForKeyArray:(NSArray*)keyArray withDefault:(id)defaultValue;

- (NSString *)stringObjectForKey:(id)aKey;
- (NSInteger)integerForKey:(id)aKey;
- (NSInteger)integerForKey:(id)aKey withDefault:(NSInteger)defaultValue;
- (double)doubleForKey:(id)aKey;
- (double)doubleForKey:(id)aKey withDefault:(double)defaultValue;
- (NSDate *)dateObjectForKey:(id)aKey;
- (BOOL)boolForKey:(id)aKey;
- (BOOL)boolForKey:(id)aKey withDefault:(BOOL)defaultValue;
- (NSArray *)arrayObjectForKey:(id)aKey;
- (NSDictionary *)dictionaryObjectForKey:(id)aKey;

- (NSSet *)keysForObject:(id)anObject;

/**
 取Array中字段的某个属性为Key，生成Dictionary
 */
+ (NSDictionary *)dictionaryWithArray:(NSArray *)array keyPropertyName:(NSString *)keyPropertyName;

+ (NSDictionary *)dictionaryWithContentsOfData:(NSData *)data;

@end

@interface NSMutableDictionary (ZYSafe)

- (void)safeSetObject:(id)anObject forKey:(id)aKey;
//value 为nil,return
- (void)safeSetDictionary:(NSDictionary *)aObject forKey:(id)aKey;
//value 为nil,return
- (void)safeSetArray:(NSArray *)aObject forKey:(id)aKey;
//value 为nil,return
- (void)safeSetString:(id)aObject forKey:(id)aKey;

- (void)safeSetObject:(id)anObject forKeyIfNotExistYet:(id)aKey;
- (void)safeSetObject:(id)anObject forKey:(id)aKey withClass:(Class)aClass;
- (void)safeRemoveObjectForKey:(id)aKey;


//value 为nil return@{}
- (void)setDictionary:(NSDictionary *)aObject forKey:(id)aKey;
//value 为nil return@[]
- (void)setArray:(NSArray *)aObject forKey:(id)aKey;
//value 为nil return@""
- (void)setString:(id)aObject forKey:(id)aKey;
@end
