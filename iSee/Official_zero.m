//
//  first.m
//  AFNetworking
//
//  Created by dengjiangzhou on 2018/3/22.
//  Copyright © 2018年 AFNetworking. All rights reserved.
//

#import <Foundation/Foundation.h>


NSURLSessionResponseDisposition


Constants indicating how a data or upload session should proceed after receiving the initial headers.





Constants
NSURLSessionResponseCancel
Cancel the load. Equivalent to calling
cancel
on the task.

NSURLSessionResponseAllow
Allow the load operation to continue.

NSURLSessionResponseBecomeDownload
Convert this request into a download task.



//


NSURLSessionResponseBecomeDownload
Convert this request into a download task.


Declaration
NSURLSessionResponseBecomeDownload = 2


//




URLSession:dataTask:didBecomeStreamTask:
Tells the delegate that the data task was changed to a streamtask.



Declaration
- (void)URLSession:(NSURLSession *)session
dataTask:(NSURLSessionDataTask *)dataTask
didBecomeStreamTask:(NSURLSessionStreamTask *)streamTask;
Parameters
session
The session containing the task that was replaced by a stream task.

dataTask
The data task that was replaced by a stream task.

streamTask
The new stream task that replaced the data task.

Discussion
When the delegate’s URLSession:dataTask:didReceiveResponse:completionHandler: method decides to change the disposition from a data request to a stream, the session calls this delegate method to provide you with the new stream task. After this call, the session delegate receives no further delegate method calls related to the original data task.

For requests that were pipelined, the stream task will only allow reading, and the object will immediately send the delegate message URLSession:writeClosedForStreamTask:. Pipelining can be disabled for all requests in a session by setting the HTTPShouldUsePipelining property on its NSURLSessionConfiguration object, or for individual requests by setting the HTTPShouldUsePipelining property on an NSURLRequest object.
