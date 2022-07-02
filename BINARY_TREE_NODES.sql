### This Query  findes the node type of Binary Tree ordered by the value of the node. 
### Output one of the following for each node:
### Root: If node is root node.
### Leaf: If node is leaf node.
### Inner: If node is neither root nor leaf node.

SELECT N, 'Root' 
FROM BST
WHERE P IS NULL
UNION
SELECT A.N, 'Leaf'
FROM BST A
LEFT JOIN BST B
ON A.N=B.P
WHERE B.P IS NULL
UNION
SELECT DISTINCT(A.N), 'Inner'
FROM BST A
INNER JOIN BST B
ON A.N=B.P
WHERE A.P IS NOT NULL
ORDER BY N

