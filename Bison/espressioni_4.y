%{
%}

%token id plus times open closed
%left plus
%left times

%%
E : E plus E
  | E times E
  | open E closed
  | id
;

%%

