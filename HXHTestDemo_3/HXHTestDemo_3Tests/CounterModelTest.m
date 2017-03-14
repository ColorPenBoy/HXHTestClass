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
    int modelChangedCount;
    NSInteger modelChangedValue;
}

@end

static NSString * const currentID = @"currentID";

@implementation CounterModelTest

- (void)setUp {
    [super setUp];

    mockDefaults = mock([NSUserDefaults class]);
    model = [[CounterModel alloc] initWithUserDefault:mockDefaults];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(counterModelChanged:)
                                                 name:CounterModelChanged
                                               object:model];
}

- (void)tearDown {
    model = nil;
    [super tearDown];
}

- (void)counterModelChanged:(NSNotification *)notification {
    ++modelChangedCount;
    CounterModel *counter = (CounterModel *)[notification object];
    modelChangedValue = [counter count];
}

- (void)testInitShouldNotReturnNil {
    CounterModel * model = [[CounterModel alloc] initWithUserDefault:[NSUserDefaults standardUserDefaults]];
    assertThat(model, instanceOf([CounterModel class]));
}

/** 原来储存的值为空，需要返回0 */
- (void)testGetCountInDefaultsWithNilShouldReturnZero {
    [given([mockDefaults objectForKey:currentID]) willReturn:nil];
    assertThatInteger([model getCountInDefaults], equalToInteger(0));
}

/** 原来储存的值为NSNumber类型的3，需要返回NSInteger类型的3 */
- (void)testGetCountInDefaultsWithNumberThreeShouldReturnintegerThree {
    [given([mockDefaults objectForKey:currentID]) willReturn:@3];
    assertThatInteger([model getCountInDefaults], equalToInteger(3));
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
