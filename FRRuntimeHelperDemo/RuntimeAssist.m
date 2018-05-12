//
//  RuntimeAssist.m
//  RuntimeAssist
//
//  Created by xiushan.fan on 3/3/17.
//  Copyright © 2017年 xiushan.fan. All rights reserved.
//

#import <objc/runtime.h>
#import "RuntimeAssist.h"

@implementation RuntimeAssist


+ (NSArray *)ivarsOfClass:(Class)class {
    unsigned int ivarsOutCount = 0;
    Ivar *ivars = class_copyIvarList(class, &ivarsOutCount);
    NSMutableArray *ivarArray = [NSMutableArray arrayWithCapacity:0];
    for (int i = 0; i < ivarsOutCount; i++) {
        Ivar ivar = ivars[i];
        const char *ivarName = ivar_getName(ivar);
        [ivarArray addObject:[NSString stringWithCString:ivarName encoding:NSUTF8StringEncoding]];
    }
    return ivarArray;
}

+ (NSArray *)propertiesOfClass:(Class)class {
    unsigned int propertyOutCount = 0;
    objc_property_t *objProT = class_copyPropertyList(class, &propertyOutCount);
    NSMutableArray *propertyNameArray = [NSMutableArray arrayWithCapacity:0];
    for (int i = 0; i < propertyOutCount; i++) {
        objc_property_t property = objProT[i];
        const char *propertyName = property_getName(property);
        [propertyNameArray addObject:[NSString stringWithCString:propertyName encoding:NSUTF8StringEncoding]];
    }
    return propertyNameArray;
}

+ (NSArray *)methodsOfClass:(Class)class {
    unsigned int methodCount= 0;
    Method *methods = class_copyMethodList(class, &methodCount);
    NSMutableArray *methodArray = [NSMutableArray arrayWithCapacity:0];
    for (int i = 0; i < methodCount; i++) {
        Method method = methods[i];
        SEL methodName = method_getName(method);
        [methodArray addObject:[NSString stringWithCString:sel_getName(methodName) encoding:NSUTF8StringEncoding]];
    }
    return methodArray;
}


+ (NSArray *)ivarVariableOfObject:(NSObject *)object {
    NSMutableArray *ivarVariables = [NSMutableArray arrayWithCapacity:0];
    unsigned int ivarsOutCount = 0;
    Ivar *ivars = class_copyIvarList(object_getClass(object), &ivarsOutCount);
    for (int i = 0; i < ivarsOutCount; i++) {
        Ivar ivar = ivars[i];
        NSString *typeStr = [NSString stringWithCString:ivar_getTypeEncoding(ivar) encoding:NSUTF8StringEncoding];
        if ([typeStr hasPrefix:@"@"]) {
            NSObject *obj = object_getIvar(object, ivar);
            if (obj) {
                [ivarVariables addObject:obj];
            }
        }
    }
    return ivarVariables;
}


@end
