% Graph
edge(pune, mumbai).
edge(pune, nashik).
edge(mumbai, surat).
edge(mumbai, goa).
edge(nashik, nagpur).
edge(surat, delhi).
edge(goa, delhi).
edge(nagpur, delhi).

% BFS
bfs(Start, Goal, Path) :-
    bfs_queue([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

% Goal found
bfs_queue([[Goal|Path]|_], Goal, [Goal|Path]).

% Explore neighbors
bfs_queue([[Node|Path]|Rest], Goal, Result) :-
    findall(
        [Next, Node|Path],
        (edge(Node, Next),
         \+ member(Next, [Node|Path])),
        NewPaths
    ),
    append(Rest, NewPaths, Queue),
    bfs_queue(Queue, Goal, Result).
