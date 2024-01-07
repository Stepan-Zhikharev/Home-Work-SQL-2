INSERT INTO performers (name)
VALUES ('Snoop'),
('Ice'),
('Dre'),
('Phill');
INSERT INTO "style" (name_style)
VALUES ('Pop'),
('Rap'),
('Jazz');
INSERT INTO album (name, year_of_release)
VALUES ('A', '2019-03-15'),
('B', '2020-01-01'),
('C', '2003-07-21');
INSERT INTO track (name, duration, album_id)
VALUES ('Out Of Dawn', '00:03:10', 1),
('Seven Nation Army', '00:03:51', 1),
('Feel It Still', '00:02:42', 2),
('Summer Wine', '00:04:16', 2),
('Love Street', '00:02:51', 3),
('Dancing Queen', '00:03:46', 3);
INSERT INTO collection (name, year_of_release)
VALUES ('D', '2005-02-03'),
('F', '2020-05-13'),
('G', '2023-11-01'),
('H', '2021-08-07');
INSERT INTO performers_style (style_id, performers_id)
VALUES (1, 4),
(2, 1),
(2, 2),
(3, 3);
INSERT INTO performers_album (performers_id, album_id)
VALUES (1, 1),
(2, 1),
(3, 2),
(4, 3);
INSERT INTO track_collection (track_id, collection_id)
VALUES (1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 4);