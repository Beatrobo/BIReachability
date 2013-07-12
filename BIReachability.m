//
//  BIReachability.m
//  BIMoviePlayer
//
//  Created by Yusuke Sugamiya on 2013/07/03.
//  Copyright (c) 2013年 Beatrobo Inc. All rights reserved.
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
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        curReach = [Reachability reachabilityForInternetConnection];
    });
    
    NetworkStatus netStatus = [curReach currentReachabilityStatus];
    
    return (netStatus != NotReachable);
}

+ (BOOL)isInternetConnectionViaWifi
{
    [self isInternetConnectionAvailable];
    
    NetworkStatus netStatus = [curReach currentReachabilityStatus];
    if (netStatus == kReachableViaWiFi) {
        return YES;
    }
    return NO;
}

@end
