grammar SimepleExpr;

// *: 0 or more
prog : stat* EOF;

// ID是一个词法单元
// 'if':literal 字面量
stat : expr ';'
       | ID '=' expr ';'
       | 'if' expr ';'
       ;

// 表达式递归定义
expr : expr ('*'|'/') expr
     | expr ('+'|'-') expr
     | ID
     | INT
     ;

ID : (LETTER|'_') (LETTER | DIGIT | '_')* ;

LETTER : [a-zA-Z];
DIGIT : [0-9];
