//
//  RuntimeAssist.h
//  RuntimeAssist
//
//  Created by xiushan.fan on 3/3/17.
//  Copyright © 2017年 xiushan.fan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RuntimeAssist : NSObject

+ (NSArray *)ivarsOfClass:(Class)class;

+ (NSArray *)propertiesOfClass:(Class)class;

+ (NSArray *)methodsOfClass:(Class)class;
//获取私有对象的成员变量值,并用数组保存.
+ (NSArray *)ivarVariableOfObject:(NSObject *)object;

@end
