//
//  main.m
//  FRRuntimeHelper
//
//  Created by Fan's iMac  on 2018/5/12.
//  Copyright © 2018年 Fan's iMac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "RuntimeAssist.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@",[RuntimeAssist ivarsOfClass:[Student class]]);
        NSLog(@"%@",[RuntimeAssist propertiesOfClass:[Student class]]);
        NSLog(@"%@",[RuntimeAssist methodsOfClass:[Student class]]);
        NSLog(@"%@",[RuntimeAssist ivarVariableOfObject:[[Student alloc] init]]);
    }
    return 0;
}
