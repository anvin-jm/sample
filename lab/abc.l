%{
#include <string.h>
char s[100] = "";
%}

%%
"abc" {strcat(s, "ABC");}
[A-Z]|[a-z]|[0-9] {strcat(s, yytext);}
. {}
"\n" { 
    printf("The converted text: %s", s);
}
%%

int yywrap()
{
}

int main()
{
    printf("Enter the String: ");
    yylex();
    return 0;
}

