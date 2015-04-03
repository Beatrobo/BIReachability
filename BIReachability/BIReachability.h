#import <Foundation/Foundation.h>


@interface BIReachability : NSObject

+ (void)beginNetworkConnection;
+ (void)endNetworkConnection;

+ (BOOL)isInternetConnectionAvailable;
+ (BOOL)isInternetConnectionViaWifi;

@end
