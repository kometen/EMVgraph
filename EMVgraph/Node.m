//
//  Node.m
//  EMVgraph
//
//  Created by Claus Guttesen on 25/02/13.
//  Copyright (c) 2013 Claus Guttesen. All rights reserved.
//

#import "Node.h"
#import "UUID.h"

@implementation Node

-(id)initWithName:(NSString *)name andDescription:(NSString *)description {
    
    if (self) {
        _relations = [NSMutableArray array];
    }
    
    return self;
}

-(void)setUUID:(NSString *)uuid name:(NSString *)name description:(NSString *)description {
    self.uuid = uuid;
    self.name = name;
    self.description = description;
}

-(void)addRelation:(Edge *)relation {
    [_relations addObject:relation];
}

@end
