//
//  ReachabilityHandler.m
//  ReachabilityHandler
//
//  Created by Sudhakar Dasari on 15/11/17.
//  Copyright © 2017 Sudhakar Dasari. All rights reserved.
//

#import "ReachabilityHandler.h"
#import "Reachability.h"
#import "KSToastView.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation ReachabilityHandler

+(ReachabilityHandler*)sharedHandler
{
    static ReachabilityHandler *sharedHandler;
    if (sharedHandler == nil)
    {
        sharedHandler = [[ReachabilityHandler alloc] init];
        [sharedHandler startNetworkReachability];
    }
    return sharedHandler;
}
-(void)startNetworkReachability{
    
     // Initialize Reachability
    Reachability * reachability = [Reachability reachabilityWithHostname:@"www.google.com"];
   
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(reachabilityChanged:)
                                                 name:kReachabilityChangedNotification
                                               object:nil];
    // Start Monitoring
    [reachability startNotifier];
}
#pragma mark - check internet connection
+(BOOL)checkInternetConnection{
    
    Reachability * reachability = [Reachability reachabilityWithHostname:@"www.google.com"];
    NetworkStatus networkStatus = [reachability currentReachabilityStatus];
    return networkStatus == NotReachable;
}
-(void)reachabilityChanged:(NSNotification*)note
{
    Reachability * reach = [note object];
    NetworkStatus netStatus = [reach currentReachabilityStatus];
    if (netStatus == NotReachable)
    {
        [KSToastView ks_showToast:@"No internet connectivity"];
        [KSToastView ks_setAppearanceCornerRadius:3];
        [KSToastView ks_setAppearanceBackgroundColor:[UIColor redColor]];
    }
    else
    {
        [KSToastView ks_showToast:@"Internet connected"];
        [KSToastView ks_setAppearanceCornerRadius:3];
        [KSToastView ks_setAppearanceBackgroundColor:UIColorFromRGB(0x228B22)];
    }
}
@end
