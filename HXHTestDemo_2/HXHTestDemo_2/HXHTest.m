//
//  HXHTest.m
//  HXHTestDemo_2
//
//  Created by 张强 on 2017/3/5.
//  Copyright © 2017年 ColorPen. All rights reserved.
//

#import "HXHTest.h"

@implementation HXHTest

- (void)testString {
    NSString * string1 = @"a string";
    GHTestLog(@"I can log to the GHUnit test console: %@", string1);
    NSString * string2 = @"a string";
    GHAssertEqualObjects(string1, string2, @"A custom error message. string1 should be equal to: %@.",string2);
}

@end
