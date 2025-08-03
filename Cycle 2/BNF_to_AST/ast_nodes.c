#include <stdio.h>
#include <stdlib.h>
#include "ast_nodes.h"

ASTNode* createNumNode(int value) {
    ASTNode* node = (ASTNode*) malloc(sizeof(ASTNode));
    node->type = NUM_NODE;
    node->data.value = value;
    return node;
}

ASTNode* createOpNode(NodeType type, ASTNode *left, ASTNode *right) {
    ASTNode* node = (ASTNode*) malloc(sizeof(ASTNode));
    node->type = type;
    node->data.op.left = left;
    node->data.op.right = right;
    return node;
}

void printAST(ASTNode *node, int level) {
    if (node == NULL) return;

    // Print indentation
    for (int i = 0; i < level; i++) {
        printf("|   ");
    }

    // Print node info based on type
    switch (node->type) {
        case NUM_NODE:
            printf("%d (NUM_NODE)\n", node->data.value);
            break;
        case ADD_NODE:
            printf("+ (ADD_NODE)\n");
            printAST(node->data.op.left, level + 1);
            printAST(node->data.op.right, level + 1);
            break;
        case SUB_NODE:
            printf("- (SUB_NODE)\n");
            printAST(node->data.op.left, level + 1);
            printAST(node->data.op.right, level + 1);
            break;
        case MUL_NODE:
            printf("* (MUL_NODE)\n");
            printAST(node->data.op.left, level + 1);
            printAST(node->data.op.right, level + 1);
            break;
        case DIV_NODE:
            printf("/ (DIV_NODE)\n");
            printAST(node->data.op.left, level + 1);
            printAST(node->data.op.right, level + 1);
            break;
        default:
            printf("Unknown node type\n");
    }
}
