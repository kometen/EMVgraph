//
//  Record.m
//  EMVgraph
//
//  Created by Claus Guttesen on 01/03/13.
//  Copyright (c) 2013 Claus Guttesen. All rights reserved.
//

#import "Row.h"

@implementation Row

-(Row *)initWithKey:(NSString *)key andValue:(NSString *)value {
    self = [super init];
    
    if (self) {
        [self setKey:key];
        [self setValue:value];
    }
    
    return self;
}

-(void)setKey:(NSString *)key andValue:(NSString *)value {
    self.key = key;
    self.value = value;
}

@end
