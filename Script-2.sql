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
('American Idol',DATE '2018-01-01'),
('Ragnarok',DATE '2019-01-01'),
('Limitless',DATE '2018-01-01'),
('Romeo and Juliet',DATE '2019-01-01'),
('Ice Age',DATE '2020-01-01'),
('Friends',DATE '2021-01-01'),
('Zootropolis',DATE '2020-01-01'),
('Terminator',DATE '2018-01-01'),
('Snatch',DATE '2022-01-01'),
('Chocolat',DATE '2020-01-01');

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
('Bette Davis Eyes','9','92'),
('my own','1','129'),
('own my','2','324'),
('my','3','231'),
('oh my god','4','340'),
('myself','5','180'),
('by myself','6','177'),
('bemy self','7','90'),
('go my','8','165'),
('myself by','9','162'),
('by myself by','10','181'),
('beemy','1','211'),
('premyne','2','210');






INSERT INTO collection (name, year_of_release)
VALUES
('Cry',DATE '2019-01-01'),
('The Dark',DATE '2018-01-01'),
('Rain',DATE '2022-01-01'),
('Limit',DATE '2021-01-01'),
('Stoneheart',DATE '2018-01-01'),
('Moon',DATE '2018-01-01'),
('Requiem',DATE '2020-01-01'),
('Firestarter',DATE '2019-01-01'),
('The Ring',DATE '2020-01-01'),
('Interstellar',DATE '2022-01-01');


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
(1,3),
(1,1),
(2,2),
(3,3),
(4,1),
(5,4),
(6,7),
(7,6),
(8,8),
(9,8),
(10,9),
(11,3),
(12,1),
(12,2),
(13,7),
(14,3),
(15,1),
(15,8),
(16,3),
(17,9),
(17,10),
(18,5),
(19,5),
(20,10);







