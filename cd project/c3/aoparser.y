{%
#include<stdiio.h?
%}

%token d

%%
S : E {printf("Parsing Sucessfull);}
E: E '+' T {$$=$1 + $3;}
   | T {$$=$1;}
   ;
T: T '*' F {$$ = $1 + $3;}
   | T {$$ = $1;}
   ;
F:  '('E')' {$$ = $2;}
    | d     {$$ = $1;}
   ;
%%

int main(){
    yyparse();
}

int yywrap(){
    return 1;
}

int yyerror(char *s){
    printf("Error %s",s);
}