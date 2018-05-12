//
//  Student.h
//  FRRuntimeHelper
//
//  Created by Fan's iMac  on 2018/5/12.
//  Copyright © 2018年 Fan's iMac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject {
    NSString *stuName;
}
@property (nonatomic,assign) NSInteger stuScore;

- (void)printName;

@end
