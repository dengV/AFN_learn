//
//  AFURLRequestSerializationProtocol.h
//  AFNetworking iOS
//
//  Created by dengjiangzhou on 2017/12/14.
//  Copyright © 2017年 AFNetworking. All rights reserved.
//

#import <UIKit/UIKit.h>




/**
 The `AFURLRequestSerialization` protocol is adopted by an object that encodes parameters for a specified HTTP requests. Request serializers may encode parameters as query strings, HTTP bodies, setting the appropriate HTTP header fields as necessary.
 
 For example, a JSON request serializer may set the HTTP body of the request to a JSON representation, and set the `Content-Type` HTTP header field value to `application/json`.
 */
@protocol AFURLRequestSerialization <NSObject, NSSecureCoding, NSCopying>


- (nullable NSURLRequest *)requestBySerializingRequest:(NSURLRequest *_Nullable)request
                                        withParameters:(nullable id)parameters
                                                 error:(NSError * _Nullable __autoreleasing * _Nonnull )error NS_SWIFT_NOTHROW;

@end
