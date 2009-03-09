//
//  BBSSite.h
//  MobileBBS
//
//  Created by Jjgod Jiang on 3/9/09.
//  Copyright 2009 Jjgod Jiang. All rights reserved.
//

#import "BBSSite.h"

@interface BBSAccount : NSObject {
    NSObject <BBSSite> *site;
    NSString *username;
    NSString *password;
}

@property (retain) NSObject <BBSSite> *site;
@property (retain) NSString *username;
@property (retain) NSString *password;

@end
