%{
%}

%token id plus times open closed

%%
E : E plus T
  | T
;
T : T times F
  | F
;
F : open E closed
  | id
;

%%

