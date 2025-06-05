%{
    #include<stdio.h>
%}
digit[0-9]
letter[A-Za-z]
id{letter}({letter}|{digit})*
%%
{digit}+        {printf("number:%s\n", yytext);}
{id}            {printf("ident:%s\n", yytext);}
.               {printf("other:%s\n", yytext);}
%%
int main()
{
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}