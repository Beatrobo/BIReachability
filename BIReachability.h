//
//  Created by Yusuke Sugamiya on 2013/07/03.
//

#import <Foundation/Foundation.h>

@interface BIReachability : NSObject

+ (void)beginNetworkConnection;
+ (void)endNetworkConnection;

+ (BOOL)isInternetConnectionAvailable;
+ (BOOL)isInternetConnectionViaWifi;

@end
