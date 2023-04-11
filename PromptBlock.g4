lexer grammar PromptBlock;

SCRIPT
    : '{%' STRING '%}'
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