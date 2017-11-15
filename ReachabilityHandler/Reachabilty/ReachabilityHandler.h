//
//  ReachabilityHandler.h
//  ReachabilityHandler
//
//  Created by Sudhakar Dasari on 15/11/17.
//  Copyright © 2017 Sudhakar Dasari. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ReachabilityHandler : NSObject

+(ReachabilityHandler *)sharedHandler;

+(BOOL)checkInternetConnection;

@end
