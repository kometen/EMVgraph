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
#import "Relation.h"
#import "UUID.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        NSMutableArray *nodeChain = [[NSMutableArray alloc] init];
        Node *mnode = [[Node alloc] initWithName:@"mnode" andDescription:@"Mother of All Nodes"];
        Node *node1 = [[Node alloc] initWithName:@"Claus Guttesen" andDescription:@"complete name"];
        Node *node2 = [[Node alloc] initWithName:@"Anne-Merete Kleppenes" andDescription:@"complete name"];
        Node *node3 = [[Node alloc] initWithName:@"Eline Clausdatter Kleppenes" andDescription:@"complete name"];
        Node *node4 = [[Node alloc] initWithName:@"Leif Guttesen" andDescription:@"complete name"];
        Node *node5 = [[Node alloc] initWithName:@"Ruth Guttesen" andDescription:@"complete name"];
        Node *node6 = [[Node alloc] initWithName:@"Einar Kleppenes" andDescription:@"complete name"];
        Node *node7 = [[Node alloc] initWithName:@"Alvhild Kleppenes" andDescription:@"complete name"];
        
        Edge *edge1 = [[Edge alloc] initWithName:@"wife" andDescription:@"married to"];
        Edge *edge2 = [[Edge alloc] initWithName:@"husbond" andDescription:@"married to"];
        Edge *edge3 = [[Edge alloc] initWithName:@"daughter" andDescription:@"daughter"];
        Edge *edge4 = [[Edge alloc] initWithName:@"father" andDescription:@"father"];
        Edge *edge5 = [[Edge alloc] initWithName:@"mother" andDescription:@"mother"];
        
        Row *row1 = [[Row alloc] initWithKey:@"firstname" andValue:@"Claus"];
        Row *row2 = [[Row alloc] initWithKey:@"lastname" andValue:@"Guttesen"];
        
        [node1 addRow:row1];
        [node1 addRow:row2];

        Relation *relation1 = [[Relation alloc] initWithNode:node2 andEdge:edge1];
        Relation *relation2 = [[Relation alloc] initWithNode:node3 andEdge:edge3];
        Relation *relation3 = [[Relation alloc] initWithNode:node1 andEdge:edge2];
        Relation *relation4 = [[Relation alloc] initWithNode:node4 andEdge:edge4];
        Relation *relation5 = [[Relation alloc] initWithNode:node5 andEdge:edge5];
        Relation *relation6 = [[Relation alloc] initWithNode:node6 andEdge:edge4];
        Relation *relation7 = [[Relation alloc] initWithNode:node7 andEdge:edge5];
        Relation *relation8 = [[Relation alloc] initWithNode:node1 andEdge:edge4];
        
        [nodeChain addObject:mnode];
        [nodeChain addObject:node1];
        [nodeChain addObject:node2];
        [nodeChain addObject:node3];
        [nodeChain addObject:node4];
        [nodeChain addObject:node5];
        [nodeChain addObject:node6];
        [nodeChain addObject:node7];
        
        [node1 addRelation:relation1];
        [node1 addRelation:relation2];
        [node2 addRelation:relation3];
        [node1 addRelation:relation4];
        [node1 addRelation:relation5];
        [node2 addRelation:relation6];
        [node2 addRelation:relation7];
        [node3 addRelation:relation8];
        
        NSLog(@"node 1: name: %@, value: %@", node1.name, node1.description);
        for (Node *node in nodeChain) {
            NSLog(@"node-uuid: %@, node-name: %@", node.uuid, node.name);
        }
        NSLog(@"node-count: %li", (unsigned long)[nodeChain count]);
        
        Node *thisNode = node3;
        NSArray *relations = thisNode.relations;
        for (Relation *relation in relations) {
            NSLog(@"node: %@, relation: %@, kind: %@", thisNode.name, relation.node.name, relation.edge.name);
        }
    }
    return 0;
    
}
