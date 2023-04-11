grammar VarDeclare;

parse: expression;

expression: VAR_NAME ':' TYPE CONSTRAIN?;

TYPE
    : ('string' | 'int' | 'float')
    ;

CONSTRAIN
    : '{' .*? '}'
    ;


VAR_NAME
    : (~( '{' | '}' | ':' | ' ' | '\r' | '\n' | '\t'))+
    ;

WS
    : [ \t\r\n]+ -> skip
    ;