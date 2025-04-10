--Tasks
--Task 1: List the top 5 customers by total purchase amount.
/*select * from Invoice;
select * from InvoiceLine;
SELECT * FROM Customer;*/

SELECT c.CustomerId, c.FirstName, c.LastName, sum(i.total) AS TotalAmount
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY TotalAmount DESC,c.FirstName
LIMIT 5;


--Task 2:Find the most popular genre in terms of total tracks sold.
SELECT g.Name AS Genre, SUM(il.Quantity) AS TotalTracksSold
FROM Genre g
JOIN Track t ON g.GenreId = t.GenreId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY g.GenreId
ORDER BY TotalTracksSold DESC
LIMIT 1;

--Task 3:Retrieve all employees who are managers along with their subordinates.
SELECT e.EmployeeId AS ManagerId, e.FirstName AS ManagerFirstName, e.LastName AS ManagerLastName,
       s.EmployeeId AS SubordinateId, s.FirstName AS SubordinateFirstName, s.LastName AS SubordinateLastName
FROM Employee e
JOIN Employee s ON e.EmployeeId = s.ReportsTo
ORDER BY e.EmployeeId;


--Task 4 : For each artist, find their most sold album.
WITH AlbumSales AS (
    SELECT ar.Name AS Artist, al.Title AS Album, SUM(il.Quantity) AS TotalSold
    FROM Artist ar
    JOIN Album al ON ar.ArtistId = al.ArtistId
    JOIN Track t ON al.AlbumId = t.AlbumId
    JOIN InvoiceLine il ON t.TrackId = il.TrackId
    GROUP BY ar.ArtistId, al.AlbumId
)
SELECT Artist, Album, TotalSold
FROM (
    SELECT Artist, Album, TotalSold, ROW_NUMBER() OVER (PARTITION BY Artist ORDER BY TotalSold DESC) AS rn
    FROM AlbumSales
) AS RankedAlbums
WHERE rn = 1;

--Task 5:Write a query to get monthly sales trends in the year 2013.
select strftime('%m', InvoiceDate) as Month , sum (total) from Invoice 
where strftime('%Y',invoicedate)=='2021'
Group by  Month 
order by Month asc;
