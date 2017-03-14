//
//  CounterModel.h
//  HXHTestDemo_3
//
//  Created by 张强 on 2017/3/14.
//  Copyright © 2017年 ColorPen. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString * const CounterModelChanged;

@interface CounterModel : NSObject

@property (nonatomic, assign) NSInteger count;

- (id)initWithUserDefault:(NSUserDefaults *)defaults;

- (void)increment;

- (void)decrement;

- (NSInteger)getCountInDefaults;

@end
