%{
    #include<stdio.h>
    #include<string.h>
%}

%%
"if"                    {printf("KEYWORDS:%s\n", yytext);}
"else"                  {printf("KEYWORDS:%s\n", yytext);}
"while"                 {printf("KEYWORDS:%s\n", yytext);}
[0-9]+                  {printf("LITERAL:%s\n", yytext);}
[a-zA-Z_][a-zA-Z0-9]*   {printf("IDENTIFIER:%s\n", yytext);}
"=="                    {printf("OPERATOR:%s\n", yytext);}
"="                     {printf("OPERATOR:%s\n", yytext);}
"!="                    {printf("OPERATOR:%s\n", yytext);}
"+"                     {printf("OPERATOR:%s\n", yytext);}
"-"                     {printf("OPERATOR:%s\n", yytext);}
"*"                     {printf("OPERATOR:%s\n", yytext);}
"/"                     {printf("OPERATOR:%s\n", yytext);}
"("                     {printf("DELIMITER:%s\n", yytext);}
")"                     {printf("DELIMITER:%s\n", yytext);}
"{"                     {printf("DELIMITER:%s\n", yytext);}
"}"                     {printf("DELIMITER:%s\n", yytext);}
";"                     {printf("DELIMITER:%s\n", yytext);}

[\t\n]+                 {/* Ignore whitespace*/}
.                       {printf("KEYWORDS:%s\n", yytext);}
%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}