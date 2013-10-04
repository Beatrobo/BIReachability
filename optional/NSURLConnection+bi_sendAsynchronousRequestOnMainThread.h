//
//  Created by Yusuke Sugamiya on 2013/07/03.
//  Original by Yusuke Ito on 2012/08/08.
//

#import <Foundation/Foundation.h>

@interface NSURLConnection (bi_sendAsynchronousRequestOnMainThread)

+ (void)bi_sendAsynchronousRequest:(NSURLRequest*)request
                             queue:(NSOperationQueue*)queue
                 completionHandler:(void (^)(NSURLResponse *, NSData *, NSError *))handler;

@end
