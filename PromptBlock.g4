grammar PromptBlock;

parse: expr*;

expr: BRACKET_STRING ｜ RESERVED_QUOTA | SCRIPT | VARIABLE | STRING;

RESERVED_QUOTA
    : '{%' (WS)* 'Q' (WS)* '%}'
    ;

SCRIPT
    : '{%' .*? '%}'
    ;

BRACKET_STRING
    : '{{'
    | '}}'
    ;

VARIABLE
    : '{' STRING '}'
    ;

STRING
    : (~( '{' | '}' ))+
    ;

WS
    : [ \t\r\n]+ -> skip
    ;
