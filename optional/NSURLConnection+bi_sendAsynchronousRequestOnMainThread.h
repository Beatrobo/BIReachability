//
//  NSURLConnection+bi_sendAsynchronousRequestOnMainThread.h
//  BIMoviePlayer
//
//  Created by Yusuke Sugamiya on 2013/07/03.
//  Original by Yusuke Ito on 2012/08/08.
//  Copyright (c) 2013年 Beatrobo Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURLConnection (bi_sendAsynchronousRequestOnMainThread)

+ (void)bi_sendAsynchronousRequest:(NSURLRequest*)request
                             queue:(NSOperationQueue*)queue
                 completionHandler:(void (^)(NSURLResponse *, NSData *, NSError *))handler;

@end
