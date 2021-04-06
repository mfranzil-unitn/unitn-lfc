

bison file.y
  % returns a message about conflicts, if any
  % produces file.tab.c

bison -v file.y
  % returns a message about conflicts, if any
  % produces file.tab.c
  % produces file.output, a textual description of the characteristic automaton
  %% and of the lookahead-sets for reductions
  %% a warning here: due to optimization issues, lookahead-sets for reductions
  %% are generally supersets of the expected LALR(1) ones

bison --graph file.y
  % returns a message about conflicts, if any
  % produces file.tab.c
  % produces file.dot, a graphical representation of the automaton and of
  %% the lookahead-sets for reductions.
  %% file.dot can be opened, e.g., by gvedit
  %% as an example, espressioni_1.pdf e' il rendering di espressioni_1.dot
  
  
4 istanze di file.y included:

- espressioni_1, espressioni_2: grammatica SLR(1) per espressioni aritmetiche
  %% +,*,(,e ) sono caratteri riservati
  %% quindi o li si usa tra virgolette, come in espressioni_1.y
  %% oppure li si chiama in altro modo, come in espressioni_2.y

- espressioni_3: grammatica ambigua per espressioni aritmetiche

- espressioni_4: grammatica ambigua per espressioni aritmetiche
  %% con direttive per la definizione di associativita' e precedenza
  %%
  %%      %left plus  ---> dice che plus associa a sinistra
  %%      %left times ---> dice che times associa a sinistra
  %%                  ---> l'ordine in cui sono scritte dice che times ha la
  %%                       precedenza su (lega piu' di) plus




