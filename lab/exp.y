%{
#include<stdio.h>
%}

%token DIGIT ID NL
%left '-' '+' 
%left '*' '/' 
%% 

stmt : exp NL {printf("Valid expression"); exit(0);} ; 
exp :exp '+' exp 
| exp '-' exp 
| exp '*' exp 
| exp '/' exp 
| exp '=' exp 
|'(' exp ')' 
| ID 
| DIGIT; 
%% 

int yyerror(char *msg) 
{ 
printf("Invalid string"); 
}
void main ()
{
printf("Enter the exp: "); 
yyparse(); 
} 
