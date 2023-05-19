INSERT INTO genres (name)
VALUES
('Reggae'),
('country'),
('Baroque'),
('Soul'),
('Pop'),
('Jazz'),
('Blues'),
('Opera'),
('Drum & Bass'),
('House');

INSERT INTO performers (nickname)
VALUES
('Michelle Hale'),
('Jennifer Underhill'),
('Barry Gordon'),
('Megan Higgs'),
('Luke Boyle'),
('Nicholas Mcneill'),
('Caitlyn'),
('Kieth Palmer'),
('Amelia'),
('Morris');

INSERT INTO album (name, year_of_execution)
VALUES
('American Idol','2018-01-01'),
('Ragnarok','2019-01-01'),
('Limitless','2018-01-01'),
('Romeo and Juliet','2019-01-01'),
('Ice Age','2020-01-01'),
('Friends','2021-01-01'),
('Zootropolis','2020-01-01'),
('Terminator','2018-01-01'),
('Snatch','2022-01-01'),
('Chocolat','2020-01-01');

INSERT INTO track (name, album_id, duration)
VALUES
('Rolling In The Deep','10','103'),
('You Light Up My Life','10','145'),
('Lean on','1','181'),
('Sway','1','320'),
('I Gotta Feeling','3','155'),
('Flashdance...What A Feeling','4','220'),
('I Will Always Love You','4','205'),
('My Feelings','5','168'),
('We Belong Together','3','260'),
('Truly Madly Deeply','5','233'),
('Billionaire','7','166'),
('Physical','7','117'),
('Smooth','6','295'),
('My Familiar','6','337'),
('Baila Morena','2','71'),
('My Demons','2','149'),
('Cheap thrills','8','180'),
('Eye Of my Tiger','8','104'),
('Listen to my heart','9','222'),
('Bette Davis Eyes','9','92');

INSERT INTO collection (name, year_of_release)
VALUES
('Cry','2019-01-01'),
('The Dark','2018-01-01'),
('Rain','2022-01-01'),
('Limit','2021-01-01'),
('Stoneheart','2018-01-01'),
('Moon','2018-01-01'),
('Requiem','2020-01-01'),
('Firestarter','2019-01-01'),
('The Ring','2020-01-01'),
('Interstellar','2022-01-01');


INSERT INTO genresoftheperformer (performer_id, genres_id)
VALUES
(1,1),
(1,2),
(2,3),
(3,3),
(4,1),
(5,4),
(6,6),
(7,7),
(7,5),
(8,5),
(8,10),
(9,8),
(10,9),
(10,3);


INSERT INTO albumperformers (performers_id, album_id)
VALUES
(1,2),
(1,1),
(2,3),
(3,3),
(4,1),
(5,4),
(6,7),
(7,6),
(8,8),
(9,8),
(10,9),
(10,10);

INSERT INTO collectiontracks (track_id, collection_id)
VALUES
(121,3),
(121,1),
(122,2),
(123,3),
(124,1),
(125,4),
(126,7),
(127,6),
(128,8),
(129,8),
(130,9),
(131,3),
(132,1),
(132,2),
(133,7),
(134,3),
(135,1),
(135,8),
(136,3),
(137,9),
(137,10),
(138,5),
(139,5),
(140,10);







