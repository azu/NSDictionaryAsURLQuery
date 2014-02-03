# URLQueryBuilder [![Build Status](https://travis-ci.org/azu/NSDictionaryAsURLQuery.png)](https://travis-ci.org/azu/NSDictionaryAsURLQuery)

URLQueryBuilder convert `NSDictionary` to URL query string.

## Installation

``` sh
pod 'NSDictionaryAsURLQuery', :git => 'https://github.com/azu/NSDictionaryAsURLQuery.git'
```

## Usage

``` objc
    NSString *results = [URLQueryBuilder buildQueryWithDictionary:@{
        @"param_1" : @1,
        @"param_2" : @"string"
    }];
    // => @"param_1=1&param_2=string"
```

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

MIT