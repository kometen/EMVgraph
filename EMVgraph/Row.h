//
//  Record.h
//  EMVgraph
//
//  Created by Claus Guttesen on 01/03/13.
//  Copyright (c) 2013 Claus Guttesen. All rights reserved.
//
// Simple key-value pair.

#import <Foundation/Foundation.h>

@interface Row : NSObject

@property (nonatomic, copy) NSString *key, *value;

-(Row *)initWithKey:(NSString *)key andValue:(NSString *)value;
-(void)setKey:(NSString *)key andValue:(NSString *)value;

@end
