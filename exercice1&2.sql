CREATE TABLE Author(
	Authorid integer,
	Authorname varchar(20),
	PRIMARY KEY (Authorid)
);

CREATE TABLE  Book(
	Bookid integer,
	Authorid integer ,
	Amount Numeric(7,2),
	Rating integer,
	Booktype varchar(25),
	PRIMARY KEY (Bookid),
	FOREIGN KEY (Authorid) REFERENCES Author(Authorid) ON DELETE CASCADE ON UPDATE CASCADE,
	CHECK(rating<=10 AND rating>0),
	CHECK(Booktype IN ('Fictionadulte', 'Non-fiction-adulte', 'Fiction-jeunesse', 'Non-fictionjeunesse') )
);

CREATE assertion check_number_of_book_and_author
	CHECK (
	(SELECT COUNT(*) FROM Book B)+(SELECT COUNT(*) FROM Author A)<10000
	);