% Graph: Locations
edge(pune, mumbai).
edge(pune, nashik).
edge(mumbai, surat).
edge(mumbai, goa).
edge(nashik, nagpur).
edge(surat, delhi).
edge(goa, delhi).

% DFS
dfs(Start, Goal, Path) :-
    dfs_path(Start, Goal, [Start], RevPath),
    reverse(RevPath, Path).

% Goal found
dfs_path(Goal, Goal, Visited, Visited).

% Explore neighbors
dfs_path(Node, Goal, Visited, Path) :-
    edge(Node, Next),
    \+ member(Next, Visited),
    dfs_path(Next, Goal, [Next|Visited], Path).
