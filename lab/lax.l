%{
int n=0;
int k=0, i=0, o=0, num=0;
%}
%%
if|else|while|int|switch|for|char { printf("%s is a keyword\n",yytext);k++;n++;}
[_a-zA-Z][a-zA-Z0-9_]* { printf("%s is an identifier\n",yytext);i++;n++;}
"="|"+"|"-"|"*"|"/"|"<"|">" {printf("%s is an operator\n",yytext);o++;n++;}
[0-9]+ {printf("%s is a number\n",yytext);num++;n++;}
<<EOF>> {exit(0); }
%%

int yywrap()
{
}


int main()
{
char fname[50];
printf("Enter the filename");
scanf("%s",&fname);
extern FILE *yyin;
yyin=fopen(fname,"r");
yylex();
return 0;
}
