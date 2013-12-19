//
// Created by azu on 2013/12/19.
//


#import "URLQueryBuilder.h"


@implementation URLQueryBuilder {

}
NSString *encodeURIComponent(NSString *string) {
    return (__bridge_transfer NSString *)CFURLCreateStringByAddingPercentEscapes(
        NULL,
        (__bridge CFStringRef)string,
        NULL,
        CFSTR("!*'();:@&=+$,/?%#[]"),
        CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));

}

+ (NSString *)buildQueryWithDictionary:(NSDictionary *) dictionary {
    NSMutableArray *query = [NSMutableArray array];
    for (NSString *key in [dictionary allKeys]) {
        id value = [dictionary objectForKey:key];
        [query addObject:[NSString stringWithFormat:@"%@=%@",
                                                    encodeURIComponent([key description]),
                                                    encodeURIComponent([value description])]];
    }
    return [query componentsJoinedByString:@"&"];
}

@end