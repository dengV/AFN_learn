//
//  AFMultipartBodyStream.h
//  AFNetworking iOS
//
//  Created by dengjiangzhou on 2017/12/14.
//  Copyright © 2017年 AFNetworking. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AFHTTPBodyPart.h"

@interface AFMultipartBodyStream : NSInputStream <NSStreamDelegate>
@property (nonatomic, assign) NSUInteger numberOfBytesInPacket;
@property (nonatomic, assign) NSTimeInterval delay;
@property (nonatomic, strong) NSInputStream *inputStream;
@property (readonly, nonatomic, assign) unsigned long long contentLength;
@property (readonly, nonatomic, assign, getter = isEmpty) BOOL empty;

- (instancetype)initWithStringEncoding:(NSStringEncoding)encoding;
- (void)setInitialAndFinalBoundaries;
- (void)appendHTTPBodyPart:(AFHTTPBodyPart *)bodyPart;

@end
