likes(samu,horror).
likes(payalii,romantic).
likes(butaki,sports).
likes(khabuu,emotional).
likes(adudi,thriller).
likes(suu,action).

movie(conjuring,horror).
movie(taqdeer,romantic).
movie(spider,thriller).
movie(kgf,action).
movie(shiddat,emotional).
movie(dangal,sports).

recommend(User, Movie) :-
 likes(User, Category),
 movie(Movie, Category).

