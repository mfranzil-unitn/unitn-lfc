%{
%}

%token a b

%%
R : R '+' S
  | S
;
S : S T
  | T
;
T : U '*'
  | U
;
U : '(' R ')'
  | a
  | b
;

%%

