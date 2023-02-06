%{
int vow=0;
int cons=0;
%}

%%
[aeiouAEIOU] {vow++;}
[^aeiouAEIOU\n] {cons++;}
"\n" {printf("The total no. of Vowels and consonants are: %d and %d", vow,cons);}
%%

int yywrap()
{

}

int main()
{
    printf("Enter the string: ");
    yylex();
    return 0;
}

