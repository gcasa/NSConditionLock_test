//
//  AppDelegate.h
//  NSConditionLock_test
//
//  Created by Gregory John Casamento on 8/30/23.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    NSConditionLock *_lock;
    BOOL _locked;
}

@end

