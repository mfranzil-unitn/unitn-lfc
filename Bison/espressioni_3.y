%{
%}

%token id plus times open closed

%%
E : E plus E
  | E times E
  | open E closed
  | id
;

%%

