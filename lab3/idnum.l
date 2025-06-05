%{
    #include<stdio.h>
%}

%%
[0-9]+                  {printf("NUMBER:%s\n", yytext);}
[a-zA-z_][a-zA-Z0-9]*   {printf("IDENTIFIER:%s\n", yytext);}
"+"                     {printf("PLUS OPERATOR:%s\n", yytext);}
"-"                     {printf("MINUS OPERATOR:%s\n", yytext);}
"="                     {printf("ASSIGNMENT OPERATOR:%s\n", yytext);}
[\t\n]+                 {/* Ignore whitespace*/}
.                       {printf("UNKNOWN CHARACTER:%s\n", yytext);}
%%

int main(){
    yylex(); //Call the scanner
    return 0;
}

int yywrap(){
    return 1;
}