//
//  Node.h
//  EMVgraph
//
//  Created by Claus Guttesen on 25/02/13.
//  Copyright (c) 2013 Claus Guttesen. All rights reserved.
//

#import "Entity.h"
#import "Edge.h"

@class Relation;

@interface Node : Entity

@property (nonatomic, strong) NSMutableArray *relations;

-(id)initWithName:(NSString *)name andDescription:(NSString *)description;
-(void)setUUID:(NSString *)uuid name:(NSString *)name description:(NSString *)description;
-(void)addRelation:(Relation *)relation;

@end
