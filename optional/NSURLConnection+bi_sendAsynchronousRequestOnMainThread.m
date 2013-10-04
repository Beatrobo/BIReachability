//
//  Created by Yusuke Sugamiya on 2013/07/03.
//  Original by Yusuke Ito on 2012/08/08.
//

#import "NSURLConnection+bi_sendAsynchronousRequestOnMainThread.h"

@implementation NSURLConnection (bi_sendAsynchronousRequestOnMainThread)

+ (void)bi_sendAsynchronousRequest:(NSURLRequest*)request
                             queue:(NSOperationQueue*)queue
                 completionHandler:(void (^)(NSURLResponse *, NSData *, NSError *))handler
{
    if ([NSThread mainThread] != [NSThread currentThread]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self bi_sendAsynchronousRequest:request queue:queue completionHandler:handler];
        });
        return;
    }
    
    [queue addOperationWithBlock:^{
        NSURLResponse* res = nil;
        NSError* error = nil;
        NSData* data = [NSURLConnection sendSynchronousRequest:request returningResponse:&res error:&error];
        handler(res, data, error);
    }];
}

@end
