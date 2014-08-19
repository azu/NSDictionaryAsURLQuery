//
// Created by azu on 2013/12/19.
//


#import "URLQueryBuilder.h"
#import "AZEncodeURIComponent.h"

@implementation URLQueryBuilder {

}

+ (NSString *)buildQueryWithDictionary:(NSDictionary *) dictionary {
    NSMutableArray *query = [NSMutableArray array];
    for (NSString *key in [dictionary allKeys]) {
        id value = dictionary[key];
        [query addObject:[NSString stringWithFormat:@"%@=%@",
                                                    AZEncodeURIComponent([key description]),
                                                    AZEncodeURIComponent([value description])]];
    }
    return [query componentsJoinedByString:@"&"];
}

@end