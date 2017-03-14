//
//  CounterModelTest.m
//  HXHTestDemo_3
//
//  Created by 张强 on 2017/3/14.
//  Copyright © 2017年 ColorPen. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CounterModel.h"

#import <OCHamcrest/OCHamcrest.h>
#import <OCMockito/OCMockito.h>

@interface CounterModelTest : XCTestCase
{
    CounterModel * model;
    NSUserDefaults * mockDefaults;
}

@end

@implementation CounterModelTest

- (void)setUp {
    [super setUp];

    mockDefaults = mock([NSUserDefaults class]);
    model = [[CounterModel alloc] initWithUserDefault:mockDefaults];
    
}

- (void)tearDown {
    model = nil;
    [super tearDown];
}

- (void)testInitShouldNotReturnNil {
    CounterModel * model = [[CounterModel alloc] initWithUserDefault:[NSUserDefaults standardUserDefaults]];
    assertThat(model, instanceOf([CounterModel class]));
}

/** 原来储存的值为空，需要返回0 */
- (void)testGetCountInDefaultsWithNilShouldReturnZero {

}

/** 原来储存的值为NSNumber类型的3，需要返回NSInteger类型的3 */
- (void)testGetCountInDefaultsWithNumberThreeShouldReturnintegerThree {

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
