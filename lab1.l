%{
    #include <stdio.h>
%}

%%

(a|b)*a     { printf("Matched: %s\n", yytext); }
.|\n        { /* Ignore other input */ }

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}