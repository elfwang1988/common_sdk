//
//  NSDictionary+EHDisposeData.m
//  emoHome
//
//  Created by cocloud_wy on 16/12/16.
//  Copyright © 2016年 ElfWang. All rights reserved.
//

#import "NSDictionary+EHDisposeData.h"

@implementation NSDictionary (EHDisposeData)

- (NSString* __nullable)stringForKey:(NSString* __nullable)key
{
    return [self stringForKey:key replace:@""];
}

- (NSString* __nullable)stringForKey:(NSString* __nullable)key replace:(NSString* __nullable)replace
{
    return (NSString*)[self disposeData:key replace:replace];
}

- (NSArray* __nullable)arrayForKey:(NSString* __nullable)key
{
    return [self arrayForKey:key replace:@[]];
}

- (NSArray* __nullable)arrayForKey:(NSString* __nullable)key replace:(NSArray* __nullable)replace
{
    return (NSArray*)[self disposeData:key replace:replace];
}

- (NSDictionary* __nullable)dictionaryForKey:(NSString* __nullable)key
{
    return [self dictionaryForKey:key replace:@{}];
}

- (NSDictionary* __nullable)dictionaryForKey:(NSString* __nullable)key replace:(NSDictionary* __nullable)replace
{
    return (NSDictionary*)[self disposeData:key replace:replace];
}



//判断得到的数据是否是空类型
-(id)disposeData:(NSString *)key replace:(id)replace{
     id parm = [self objectForKey:key];
    if (parm != [NSNull null] && parm != nil && ![parm isKindOfClass:[NSNull class]]) {//parm 不为空
        if([replace isKindOfClass:[NSString class]]){//期望字符串类型
            if ([parm isKindOfClass:[NSNumber class]]) {//parm为数据类型
                parm = [parm stringValue];
            }else if ([parm isKindOfClass:[NSString class]]){
                parm = [NSString stringWithFormat:@"%@",parm];
            }else //其他返回空字符串
                parm = @"";
        }else if([replace isKindOfClass:[NSArray class]]){//期望数组类型
            if(![parm isKindOfClass:[NSArray class]]){//parm不为数组类型 返回空数组
                parm = [NSArray array];
            }
        }else if ([replace isKindOfClass:[NSDictionary class]]){
            if(![parm isKindOfClass:[NSDictionary class]]){//parm不为数组类型 返回空数组
                parm = [NSDictionary dictionary];
            }
        }
        return parm;
    }else{//parm 为空 返回期望类型
        return replace;
    }
}


- (NSString *)smartDeviceStringForKey:(NSString *)key{
    return [self stringForKey:key replace:@""];
}

@end
