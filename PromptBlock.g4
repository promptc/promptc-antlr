grammar PromptBlock;

parse: expr* EOF;

expr: SCRIPT | BRACKET_STRING | VARIABLE | STRING;

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
