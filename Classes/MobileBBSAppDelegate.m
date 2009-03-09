//
//  MobileBBSAppDelegate.m
//  MobileBBS
//
//  Created by Jjgod Jiang on 3/9/09.
//  Copyright Jjgod Jiang 2009. All rights reserved.
//

#import "MobileBBSAppDelegate.h"
#import "RootViewController.h"


@implementation MobileBBSAppDelegate

@synthesize window;
@synthesize navigationController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
	
	// Configure and show the window
	[window addSubview:[navigationController view]];
	[window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}

@end
