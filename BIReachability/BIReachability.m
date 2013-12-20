//
//  Created by Yusuke Sugamiya on 2013/07/03.
//

#import "BIReachability.h"
#import "Reachability.h"

@implementation BIReachability

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
static int networkCount = 0;
#elif TARGET_OS_MAC
#endif

+ (void)beginNetworkConnection
{
#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
    if ([NSThread mainThread] != [NSThread currentThread]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self beginNetworkConnection];
        });
        return;
    }

    networkCount++;
    if (networkCount > 0) {
        [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    }
#elif TARGET_OS_MAC
#endif
}

+ (void)endNetworkConnection
{
#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
    if ([NSThread mainThread] != [NSThread currentThread]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self endNetworkConnection];
        });
        return;
    }

    if (networkCount > 0) {
        networkCount--;
        if (networkCount == 0) {
            [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        }
    }
#elif TARGET_OS_MAC

#endif
}

static Reachability* curReach = nil;

+ (BOOL)isInternetConnectionAvailable
{
    if (curReach == nil) {
        curReach = [Reachability reachabilityForInternetConnection];
    }
    return curReach.isReachable;
}

+ (BOOL)isInternetConnectionViaWifi
{
    if (curReach == nil) {
        curReach = [Reachability reachabilityForInternetConnection];
    }
    return curReach.isReachableViaWiFi;
}

@end
