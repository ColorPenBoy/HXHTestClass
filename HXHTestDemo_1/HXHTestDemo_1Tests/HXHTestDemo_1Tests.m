//
//  HXHTestDemo_1Tests.m
//  HXHTestDemo_1Tests
//
//  Created by 张强 on 2016/11/30.
//  Copyright © 2016年 ColorPen. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface HXHTestDemo_1Tests : XCTestCase

@end

@implementation HXHTestDemo_1Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    XCTAssertFalse(NO, @"Hello OCUnit");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
