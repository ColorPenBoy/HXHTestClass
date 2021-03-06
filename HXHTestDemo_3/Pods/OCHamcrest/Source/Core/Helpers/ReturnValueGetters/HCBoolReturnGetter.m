//  OCHamcrest by Jon Reid, http://qualitycoding.org/about/
//  Copyright 2017 hamcrest.org. See LICENSE.txt

#import "HCBoolReturnGetter.h"


@implementation HCBoolReturnGetter

- (instancetype)initWithSuccessor:(nullable HCReturnValueGetter *)successor
{
    self = [super initWithType:@encode(BOOL) successor:successor];
    return self;
}

- (id)returnValueFromInvocation:(NSInvocation *)invocation
{
    BOOL value;
    [invocation getReturnValue:&value];
    return @(value);
}

@end
