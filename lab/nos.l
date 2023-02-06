%{
int ch,line,word;
%}

%%
[a-z] {ch++;}
[A-Z] {ch++;}	
[0-9] {ch++;}
(.) {word++;}
"\n" {line++;}
<<EOF>> {printf("The total no. of Characters: %d\n",ch);printf("The total no. of Words: %d \n",word);printf("The total no. of Lines: %d\n",line);exit(0);}
%%



int yywrap(){
}

int main(){
char fname[50];
printf("Enter the name of file: ");
scanf("%s",fname);
extern FILE *yyin;
yyin= fopen(fname,"r");
yylex(); 
return 0;
}
