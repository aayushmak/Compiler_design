%{
    #include<stdio.h>
    int ch=0, wd=0, nl=0;
%}

delim  [\t]+

%%
\n          {ch++;nl++;}
{delim}     {ch+=yyleng; wd++;}
.           {ch++;}
%%

int main(){
    yylex();
    printf("Lines: %d\tWords:%d\tChars:%d\n", nl, wd+1, ch);
    return 0;
}

int yywrap(){
    return 1;
}