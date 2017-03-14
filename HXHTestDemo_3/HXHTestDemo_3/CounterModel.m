//
//  CounterModel.m
//  HXHTestDemo_3
//
//  Created by 张强 on 2017/3/14.
//  Copyright © 2017年 ColorPen. All rights reserved.
//

#import "CounterModel.h"

NSString * const CounterModelChanged = @"CounterModelChanged";

static NSString * const countInDefaultID = @"countInDefaultID";

@interface CounterModel ()

@property (nonatomic, strong) NSUserDefaults *defaults;

@end

@implementation CounterModel

- (id)initWithUserDefault:(NSUserDefaults *)defaults {
    self = [super init];
    if (self) {
        _defaults = defaults;
        _count = [self getCountInDefaults];
    }
    return self;
}

- (void)increment {
    _count = [self getCountInDefaults] + 1;
    [_defaults setObject:[NSNumber numberWithInteger:_count] forKey:countInDefaultID];
    [[NSNotificationCenter defaultCenter] postNotificationName:CounterModelChanged object:self];
}

- (void)decrement {
    _count = [self getCountInDefaults] - 1;
    [_defaults setObject:[NSNumber numberWithInteger:_count] forKey:countInDefaultID];
    [[NSNotificationCenter defaultCenter] postNotificationName:CounterModelChanged object:self];
}

- (NSInteger)getCountInDefaults {
    NSNumber *reminderId = [_defaults objectForKey:countInDefaultID];
    if (reminderId) {
        reminderId = reminderId;
    } else {
        reminderId = @0;
    }
    return [reminderId integerValue];
}

@end
