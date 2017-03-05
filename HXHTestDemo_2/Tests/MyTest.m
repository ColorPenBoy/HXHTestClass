//
//  MyTest.m
//
#import <GHUnit/GHUnit.h>

@interface MyTest : GHTestCase
@end

@implementation MyTest

- (void)test {
    
}

- (void)testString {
    NSString * string1 = @"a string";
    GHTestLog(@"I can log to the GHUnit test console: %@", string1);
    NSString * string2 = @"a string 1";
    GHAssertEqualObjects(string1, string2, @"A custom error message. string1 should be equal to: %@.",string2);
}

@end
