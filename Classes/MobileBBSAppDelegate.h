//
//  MobileBBSAppDelegate.h
//  MobileBBS
//
//  Created by Jjgod Jiang on 3/9/09.
//  Copyright Jjgod Jiang 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MobileBBSAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

