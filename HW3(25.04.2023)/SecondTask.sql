WITH sales AS(
	SELECT YEAR(Orders.ord_datetime) AS yr,
		   MONTH(Orders.ord_datetime) AS mnth,
		   Groups.gr_id AS grp,
		   COUNT(Orders.ord_an) AS cnt
	FROM Orders
	JOIN Analysis 
	ON Orders.ord_an = Analysis.an_id
	JOIN Groups
	ON Analysis.an_group = Groups.gr_id
	GROUP BY YEAR(Orders.ord_datetime),
			 MONTH(Orders.ord_datetime),
			 Groups.gr_id
)
	SELECT sales.yr, sales.mnth, sales.grp,
		   SUM(sales.cnt) OVER(PARTITION BY sales.grp
					      ORDER BY sales.yr, sales.mnth)
	FROM sales
	ORDER BY sales.grp

