//
//  Relation.m
//  EMVgraph
//
//  Created by Claus Guttesen on 16/03/13.
//  Copyright (c) 2013 Claus Guttesen. All rights reserved.
//

#import "Relation.h"

@implementation Relation

-(Relation *)initWithEdge:(Edge *)edge andNode:(Node *)node {
    self = [super init];
    
    if (self) {
        [self setEdge:edge];
        [self setNode:node];
    }
    
    return self;
}

-(void)setEdge:(Edge *)edge andNode:(Node *)node {
    self.edge = edge;
    self.node = node;
}

@end
