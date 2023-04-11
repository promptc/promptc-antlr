grammar PromptBlock;

parse: expr* EOF;

expr: RESERVED_QUOTA | SCRIPT | BRACKET_STRING | VARIABLE | STRING;

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