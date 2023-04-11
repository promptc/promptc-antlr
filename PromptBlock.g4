lexer grammar PromptBlock;

SCRIPT: '{%' STRING '%}';
STRING: (~( '{' | '}' ) | '{{' | '}}' )+;
VARIABLE: '{' STRING '}';
