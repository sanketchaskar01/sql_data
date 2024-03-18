use sanket1;
CREATE TABLE Movie (MovieID VARCHAR(3),MovieName VARCHAR(50),Category VARCHAR(50),ReleaseDate DATE,ProductionCost INT,BusinessCost INT);
desc movie;
INSERT INTO Movie (MovieID, MovieName, Category, ReleaseDate, ProductionCost, BusinessCost) VALUES ('001', 'Hindi_Movie', 'Musical', '2018-04-23', 124500, 130000),('002', 'Tamil_Movie', 'Action', '2016-05-17', 112000, 118000),('003', 'English_Movie', 'Horror', '2017-08-06', 245000, 360000),('004', 'Bengali_Movie', 'Adventure', '2017-01-04', 72000, 100000),('005', 'Telugu_Movie', 'Action', NULL, 100000, NULL),('006', 'Punjabi_Movie', 'Comedy', NULL, 30500, NULL);
SELECT * FROM MOVIE;
SELECT MOVIEID,MOVIENAME,PRODUCTIONCOST+BUSINESSCOST AS 'TOTAL_EARNING' FROM MOVIE;
SELECT distinct CATEGORY from MOVIE;
SELECT MOVIEID,MOVIENAME,BUSINESSCOST-PRODUCTIONCOST AS 'TOTAL_EARNING' FROM MOVIE;