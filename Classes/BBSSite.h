//
//  BBSSite.h
//  MobileBBS
//
//  Created by Jjgod Jiang on 3/9/09.
//  Copyright 2009 Jjgod Jiang. All rights reserved.
//

enum NetworkState {
    kStateUnknown, kStateLoginingToBBS,
    kStateLoadingBoardList, kStateLoadingPostList,
    kStateLoadingPost, kStateLoadingDone
};

@protocol BBSSite

- (NSString *) name;
- (void) startLoginWithUsername: (NSString *) username
                       password: (NSString *) password;

@end
