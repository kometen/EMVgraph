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
        
        __block NSMutableDictionary *nodeDictionary = [NSMutableDictionary dictionary];
        __block int nc = 0;
        
        __block void (^traverseNodes) (Node *);
        traverseNodes = [^ (Node *node) {
            if (nc++ > 1) {
                return;
            }
            NSArray *relations = node.relations;
            NSLog(@"this node-name: %@", node.name);
            for (Relation *relation in relations) {
                NSLog(@"relation: %@, uuid: %@", relation.edge.name, relation.node.uuid);
                Node *tmpNode = [nodeDictionary objectForKey:relation.node.uuid];
                NSLog(@"tmpNode.relations.count: %li", tmpNode.relations.count);
                traverseNodes(tmpNode);
                //                        NSLog(@"node: %@, relation: %@, uuid: %@", tmpNode.name, tmpRelation.edge.name, tmpRelation.node.uuid);
                    }
        } copy];
        
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

        Relation *relation1 = [[Relation alloc] initWithEdge:edge1 andNode:node2];
        Relation *relation2 = [[Relation alloc] initWithEdge:edge3 andNode:node3];
        Relation *relation3 = [[Relation alloc] initWithEdge:edge2 andNode:node1];
        Relation *relation4 = [[Relation alloc] initWithEdge:edge4 andNode:node4];
        Relation *relation5 = [[Relation alloc] initWithEdge:edge5 andNode:node5];
        Relation *relation6 = [[Relation alloc] initWithEdge:edge4 andNode:node6];
        Relation *relation7 = [[Relation alloc] initWithEdge:edge5 andNode:node7];
        Relation *relation8 = [[Relation alloc] initWithEdge:edge4 andNode:node1];
        
        [nodeDictionary setObject:mnode forKey:mnode.uuid];
        [nodeDictionary setObject:node1 forKey:node1.uuid];
        [nodeDictionary setObject:node2 forKey:node2.uuid];
        [nodeDictionary setObject:node3 forKey:node3.uuid];
        [nodeDictionary setObject:node4 forKey:node4.uuid];
        [nodeDictionary setObject:node5 forKey:node5.uuid];
        [nodeDictionary setObject:node6 forKey:node6.uuid];
        [nodeDictionary setObject:node7 forKey:node7.uuid];
        
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
        
/*        for (Node *node in nodeChain) {
            NSLog(@"node-uuid: %@, node-name: %@", node.uuid, node.name);
        }*/
        
        traverseNodes(node1);
    }
    return 0;
    
}
