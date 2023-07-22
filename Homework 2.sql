/*
Folorunsho Atanda
Homework 2
*/

-- Question 1
CREATE TABLE videos(
VideoID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Title 	VARCHAR(255) NOT NULL, 
Duration INT NULL,
VideoURL VARCHAR(255) NULL
);

INSERT INTO videos(Title, Duration, VideoURL)
VALUES
('True Facts: The Beaver', 14, 'https://www.youtube.com/watch?v=s2YXFeraM8I'),
('Cunk on Britain the Empire Strikes Back', 29, 'https://www.youtube.com/watch?v=KqcOR6x8PTo'),
('Ron Swanson Loving Riddles', 11, 'https://www.youtube.com/watch?v=CNNUJeNb4Qs'),
('Introduction to Tensors', 12, 'https://www.youtube.com/watch?v=uaQeXi4E7gA');

SELECT * FROM videos;

-- Question 2
CREATE TABLE reviews(
ReviewID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
UserName VARCHAR(255) NOT NULL,
VideoID INT NULL,
Rating INT NULL,
Review VARCHAR(255) NULL,
CONSTRAINT FOREIGN KEY(VideoID)
REFERENCES videos(VideoID)
ON DELETE SET NULL
);

INSERT INTO reviews(UserName, VideoID, Rating, Review)
VALUES
('Mercedes', 3, 5, 'Very funny'),
('Kola', 1, NULL, 'Interesting'),
('Folu', 3, 5, 'Ron Swanson is the best'),
('Kola', 4, 4, 'Best explanation of tensors');


SELECT * FROM reviews;

-- Question 3
SELECT
R.UserName as 'User',
R.VideoID as 'Video ID',
V.Title as 'Video Title',
V.VideoURL as 'Video URL',
R.Review as 'Review'
FROM reviews as R
INNER JOIN videos as V
ON R.VideoID = V.VideoID