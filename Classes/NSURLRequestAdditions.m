//
//  NSURLRequestAdditions.m
//  MobileSMTH
//
//  Created by Jjgod Jiang on 9/29/08.
//  Copyright 2008 Jjgod Jiang. All rights reserved.
//

#import "NSURLRequestAdditions.h"

@implementation NSMutableURLRequest (JjgodAdditions)

+ (NSMutableURLRequest *) requestWithURLString: (NSString *) URLString
{
    return [NSMutableURLRequest requestWithURL: [NSURL URLWithString: URLString]
                                   cachePolicy: NSURLRequestReloadIgnoringCacheData 
                               timeoutInterval: 60];
}

+ (NSMutableURLRequest *) requestWithURLString: (NSString *) URLString 
                                   andPostData: (NSDictionary *) postDict
{
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURLString: URLString];
    NSMutableString *post = [NSMutableString stringWithString: @""];
    BOOL first = YES;
    
    for (id key in postDict)
    {
        if (first)
            first = NO;
        else
            [post appendString: @"&"];
        
        [post appendFormat: @"%@=%@", key, [postDict objectForKey: key]];
    }
    
    NSData *postData = [post dataUsingEncoding: NSUTF8StringEncoding 
                          allowLossyConversion: YES];
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    
    [request setHTTPMethod: @"POST"];
    [request setValue: postLength forHTTPHeaderField: @"Content-Length"];
    [request setValue: @"application/x-www-form-urlencoded" forHTTPHeaderField: @"Content-Type"];
    [request setHTTPBody: postData];
    
    return request;
}

@end
