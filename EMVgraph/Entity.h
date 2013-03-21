//
//  Entity.h
//  EMVgraph
//
//  Created by Claus Guttesen on 25/02/13.
//  Copyright (c) 2013 Claus Guttesen. All rights reserved.
//
// Entity is the mother of Node and Edge

#import <Foundation/Foundation.h>
#import "Row.h"

@interface Entity : NSObject

@property (nonatomic, strong) NSString *uuid;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *description;
@property (nonatomic, strong) NSMutableArray *rows;

-(id)initWithName:(NSString *)name andDescription:(NSString *)description;
-(void)setUUID:(NSString *)uuid name:(NSString *)name description:(NSString *)description;
-(void)addRow:(Row *)rowData;

@end
