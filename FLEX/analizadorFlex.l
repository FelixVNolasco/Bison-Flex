%option noyywrap

%{
  #include <stdio.h>
%}

letras [a-f]
numeros [1-8]
patron {numeros}?-{letras}
%%

{patron} {printf("PATRON PERMITIDO: %s\n", yytext);}
[\t\r\f] {}
" "      {}
.        {printf("PATRON NO PERMITIDO.");}
%%

void main() {

yylex();

}

