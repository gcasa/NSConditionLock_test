//
//  AppDelegate.m
//  NSConditionLock_test
//
//  Created by Gregory John Casamento on 8/30/23.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSButton *button;
@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    _lock = [[NSConditionLock alloc] init];
    [_lock unlock]; // try to unlock without locking...
    
    _locked = NO;
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

- (IBAction) lockUnlock: (id)sender
{
    if (_locked)
    {
        [_lock unlock];
        _locked = NO;
        self.button.title = @"Lock";
    }
    else
    {
        [_lock lock];
        _locked = YES;
        self.button.title = @"Unlock";
    }
}
@end
