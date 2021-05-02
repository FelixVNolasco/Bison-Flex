%option outfile = "par.c"
%{
  #include "par.tab.h"
%}

crlf "\n"
a "a"
b "b"

%%

{crlf} return(CRLF);
{a} return (A);
{b} return (B);
[\t\r\f] {}
.	 {}
%%
