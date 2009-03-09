//
//  NSURLRequestAdditions.h
//  MobileSMTH
//
//  Created by Jjgod Jiang on 9/29/08.
//  Copyright 2008 Jjgod Jiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableURLRequest (JjgodAdditions)

+ (NSMutableURLRequest *) requestWithURLString: (NSString *) URLString;
+ (NSMutableURLRequest *) requestWithURLString: (NSString *) URLString 
                                   andPostData: (NSDictionary *) postDict;

@end
