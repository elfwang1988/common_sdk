//
//  NSDictionary+EHDisposeData.h
//  emoHome
//
//  Created by cocloud_wy on 16/12/16.
//  Copyright © 2016年 ElfWang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (EHDisposeData)

/**
 *  请求字符串数据为空或不合理的处理方法
 *  @param key     键值
 *  返回字符串类型   value为NULL 返回空字符串
 */
- (NSString* __nullable)stringForKey:(NSString* __nullable)key;
/**
 *  请求字符串数据为空或不合理的处理方法
 *  @param key     键值
 *  @param replace value为NULL时的替换数据
 *  返回字符串类型    value为NULL 返回空字符串
 */
- (NSString* __nullable)stringForKey:(NSString* __nullable)key replace:(NSString* __nullable)replace;
/**
 *  请求数组数据为空或不合理的处理方法
 *  @param key     键值
 *  返回数组类型     value为NULL 返回空数组
 */
- (NSArray* __nullable)arrayForKey:(NSString* __nullable)key;
/**
 *  请求数组数据为空或不合理的处理方法
 *  @param key     键值
 *  @param replace value为NULL时的替换数据
 *  返回数组类型     value为NULL 返回数组
 */
- (NSArray* __nullable)arrayForKey:(NSString* __nullable)key replace:(NSArray* __nullable)replace;


/**
 *  请求字典数据为空或不合理的处理方法
 *  @param key     键值
 *  返回数组类型     value为NULL 返回字典
 */
- (NSDictionary* __nullable)dictionaryForKey:(NSString* __nullable)key;
/**
 *  请求字典数据为空或不合理的处理方法
 *  @param key     键值
 *  @param replace value为NULL时的替换数据
 *  返回数组类型     value为NULL 返回字典
 */
- (NSDictionary* __nullable)dictionaryForKey:(NSString* __nullable)key replace:(NSDictionary* __nullable)replace;


/**
 *  请求字符串数据为空或不合理的处理方法(智能家居专用)
 *  @param key     键值
 *  返回字符串类型   value为NULL 返回空字符串
 */
- (NSString* __nullable)smartDeviceStringForKey:(NSString* __nullable)key;

/*
    NSDictionary* dic;
    [dic stringForKey:@"str"];
    [dic stringForKey:@"str" replace:@"--"];
    [dic arrayForKey:@"arr"];
    [dic arrayForKey:@"arr" replace:@[]];
    [dic dictionaryForKey@"dic"];
    [dic dictionaryForKey@"dic" replace:@{}];
 */
-(id __nullable)disposeData:(NSString *__nullable)key replace:(id __nullable)replace;
@end
