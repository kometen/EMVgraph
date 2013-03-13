//
//  Entity.m
//  EMVgraph
//
//  Created by Claus Guttesen on 25/02/13.
//  Copyright (c) 2013 Claus Guttesen. All rights reserved.
//

#import "Entity.h"
#import "UUID.h"

@implementation Entity

-(id)init {
    return [self initWithName:@"mnode" andDescription:@"Mother of all Nodes"];
}

-(id)initWithName:(NSString *)name andDescription:(NSString *)description {
    self = [super init];
    
    if (self) {
        _uuid = [NSString stringWithString:[UUID GetUUID]];
        _name = [NSString stringWithString:name];
        _description = [NSString stringWithString:description];
        _rows = [NSMutableArray array];
    }
    
    return self;
}

-(void)setUUID:(NSString *)uuid name:(NSString *)name description:(NSString *)description {
    self.uuid = uuid;
    self.name = name;
    self.description = description;
}

-(void)addRow:(Row *)rowData {
    [_rows addObject:rowData];
}

@end
