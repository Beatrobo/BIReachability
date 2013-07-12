//
//  NSURLConnection+bi_sendAsynchronousRequestOnMainThread.m
//  BIMoviePlayer
//
//  Created by Yusuke Sugamiya on 2013/07/03.
//  Original by Yusuke Ito on 2012/08/08.
//  Copyright (c) 2013年 Beatrobo Inc. All rights reserved.
//

#import "NSURLConnection+bi_sendAsynchronousRequestOnMainThread.h"

@implementation NSURLConnection (bi_sendAsynchronousRequestOnMainThread)

+ (void)bi_sendAsynchronousRequest:(NSURLRequest*)request
                             queue:(NSOperationQueue*)queue
                 completionHandler:(void (^)(NSURLResponse *, NSData *, NSError *))handler
{
    // DPDLog(@"ops=%@,req=%@", [queue operations], request);
    // NSAssert([NSThread mainThread] == [NSThread currentThread], @"use main thread");
    
    if ([NSThread mainThread] != [NSThread currentThread]) {
        // DPDLog(@"use main thread %@", request);
        dispatch_async(dispatch_get_main_queue(), ^{
            [self bi_sendAsynchronousRequest:request queue:queue completionHandler:handler];
        });
        return;
    }
    
    [queue addOperationWithBlock:^{
        // dispatch_queue_t gqueue = dispatch_get_current_queue();
        // dispatch_async(gqueue, ^{
        NSURLResponse* res = nil;
        NSError* error = nil;
        NSData* data = [NSURLConnection sendSynchronousRequest:request returningResponse:&res error:&error];
        // DPDLog(@"done %d,%@,%p",data.length, res, error);
        handler(res, data, error);
        // });
    }];
}

@end
