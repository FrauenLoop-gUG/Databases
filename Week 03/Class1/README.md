# Week3 Class1 #

## Content Covered: ##

- Review of previous class

- Whiteboard review of dataset retrieval
	- What does left join do
	- How to visualize this
	- Difference between SELECT-ing columns and WHERE clauses

- Complete MonaLisa Chapter 3 quiz

- Aggregation functions

- Chapter 4 of MonaLisa


First multi-join, multi-table queries:

```sql

SELECT * FROM Users u 
LEFT JOIN Books b on u.id = b.ownerId
LEFT JOIN Reviews r on b.id = r.bookId;


SELECT DISTINCT u.id, AVG(r.numStars) FROM Users u
LEFT JOIN Books b on u.id = b.ownerId
LEFT JOIN Reviews r on b.id = r.bookId
GROUP BY u.id
ORDER BY AVG(r.numStars) DESC;

```