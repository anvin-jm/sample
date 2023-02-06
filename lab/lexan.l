%{
int n=0;
int k=0, i=0, o=0, num=0;
%}

%%
if|else|while|int|switch|for|char { printf("%s is a keyword\n",yytext);k++;n++;}
_*[a-z]*[A-Z]+[0-9]*|_*[a-z]+[A-Z]*[0-9]* { printf("%s is an identifier\n",yytext);i++;n++;}
"="|"+"|"-"|"*"|"/"|"<"|">" {printf("%s is an operator\n",yytext);o++;n++;}
[0-9]+ {printf("%s is a number\n",yytext);num++;n++;}
(.) {}
<<EOF>> {exit(0);}
%%



int yywrap()
{
}

int main()
{
char *fname[100] ;
printf("Enter the input file name: ");
scanf("%s",fname);
extern FILE *yyin;
yyin = fopen(fname, "r");
yylex();
return 0;
}
