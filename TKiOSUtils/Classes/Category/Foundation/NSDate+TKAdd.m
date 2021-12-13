//
//  NSDate+TKAdd.m
//  TKCategory
//
//  Created by hello on 2021/1/4.
//  Copyright © 2021 TK. All rights reserved.
//

#import "NSDate+TKAdd.h"

@implementation NSDate (TKAdd)

+ (NSString *)tk_currentYMDHMSTime {
    NSDateFormatter *dfm = [[NSDateFormatter alloc] init];
    dfm.dateFormat = @"yyyy:mm:dd HH:mm:ss";
    return [dfm stringFromDate:[NSDate date]];
}

@end
