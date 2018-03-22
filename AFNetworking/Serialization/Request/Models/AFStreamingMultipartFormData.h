//
//  AFStreamingMultipartFormData.h
//  AFNetworking iOS
//
//  Created by dengjiangzhou on 2017/12/14.
//  Copyright © 2017年 AFNetworking. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AFMultipartFormDataProtocol.h"

#import "ConstantStrings.h"

@interface AFStreamingMultipartFormData : NSObject<AFMultipartFormData>
- (instancetype)initWithURLRequest:(NSMutableURLRequest *)urlRequest
                    stringEncoding:(NSStringEncoding)encoding;

- (NSMutableURLRequest *)requestByFinalizingMultipartFormData;

@end
