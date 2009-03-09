//
//  NewSMTHSite.m
//  MobileBBS
//
//  Created by Jjgod Jiang on 3/9/09.
//  Copyright 2009 Jjgod Jiang. All rights reserved.
//

#import "NSURLRequestAdditions.h"
#import "NewSMTHSite.h"

@implementation NewSMTHSite

- (id) init
{
    if ((self = [super init]))
    {
        networkState = kStateUnknown;
    }
    
    return self;
}

- (NSString *) name
{
    return NSLocalizedString(@"newsmth", "name of newsmth.net BBS");
}

- (void) startLoginWithUsername: (NSString *) username
                       password: (NSString *) password
{
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys: username, @"id", password, @"passwd", @"1", @"kick_multi", nil];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURLString: @"http://www.newsmth.net/bbslogin2.php"
                                                                 andPostData: dict];

    NSLog(@"start logging in %@ with %@...", [self name], username);

    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest: request 
                                                                  delegate: self];
    if (connection)
        networkState = kStateLoginingToBBS;
}

@end
