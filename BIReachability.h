//
//  BIReachability.h
//  BIMoviePlayer
//
//  Created by Yusuke Sugamiya on 2013/07/03.
//  Copyright (c) 2013年 Beatrobo Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BIReachability : NSObject

+ (void)beginNetworkConnection;
+ (void)endNetworkConnection;

+ (BOOL)isInternetConnectionAvailable;
+ (BOOL)isInternetConnectionViaWifi;

@end
