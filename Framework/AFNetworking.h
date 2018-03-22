

#import <Foundation/Foundation.h>

//! Project version number for AFNetworking.
FOUNDATION_EXPORT double AFNetworkingVersionNumber;

//! Project version string for AFNetworking.
FOUNDATION_EXPORT const unsigned char AFNetworkingVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <AFNetworking/PublicHeader.h>

#import <Availability.h>
#import <TargetConditionals.h>

#ifndef _AFNETWORKING_
#define _AFNETWORKING_

#import <AFNetworking/AFURLRequestSerialization.h>
#import <AFNetworking/AFURLResponseSerialization.h>
#import <AFNetworking/AFSecurityPolicy.h>

#if !TARGET_OS_WATCH
#import <AFNetworking/AFNetworkReachabilityManager.h>
#endif

#import <AFNetworking/AFURLSessionManager.h>
#import <AFNetworking/AFHTTPSessionManager.h>


#if TARGET_OS_IOS || TARGET_OS_TV
#import <AFNetworking/AFAutoPurgingImageCache.h>
#import <AFNetworking/AFImageDownloader.h>
#import <AFNetworking/UIActivityIndicatorView+AFNetworking.h>
#import <AFNetworking/UIButton+AFNetworking.h>
#import <AFNetworking/UIImage+AFNetworking.h>
#import <AFNetworking/UIImageView+AFNetworking.h>
#import <AFNetworking/UIProgressView+AFNetworking.h>
#endif



#if TARGET_OS_IOS
#import <AFNetworking/AFNetworkActivityIndicatorManager.h>
#import <AFNetworking/UIRefreshControl+AFNetworking.h>
#import <AFNetworking/UIWebView+AFNetworking.h>
#endif


#endif /* _AFNETWORKING_ */
