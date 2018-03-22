//
//  AFJSONRequestSerializer.h
//  AFNetworking iOS
//
//  Created by dengjiangzhou on 2017/12/14.
//  Copyright © 2017年 AFNetworking. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AFURLRequestSerialization.h"

#import "ConstantStrings.h"

@interface AFJSONRequestSerializer : AFHTTPRequestSerializer

/**
 Options for writing the request JSON data from Foundation objects. For possible values, see the `NSJSONSerialization` documentation section "NSJSONWritingOptions". `0` by default.
 */
@property (nonatomic, assign) NSJSONWritingOptions writingOptions;

/**
 Creates and returns a JSON serializer with specified reading and writing options.
 
 @param writingOptions The specified JSON writing options.
 */
+ (instancetype)serializerWithWritingOptions:(NSJSONWritingOptions)writingOptions;


@end
