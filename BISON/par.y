%{
  #include <stdio.h>
  extern int yylex(void);
  extern FILE *yyin;
  void yyerror(char *s);
%}

%token CRLF A B
%start instrucciones

%%

instrucciones: instrucciones instruccion | instruccion;

instruccion: s CRLF {printf("ok\n");}

s: A d q;
d: B | A d l;
l: B;
q: /* EPSILON */;

%%


void yyerror(char *s) {
printf("%s", s);
}

void main(int argc, char **argv){
  if(argc > 1) {
  yyin = fopen(argv[1], "rt");
  } else {
  yyin = stdin;
  }
  yyparse();
  }
