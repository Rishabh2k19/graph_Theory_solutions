graph = {  0:[1,9],
       1:[0,8],
       2:[3,8],
       3:[2,4,5],
       4:[3],
       5:[3,6],
       6:[5,7],
       7:[8,11,10,6],
       8:[7,1,9,2],
       9:[0,8,10],
       10:[7,11,9],
       11:[7,10]}

visited = set()

def dfs(visited, graph, node):
    if node not in visited:
        print (node)
        visited.add(node)
        for neighbour in graph[node]:
            dfs(visited, graph, neighbour)

dfs(visited, graph, 0)


