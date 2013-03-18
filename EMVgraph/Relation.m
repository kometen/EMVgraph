//
//  Relation.m
//  EMVgraph
//
//  Created by Claus Guttesen on 16/03/13.
//  Copyright (c) 2013 Claus Guttesen. All rights reserved.
//

#import "Relation.h"

@implementation Relation

-(Relation *)initWithNode:(Node *)node andEdge:(Edge *)edge {
    self = [super init];
    
    if (self) {
        [self setNode:node];
        [self setEdge:edge];
    }
    
    return self;
}

-(void)setNode:(Node *)node andEdge:(Edge *)edge {
    self.node = node;
    self.edge = edge;
}

@end
