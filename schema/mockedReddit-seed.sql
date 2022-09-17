INSERT INTO users (id, username, email, password, profile_picture, profile, joined_date) 
VALUES (1, 'srustich0', 'gdarracott0@geocities.com', 'Mmlj6Nu', 'https://robohash.org/nihilexplicabosit.png?size=90x90&set=set1', 'Adaptive scalable time-frame', '2021-09-30 19:27:53'), 
(2, 'afinnie1', 'kbucklee1@marketwatch.com', 'BOqVRBoH', 'https://robohash.org/commodivoluptatemaliquid.png?size=90x90&set=set1', 'Persevering human-resource knowledge base', '2022-03-08 05:34:58'),
(3, 'agibbings2', 'kkaspar2@geocities.com', 'QDXCkzkTa', 'https://robohash.org/magnamlaborehic.png?size=90x90&set=set1', 'Managed tangible complexity', '2022-01-17 01:02:30'),
(4, 'tlewsam3', 'maberkirder3@ask.com', 'YxWpiUsEcZta', 'https://robohash.org/quoquirepellendus.png?size=90x90&set=set1', 'Triple-buffered object-oriented hub', '2021-11-04 19:43:37'),
(5, 'kmoulds4', 'schittock4@soup.io', 'TdrTbrj0', 'https://robohash.org/ipsarationequi.png?size=90x90&set=set1', 'Business-focused leading edge service-desk', '2021-12-10 05:09:37'),
(6, 'tjess5', 'ocorney5@about.me', 'SlF3NJNW', 'https://robohash.org/utaspernaturnihil.png?size=90x90&set=set1', 'Cross-group incremental moratorium', '2022-08-23 02:25:11'),
(7, 'dsouthard6', 'slyven6@yellowbook.com', 'g4qzABY57zvT', 'https://robohash.org/etoccaecatiodit.png?size=90x90&set=set1', 'Phased asynchronous neural-net', '2022-04-11 02:02:36'),
(8, 'mdavidovics7', 'spresland7@360.cn', 'An0G1v5', 'https://robohash.org/numquammolestiaeeum.png?size=90x90&set=set1', 'Up-sized multi-state algorithm', '2022-08-15 00:56:40'),
(9, 'hbockler8', 'egarnett8@mashable.com', 'zuU4wV', 'https://robohash.org/voluptatesexpeditaut.png?size=90x90&set=set1', 'Pre-emptive full-range array', '2022-08-04 02:03:13'),
(10, 'aharriott9', 'hwonter9@shinystat.com', '95bU0d', 'https://robohash.org/atetaut.png?size=90x90&set=set1', 'User-friendly leading edge synergy', '2022-05-08 16:58:59');


INSERT INTO post_categories (id, category) VALUES (1,'Automotive'),
(2,'Beauty'),
(3,'Books and Literature'),
(4,'Business'),
(5,'Careers'),
(6,'Education'),
(7,'Events'),
(8,'Family and Parenting'),
(9,'Food and Drink'),
(10,'Gaming'),
(11,'Health'),
(12,'Hobbies and Interests'),
(13,'Home and Garden'),
(14,'Law, Government, and Politics'),
(15,'Life Stages'),
(16,'Movies and Television'),
(17,'Music and Radio'),
(18,'Personal Finance'),
(19,'Pets'),
(20,'Science'),
(21,'Society'),
(22,'Sports'),
(23,'Style and Fashion'),
(24,'Technology and Computing'),
(25,'Travel');


INSERT INTO messages (id, post_category_id, user_id, text, time_stamp) VALUES (1, 3, 1, 'diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante', '2022-03-18 18:09:58'), 
(2, 7, 9, 'nisi eu orci mauris lacinia sapien quis libero nullam sit', '2022-07-22 06:38:28'), 
(3, 2, 8, 'vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor', '2022-01-26 11:27:48'), 
(4, 7, 6, 'cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec', '2021-12-09 16:17:18'), 
(5, 7, 6, 'vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod', '2022-07-13 17:09:32'), 
(6, 2, 8, 'amet sem fusce consequat nulla nisl nunc nisl duis bibendum', '2022-02-07 03:30:37'), 
(7, 2, 4, 'pellentesque at nulla suspendisse potenti cras in purus eu magna', '2022-02-28 16:47:52'), 
(8, 2, 6, 'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam', '2022-07-27 16:15:50'), 
(9, 4, 3, 'phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie', '2022-07-08 16:09:23'), 
(10, 6, 9, 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc', '2022-04-17 18:15:47'), 
(11, 4, 4, 'eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante', '2022-05-04 22:33:11'), 
(12, 4, 10, 'morbi ut odio cras mi pede malesuada in imperdiet et commodo', '2021-10-01 07:02:48'), 
(13, 7, 2, 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac', '2022-08-02 03:07:30'), 
(14, 5, 10, 'nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem', '2021-12-05 14:57:43'), 
(15, 3, 9, 'sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum', '2022-02-07 00:54:18'), 
(16, 8, 7, 'purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', '2022-08-17 16:47:56'), 
(17, 7, 3, 'congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', '2022-03-08 02:51:12'), 
(18, 8, 10, 'pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse', '2022-05-01 21:08:22'), 
(19, 4, 9, 'ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui', '2022-03-20 00:47:28'), 
(20, 4, 7, 'morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed', '2022-08-31 16:29:35'), 
(21, 4, 10, 'commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem', '2021-09-21 04:00:22'), 
(22, 3, 6, 'pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante', '2021-10-17 06:57:00'), 
(23, 2, 8, 'sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue', '2022-04-25 00:22:31'), 
(24, 5, 6, 'orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor', '2022-05-10 10:22:42'), 
(25, 8, 8, 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis', '2022-04-19 02:54:48');


INSERT INTO follows (user_being_followed_id, user_following_id ) VALUES
(2,3),
(5,7),
(8,1);


INSERT INTO likes (user_id, message_id) VALUES
(2,2),
(5,10),
(3,8);