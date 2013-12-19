//
//  NSDictionaryAsURLQueryTests.m
//  NSDictionaryAsURLQueryTests
//
//  Created by azu on 2013/12/19.
//  Copyright (c) 2013 azu. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "URLQueryBuilder.h"

@interface NSDictionaryAsURLQueryTests : XCTestCase

@end

@implementation NSDictionaryAsURLQueryTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)test_buildQueryWithDictionary {
    NSString *results = [URLQueryBuilder buildQueryWithDictionary:@{
        @"param_1" : @1,
        @"param_2" : @"string"
    }];
    XCTAssertEqualObjects(results, @"param_1=1&param_2=string");
}

- (void)test_buildQueryWithDictionary_encode {
    NSString *results = [URLQueryBuilder buildQueryWithDictionary:@{
        @"日本語" : @"大丈夫？",
        @"+" : @"&"
    }];
    XCTAssertEqualObjects(results, @"%E6%97%A5%E6%9C%AC%E8%AA%9E=%E5%A4%A7%E4%B8%88%E5%A4%AB%EF%BC%9F&%2B=%26");
}

@end
