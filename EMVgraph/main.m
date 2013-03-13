//
//  main.m
//  EMVgraph
//
//  Created by Claus Guttesen on 23/02/13.
//  Copyright (c) 2013 Claus Guttesen. All rights reserved.
//
// nodeChain, all nodes in an array, (mainly) for traversal.

#import <Foundation/Foundation.h>
#import "Node.h"
#import "Edge.h"
#import "Row.h"
#import "UUID.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        NSMutableArray *nodeChain = [[NSMutableArray alloc] init];
        Node *mnode = [[Node alloc] initWithName:@"mnode" andDescription:@"Mother of all Nodes"];
        Node *node1 = [[Node alloc] init];
        Node *node2 = [[Node alloc] init];
        Node *node3 = [[Node alloc] init];
        Edge *edge1 = [[Edge alloc] init];
        Edge *edge2 = [[Edge alloc] init];
        Edge *edge3 = [[Edge alloc] init];
        Row *row1 = [[Row alloc] initWithKey:@"firstname" andValue:@"Claus"];
        Row *row2 = [[Row alloc] initWithKey:@"lastname" andValue:@"Guttesen"];
        [node1 setUUID:[UUID GetUUID] name:@"nodeName1" description:@"nodeDescription1"];
        [node1 addRow:row1];
        [node1 addRow:row2];
        [node2 setUUID:[UUID GetUUID] name:@"nodeName2" description:@"nodeDescription2"];
        [node3 setUUID:[UUID GetUUID] name:@"nodeName3" description:@"nodeDescription3"];
        [edge1 setUUID:[UUID GetUUID] name:@"edgeName1" description:@"edgeDescription1"];
        [edge2 setUUID:[UUID GetUUID] name:@"edgeName2" description:@"edgeDescription2"];
        [edge3 setUUID:[UUID GetUUID] name:@"edgeName3" description:@"edgeDescription3"];
        
        [nodeChain addObject:mnode];
        [nodeChain addObject:node1];
        [nodeChain addObject:node2];
        [nodeChain addObject:node3];
        NSLog(@"node 2: value: %@", node1.description);
        for (Node *node in nodeChain) {
            NSLog(@"node-uuid: %@, node-name: %@", node.uuid, node.name);
        }
        NSLog(@"node-count: %li", (unsigned long)[nodeChain count]);
    }
    return 0;
    
}
