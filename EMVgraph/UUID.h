//
//  UUID.h
//  EMVgraph
//
//  Created by Claus Guttesen on 02/03/13.
//  Copyright (c) 2013 Claus Guttesen. All rights reserved.
//
// http://stackoverflow.com/questions/427180/how-to-create-a-guid-uuid-using-the-iphone-sdk

#import <Foundation/Foundation.h>

@interface UUID : NSObject

+(NSString *)GetUUID;
-(NSString *)getUUID;

@end
