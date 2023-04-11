grammar VarDeclare;

parse: expression;

expression: VAR_NAME COLON TYPE CONSTRAIN EOF;

TYPE
    : ('string' | 'int' | 'float')
    ;

CONSTRAIN
    : '{' .*? '}'
    ;


VAR_NAME
    : (~( '{' | '}' | ':' | ' ' | '\r' | '\n' | '\t'))+
    ;

COLON
    : ':'
    ;

WS
    : [ \t\r\n]+ -> skip
    ;