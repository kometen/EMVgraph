//
//  UUID.m
//  EMVgraph
//
//  Created by Claus Guttesen on 02/03/13.
//  Copyright (c) 2013 Claus Guttesen. All rights reserved.
//

#import "UUID.h"

@implementation UUID

+(NSString *)GetUUID {
    CFUUIDRef myGUID = CFUUIDCreate(NULL);
    CFStringRef string = CFUUIDCreateString(NULL, myGUID);
    CFRelease(myGUID);
    return (__bridge NSString *)(string);
}

-(NSString *)getUUID {
    CFUUIDRef myGUID = CFUUIDCreate(NULL);
    CFStringRef string = CFUUIDCreateString(NULL, myGUID);
    CFRelease(myGUID);
    return (__bridge NSString *)(string);
}

@end
