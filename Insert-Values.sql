INSERT INTO [CF.Cafe] 
VALUES ('cafe_001','NuVegan Cafe',' Vegetarian/Vegan Restaurant',2.5,'Baltimore 
Ave',38.991512,-76.933671,'20740'),
('cafe_002','Milk and Honey Café ','Café',2.5,'Baltimore Ave',39.023296,-76.924244,
'20740'),
('cafe_003','Vigilante Coffee','Coffee Shop',1,'Baltimore Ave',38.992042,-
76.933623,'20740'),
('cafe_004','Starbucks','Coffee Shop',2.5,'Baltimore Ave',38.981861,-
76.947797,'20740'),
('cafe_005','Ikea Restaurant and Café',' Café',1,'Baltimore Ave',39.020724,-
76.931024,'20740'),
('cafe_006','7-Eleven','Convenience Store',2,'Baltimore Ave',38.998382,-
76.924738,'20740'),
('cafe_007','Board and Brew','Gaming Cafe',2.5,'Baltimore Ave',38.991618,-
76.933648,'20740'),
('cafe_008','Caseys Coffee','Café',1,'Campus Dr',38.984595,-76.951476,'20740'),
('cafe_009','Dunkin','Coffee Shop',1,'Knox Rd',38.984632,-76.966796,'20740'),
('cafe_010','Rudys Café' ,'Café',1,'Mowatt Ln',38.984776,-77.019327,'20742')
INSERT INTO [CF.Feature] 
VALUES ('feat_001','Outdoor Seating'),
('feat_002','Open All Days'),
('feat_003','Weekdays Only'),
('feat_004','Morning'),
('feat_005','Afternoon'),
('feat_006','Evening'),
('feat_007','Vehicle Parking'),
('feat_008','Bike Parking'),
('feat_009','Offers Wifi')
INSERT INTO [CF.ProvidedFeatures] 
VALUES ('cafe_001', 'feat_001'),
('cafe_001', 'feat_002'),
('cafe_001', 'feat_005'),
('cafe_001', 'feat_006'),
('cafe_001', 'feat_009'),
('cafe_002', 'feat_004'),
('cafe_002', 'feat_008'),
('cafe_002', 'feat_009'),
('cafe_003', 'feat_005'),
('cafe_003', 'feat_006'),
('cafe_003', 'feat_007'),
('cafe_004', 'feat_002'),
('cafe_004', 'feat_009'),
('cafe_005', 'feat_004'),
('cafe_005', 'feat_005'),
('cafe_005', 'feat_006'),
('cafe_005', 'feat_007'),
('cafe_006', 'feat_002'),
('cafe_006', 'feat_007'),
('cafe_006', 'feat_008'),
('cafe_007', 'feat_002'),
('cafe_007', 'feat_006'),
('cafe_007', 'feat_009'),
('cafe_008', 'feat_001'),
('cafe_008', 'feat_002'),
('cafe_008', 'feat_009'),
('cafe_009', 'feat_004'),
('cafe_009', 'feat_005'),
('cafe_009', 'feat_006'),
('cafe_010', 'feat_001'),
('cafe_010', 'feat_003'),
('cafe_010', 'feat_004'),
('cafe_010', 'feat_005'),
('cafe_010', 'feat_009')
INSERT INTO [CF.ItemDetails] 
VALUES ('item_001','Espresso'),
('item_002','Chai Tea')
INSERT INTO [CF.Prepares] 
VALUES ('cafe_001', 'item_001', 3),
('cafe_002', 'item_001', 3),
('cafe_003', 'item_001', 3),
('cafe_004', 'item_001', 2.45),
('cafe_005', 'item_001', 4.99),
('cafe_006', 'item_001', 1.8),
('cafe_007', 'item_001', 2.75),
('cafe_008', 'item_001', 2.4),
('cafe_009', 'item_001', 1.15),
('cafe_010', 'item_001', 2.45),
('cafe_001', 'item_002', 2.5),
('cafe_002', 'item_002', 3),
('cafe_003', 'item_002', 4.5),
('cafe_004', 'item_002', 3.95),
('cafe_005', 'item_002', 3.99),
('cafe_006', 'item_002', 2.5),
('cafe_007', 'item_002', 4.75),
('cafe_008', 'item_002', 2.35),
('cafe_009', 'item_002', 3.19),
('cafe_010', 'item_002', 2.45)
INSERT INTO [CF.Reviewer] 
VALUES ('revr_001','Imran','S'),
('revr_002','bcsanders',NULL),
('revr_003','Tea','D'),
('revr_004','Italiano58',NULL),
('revr_005','Kyle','L'),
('revr_006','laurib471',NULL),
('revr_007','Kosha','L'),
('revr_008','Julstumpff',NULL),
('revr_009','Jeena','L'),
('revr_010','TerryElvers',NULL),
('revr_011','Jo','W'),
('revr_012','Lucinda','N'),
('revr_013','Mia','M'),
('revr_014','rejeneration',NULL),
('revr_015','Jonathan','P'),
('revr_016','JAMtraveler95',NULL),
('revr_017','Quiana','R'),
('revr_018','tabbyreeb',NULL),
('revr_019','Pete','B'),
('revr_020','David','Kirsch')
INSERT INTO [CF.ReviewSource] 
VALUES ('srce_001','Yelp'),
('srce_002','TripAdvisor'),
('srce_003','Foursquare')
INSERT INTO [CF.Review] 
VALUES ('cafe_001','srce_001','revr_001','6/26/2021','the reviews for nuvegan were 
good and so i decided to try it. there are a variety of options to choose from and
you can make your own selections of entree and sides. i choose the bbq tofu, sweet
potatoes and asian noodle salad. bbq tofu was really good, asian noodle salad was 
decent (better when paired with something else) and the sweet potato had too much 
nutmeg',4),
('cafe_001','srce_002','revr_002','5/14/2019','I had lunch at the restaurant. The 
buffet was good but the BBQ Tofu was too sweet and the greens and cabbage 
overcooked. I appreciated the vegan fare but the restaurant could do more with 
presentation and flavoring of foods and the service both in giving the food and at 
the cash register is frustratingly slow and inefficient. I would eat here again but
hope for fresher, more nuanced food and quick service for the buffet food.',4),
('cafe_002','srce_001','revr_003','6/23/2021','Omg this place is so yummy I think I
have eaten here about 4 times in an week ! The French toast is to DIE 4. The grits 
could be seasoned better. But the Food is amazing!',5),
('cafe_002','srce_002','revr_004','7/24/2021','We found this little restaurant and 
actually ate here twice in our 3 day stay! Everything on the menu was 
exceptional... taste, presentation and quality! The service was good and even in 
the midst of Covid we enjoyed the atmosphere!',4),
('cafe_003','srce_001','revr_005','11/4/2021','Vigilante is a cute coffee place 
right off campus. It is actually the only nearby coffee place on north campus, but 
their steep prices are not super student-friendly. I recommend going there for 
interviews, study dates, and other casual meet ups.',4),
('cafe_003','srce_002','revr_006','10/7/2021','Such a cool place. Super friendly 
service and delicious coffee & bagel sandwiches! Our daughter got the House made 
Vanilla Latte- it was out of this world!',5),
('cafe_004','srce_001','revr_007','3/19/2019','No complaints about this location. 
It is crowded During lunch time but the service was quick and fast. My sugar free 
cinnamon dolce cinnamon was tasty as always.',4),
('cafe_004','srce_002','revr_008','12/6/2018','Worst service ever at a coffee shop.
Will not be back. Really is it that hard to make Starbucks coffee? Cannot 
understand. If you work at a coffee shop, you should know the difference between 
the types of coffee.',1),
('cafe_005','srce_001','revr_009','10/21/2021','Decent selections of furniture, 
bedding, household accessories, cleaning products, decent cafe with one of the best
coffees, cinnamon rolls, and meatballs in the cafeteria.',4),
('cafe_005','srce_002','revr_010','2/24/2021','OK, this is my first time eating at 
Ikea. I was not holding out much hope. Then I got to the restaurant! Wow! This is a
full cafeteria! Hot and cold food, great chocolate cake, very good food. My son had
the chicken fingers (as did I - been a long time since I have had any) and my wife 
had the meatballs. All were hot, fresh and very good',4),
('cafe_006','srce_001','revr_011','3/14/2017','I would not usually review a 7-11 
however, this is my favorite 7-11 EVER! Their new "GO! Yum" line of healthy snacks
and desserts is REALLY good, surprisingly, and the products freshly made and 
definitely not thrown together. ',4),
('cafe_006','srce_002','revr_012','2/12/2019','This is our favorite neighborhood 7-
11 because they have gas at comparable price, friendly staff, quick service and I 
can usually catch a sale on snacks, bottled water. As a tea drinker, I have found 
stevia sweeteners there sometimes. Staff are so friendly and welcoming. When we do 
not feel like driving to Costco for gas, we often purchase our gas there.',4),
('cafe_007','srce_001','revr_013','9/6/2021','First and foremost, the concept of 
this restaurant was very interesting and well put together. The cafe was 
beautifully decorated with comfy couches, board games on shelves, and large 
windows. I also had a wonderful server who took care me and my company.',3),
('cafe_007','srce_002','revr_014','6/17/2019','The wine is very good here and the 
deals for happy hour are good. The food is also good but we usually come here to 
drink. The coffee is good as well.',4),
('cafe_008','srce_001','revr_015','10/7/2021','Cheap coffee that taste better than 
Starbucks, 10/10 and super friendly staff. Nothing beats It!',5),
('cafe_008','srce_002','revr_016','4/15/2019','While visiting the University of 
Maryland, we stopped for an early lunch. It was a delightful surprise to find great
tasting wraps available in a local coffee shop.',4),
('cafe_009','srce_001','revr_017','9/17/2019','Customer service is TERRIBLE in the 
evening especially when there is no manager around!! Makes me sad to have to stop 
supporting a local business.',1),
('cafe_009','srce_002','revr_018','7/26/2021','They do not care. HOT DOUGHNUTS NOW.
They were cold. Tighten up kids. It is so annoying that you cannot get an order 
right. HOT HOT',1),
('cafe_010','srce_003','revr_019','10/18/2011','Newly renovated! Looks great. Great
place to grab a snack or some quick food/drink. Solid place to meet up and chat 
with friends too.',NULL),
('cafe_010','srce_003','revr_020','12/6/2019','Friendly staff. Good espresso 
drinks. Food is institutional.',NULL)
