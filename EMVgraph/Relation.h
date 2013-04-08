//
//  Relation.h
//  EMVgraph
//
//  Created by Claus Guttesen on 16/03/13.
//  Copyright (c) 2013 Claus Guttesen. All rights reserved.
//
// Defines the relation a node have, which is always outgoing. Inverse (incoming) relations don't exist,
// since this relationtype is defined by fetching the opposite node.
// Node -> (Node, Edge)

#import <Foundation/Foundation.h>

@class Node, Edge;

@interface Relation : NSObject

@property (nonatomic, strong) Edge *edge;
@property (nonatomic, strong) Node *node;

-(Relation *)initWithEdge:(Edge *)edge andNode:(Node *)node;
-(void)setEdge:(Edge *)edge andNode:(Node *)node;

@end
