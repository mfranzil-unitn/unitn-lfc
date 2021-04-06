%{
%}

%define lr.type canonical-lr
%token a b c d

%%
S : A b
  | a B
;
A : B a
  | /*eps*/
;
B : d S a
  | B A b
;
%%

