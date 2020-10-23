n = int(input())
agreements = int(input())
r = int(input())
c = int(input())

edgeList = []
for i in range(agreements):
    edgeList.append(list(map(lambda x:int(x),input().strip().split())))


g = {}
for i in range(1,n+1):
    g[i] = []
# print(g)

for edge in edgeList:
    g[edge[1]].append(edge[0])
    g[edge[0]].append(edge[1])
    
print(g)




g = {1:[7,4],
       2:[3],
       3:[2,4],
       4:[3,1],
       5:[6,1],
       6:[5,7],
       7:[1,6] }
       
visited = set()
       
def dfs(visited, g, node):
    if node not in visited:
        print (node)
        visited.add(node)
        for neighbour in g[node]:
            dfs(visited, g, neighbour) 
dfs(visited, g, 2)            
