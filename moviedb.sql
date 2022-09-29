-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 08:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `UserID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`UserID`) VALUES
('1'),
('10'),
('2'),
('3'),
('4'),
('5'),
('6'),
('7'),
('8'),
('9');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `UserID` varchar(30) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Phonenumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`UserID`, `Name`, `Phonenumber`) VALUES
('11', 'Thor', 64754272),
('12', 'Odin', 63658091),
('13', 'Hades', 64383803),
('14', 'Hercules', 90038823),
('15', 'Athena', 67472878),
('16', 'Phospherene', 62924992),
('17', 'Zeus', 67387900),
('18', 'Raj', 62994416),
('19', 'Kumar', 63929339),
('20', 'Poseidon', 63420677),
('21', 'Usar', 63420678),
('22', 'Jayce', 63420679),
('23', 'Laurissa', 63420680),
('24', 'Clotilda', 63420681),
('25', 'Jo', 63420682),
('26', 'Joann', 63420683),
('27', 'Gussie', 63420684),
('28', 'Adriana', 63420685),
('29', 'Albie', 63420686),
('30', 'Monroe', 63420687),
('31', 'Rorie', 63420688),
('32', 'Logan', 63420689),
('33', 'Isadora', 63420690),
('34', 'Dewayne', 63420691),
('35', 'Prosper', 63420692),
('36', 'Tina', 63420693),
('37', 'Addison', 63420694),
('38', 'Aurora', 63420695),
('39', 'Kristal', 63420696),
('40', 'Bria', 63420697),
('41', 'Beatrix', 63420698),
('42', 'Michele', 63420699),
('43', 'Happy', 63420700),
('44', 'Cary', 63420701),
('45', 'Hazim', 63420702),
('46', 'Ricky', 63420703),
('47', 'Julian', 63420704),
('48', 'Moriah', 63420705),
('49', 'Geoff', 63420706),
('50', 'River', 63420707);

-- --------------------------------------------------------

--
-- Table structure for table `find`
--

CREATE TABLE `find` (
  `Title` varchar(30) NOT NULL,
  `TheatreID` varchar(10) NOT NULL,
  `SearchHistory` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `looksupmovies`
--

CREATE TABLE `looksupmovies` (
  `Title` varchar(30) NOT NULL,
  `UserID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `makesbooking`
--

CREATE TABLE `makesbooking` (
  `bookingID` varchar(20) NOT NULL,
  `DateBooking` date DEFAULT NULL,
  `PaymentType` varchar(30) DEFAULT NULL,
  `UserID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `makesbooking`
--

INSERT INTO `makesbooking` (`bookingID`, `DateBooking`, `PaymentType`, `UserID`) VALUES
('Book01', '2023-09-30', 'Cash', '36'),
('Book02', '2023-10-01', 'Visa', '24'),
('Book03', '2023-10-02', 'Mastercard', '15'),
('Book04', '2023-10-03', 'Paynow', '42'),
('Book05', '2023-10-04', 'Cash', '13'),
('Book06', '2023-10-05', 'Visa', '20'),
('Book07', '2023-10-06', 'Mastercard', '45'),
('Book08', '2023-10-07', 'Paynow', '20'),
('Book09', '2023-10-08', 'Cash', '23'),
('Book10', '2023-10-09', 'Cash', '13');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `Title` varchar(100) NOT NULL,
  `Actor1` varchar(50) DEFAULT NULL,
  `Actor2` varchar(50) DEFAULT NULL,
  `Director` varchar(50) DEFAULT NULL,
  `Runtime` varchar(30) DEFAULT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  `Overview` varchar(500) DEFAULT NULL,
  `IMDB` float DEFAULT NULL,
  `RottenTomatoes` varchar(10) DEFAULT NULL,
  `Metacritic` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`Title`, `Actor1`, `Actor2`, `Director`, `Runtime`, `Genre`, `Overview`, `IMDB`, `RottenTomatoes`, `Metacritic`) VALUES
('12 Years a Slave', 'Chiwetel Ejiofor', 'Michael Kenneth Williams', 'Steve McQueen', '134 min', 'Biography', 'In the antebellum United States, Solomon Northup, a free black man from upstate New York, is abducted and sold into slavery.', 8.1, '95', '96'),
('1917', 'Dean-Charles Chapman', 'George MacKay', 'Sam Mendes', '119 min', 'Drama', 'April 6th, 1917. As a regiment assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message that will stop 1,600 men from walking straight into a deadly trap.', 8.3, '89', '43'),
('A Star Is Born', 'Lady Gaga', 'Bradley Cooper', 'Bradley Cooper', '136 min', 'Drama', 'A musician helps a young singer find fame as age and alcoholism send his own career into a downward spiral.', 7.6, '100', 'N/A'),
('About Time', 'Domhnall Gleeson', 'Rachel McAdams', 'Richard Curtis', '123 min', 'Comedy', 'At the age of 21, Tim discovers he can travel in time and change what happens and has happened in his own life. His decision to make his world a better place by getting a girlfriend turns out not to be as easy as you might think.', 7.8, '68', '55'),
('Ah-ga-ssi', 'Kim Min-hee', 'Jung-woo Ha', 'Chan-wook Park', '145 min', 'Drama', 'A woman is hired as a handmaiden to a Japanese heiress, but secretly she is involved in a plot to defraud her.', 8.1, '96', 'N/A'),
('Airlift', 'Akshay Kumar', 'Nimrat Kaur', 'Raja Menon', '130 min', 'Drama', 'When Iraq invades Kuwait in August 1990, a callous Indian businessman becomes the spokesperson for more than 170,000 stranded countrymen.', 8, '21', 'N/A'),
('Amour', 'Jean-Louis Trintignant', 'Emmanuelle Riva', 'Michael Haneke', '127 min', 'Drama', 'Georges and Anne are an octogenarian couple. They are cultivated, retired music teachers. Their daughter, also a musician, lives in Britain with her family. One day, Anne has a stroke, and the couple\'s bond of love is severely tested.', 7.9, '93', '94'),
('Andhadhun', 'Ayushmann Khurrana', 'Tabu', 'Sriram Raghavan', '139 min', 'Crime', 'A series of mysterious events change the life of a blind pianist, who must now report a crime that he should technically know nothing of.', 8.3, '43', '95'),
('Apollo 13', 'Tom Hanks', 'Bill Paxton', 'Ron Howard', '140 min', 'Adventure', 'NASA must devise a strategy to return Apollo 13 to Earth safely after the spacecraft undergoes massive internal damage putting the lives of the three astronauts on board in jeopardy.', 7.6, '96', '95'),
('Arrival', 'Amy Adams', 'Jeremy Renner', 'Denis Villeneuve', '116 min', 'Drama', 'A linguist works with the military to communicate with alien lifeforms after twelve mysterious spacecrafts appear around the world.', 7.9, '94', '95'),
('Avengers: Endgame', 'Joe Russo', 'Robert Downey Jr.', 'Anthony Russo', '181 min', 'Action', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.', 8.4, '94', '95'),
('Avengers: Infinity War', 'Joe Russo', 'Robert Downey Jr.', 'Anthony Russo', '149 min', 'Action', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', 8.4, '85', '95'),
('Ayla: The Daughter of War', 'Erdem Can', 'Çetin Tekindor', 'Can Ulkay', '125 min', 'Biography', 'In 1950, amid-st the ravages of the Korean War, Sergeant Süleyman stumbles upon a half-frozen little girl, with no parents and no help in sight. Frantic, scared and on the verge of death, ...                See full summary »', 8.4, '64', '95'),
('Baahubali 2: The Conclusion', 'Prabhas', 'Rana Daggubati', 'S.S. Rajamouli', '167 min', 'Action', 'When Shiva, the son of Bahubali, learns about his heritage, he begins to look for answers. His story is juxtaposed with past events that unfolded in the Mahishmati Kingdom.', 8.2, '91', '95'),
('Baby', 'Akshay Kumar', 'Danny Denzongpa', 'Neeraj Pandey', '159 min', 'Action', 'An elite counter-intelligence unit learns of a plot, masterminded by a maniacal madman. With the clock ticking, it\'s up to them to track the terrorists\' international tentacles and prevent them from striking at the heart of India.', 8, '68', '95'),
('Baby Driver', 'Ansel Elgort', 'Jon Bernthal', 'Edgar Wright', '113 min', 'Action', 'After being coerced into working for a crime boss, a young getaway driver finds himself taking part in a heist doomed to fail.', 7.6, '92', '95'),
('Badhaai ho', 'Ayushmann Khurrana', 'Neena Gupta', 'Amit Ravindernath Sharma', '124 min', 'Comedy', 'A man is embarrassed when he finds out his mother is pregnant.', 8, '65', '95'),
('Bãhubali: The Beginning', 'Prabhas', 'Rana Daggubati', 'S.S. Rajamouli', '159 min', 'Action', 'In ancient India, an adventurous and daring man becomes involved in a decades-old feud between two warring peoples.', 8, '16', '95'),
('Bajrangi Bhaijaan', 'Salman Khan', 'Harshaali Malhotra', 'Kabir Khan', '163 min', 'Action', 'An Indian man with a magnanimous heart takes a young mute Pakistani girl back to her homeland to reunite her with her family.', 8, '47', '95'),
('Barfi!', 'Ranbir Kapoor', 'Priyanka Chopra', 'Anurag Basu', '151 min', 'Comedy', 'Three young people learn that love can neither be defined nor contained by society\'s definition of normal and abnormal.', 8.1, '86', '95'),
('Beasts of No Nation', 'Abraham Attah', 'Emmanuel Affadzi', 'Cary Joji Fukunaga', '137 min', 'Drama', 'A drama based on the experiences of Agu, a child soldier fighting in the civil war of an unnamed African country.', 7.7, '21', '95'),
('Before Midnight', 'Ethan Hawke', 'Julie Delpy', 'Richard Linklater', '109 min', 'Drama', 'We meet Jesse and Celine nine years on in Greece. Almost two decades have passed since their first meeting on that train bound for Vienna.', 7.9, '98', '95'),
('Bhaag Milkha Bhaag', 'Farhan Akhtar', 'Sonam Kapoor', 'Rakeysh Omprakash Mehra', '186 min', 'Biography', 'The truth behind the ascension of Milkha Singh who was scarred because of the India-Pakistan partition.', 8.2, '72', '95'),
('Big Hero 6', 'Chris Williams', 'Ryan Potter', 'Don Hall', '102 min', 'Animation', 'A special bond develops between plus-sized inflatable robot Baymax and prodigy Hiro Hamada, who together team up with a group of friends to form a band of high-tech heroes.', 7.8, '89', '95'),
('Birdman or (The Unexpected Virtue of Ignorance)', 'Michael Keaton', 'Zach Galifianakis', 'Alejandro G. Iñárritu', '119 min', 'Comedy', 'A washed-up superhero actor attempts to revive his fading career by writing, directing, and starring in a Broadway production.', 7.7, '91', '95'),
('Blade Runner 2049', 'Harrison Ford', 'Ryan Gosling', 'Denis Villeneuve', '164 min', 'Action', 'Young Blade Runner K\'s discovery of a long-buried secret leads him to track down former Blade Runner Rick Deckard, who\'s been missing for thirty years.', 8, '88', '95'),
('Bohemian Rhapsody', 'Rami Malek', 'Lucy Boynton', 'Bryan Singer', '134 min', 'Biography', 'The story of the legendary British rock band Queen and lead singer Freddie Mercury, leading up to their famous performance at Live Aid (1985).', 8, '60', '95'),
('Boyhood', 'Ellar Coltrane', 'Patricia Arquette', 'Richard Linklater', '165 min', 'Drama', 'The life of Mason, from early childhood to his arrival at college.', 7.9, '97', '95'),
('Bridge of Spies', 'Tom Hanks', 'Mark Rylance', 'Steven Spielberg', '142 min', 'Drama', 'During the Cold War, an American lawyer is recruited to defend an arrested Soviet spy in court, and then help the CIA facilitate an exchange of the spy for the Soviet captured American U2 spy plane pilot, Francis Gary Powers.', 7.6, '90', '95'),
('Call Me by Your Name', 'Armie Hammer', 'Timothée Chalamet', 'Luca Guadagnino', '132 min', 'Drama', 'In 1980s Italy, romance blossoms between a seventeen-year-old student and the older man hired as his father\'s research assistant.', 7.9, '94', '46'),
('Capharnaüm', 'Zain Al Rafeea', 'Yordanos Shiferaw', 'Nadine Labaki', '126 min', 'Drama', 'While serving a five-year sentence for a violent crime, a 12-year-old boy sues his parents for neglect.', 8.4, '90', '46'),
('Captain America: Civil War', 'Joe Russo', 'Chris Evans', 'Anthony Russo', '147 min', 'Action', 'Political involvement in the Avengers\' affairs causes a rift between Captain America and Iron Man.', 7.8, '91', '46'),
('Captain America: The Winter Soldier', 'Joe Russo', 'Chris Evans', 'Anthony Russo', '136 min', 'Action', 'As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and S.H.I.E.L.D agent, Black Widow, to battle a new threat from history: an assassin known as the Winter Soldier.', 7.7, '90', '46'),
('Captain Fantastic', 'Viggo Mortensen', 'George MacKay', 'Matt Ross', '118 min', 'Comedy', 'In the forests of the Pacific Northwest, a father devoted to raising his six kids with a rigorous physical and intellectual education is forced to leave his paradise and enter the world, challenging his idea of what it means to be a parent.', 7.9, '83', '46'),
('Captain Phillips', 'Tom Hanks', 'Barkhad Abdi', 'Paul Greengrass', '134 min', 'Adventure', 'The true story of Captain Richard Phillips and the 2009 hijacking by Somali pirates of the U.S.-flagged MV Maersk Alabama, the first American cargo ship to be hijacked in two hundred years.', 7.8, '93', '46'),
('Chhichhore', 'Sushant Singh Rajput', 'Shraddha Kapoor', 'Nitesh Tiwari', '143 min', 'Comedy', 'A tragic incident forces Anirudh, a middle-aged man, to take a trip down memory lane and reminisce his college days along with his friends, who were labelled as losers.', 8.2, '57', '46'),
('Coco', 'Adrian Molina', 'Anthony Gonzalez', 'Lee Unkrich', '105 min', 'Animation', 'Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.', 8.4, '97', '46'),
('Contratiempo', 'Mario Casas', 'Ana Wagener', 'Oriol Paulo', '106 min', 'Crime', 'A successful entrepreneur accused of murder and a witness preparation expert have less than three hours to come up with an impregnable defense.', 8.1, '38', '46'),
('Creed', 'Michael B. Jordan', 'Sylvester Stallone', 'Ryan Coogler', '133 min', 'Drama', 'The former World Heavyweight Champion Rocky Balboa serves as a trainer and mentor to Adonis Johnson, the son of his late friend and former rival Apollo Creed.', 7.6, '95', '46'),
('Dallas Buyers Club', 'Matthew McConaughey', 'Jennifer Garner', 'Jean-Marc Vallée', '117 min', 'Biography', 'In 1985 Dallas, electrician and hustler Ron Woodroof works around the system to help AIDS patients get the medication they need after he is diagnosed with the disease.', 8, '93', '46'),
('Dangal', 'Aamir Khan', 'Sakshi Tanwar', 'Nitesh Tiwari', '161 min', 'Action', 'Former wrestler Mahavir Singh Phogat and his two wrestler daughters struggle towards glory at the Commonwealth Games in the face of societal oppression.', 8.4, '80', '46'),
('Dark Waters', 'Mark Ruffalo', 'Anne Hathaway', 'Todd Haynes', '126 min', 'Biography', 'A corporate defense attorney takes on an environmental lawsuit against a chemical company that exposes a lengthy history of pollution.', 7.6, '90', '46'),
('Dawn of the Planet of the Apes', 'Gary Oldman', 'Keri Russell', 'Matt Reeves', '130 min', 'Action', 'A growing nation of genetically evolved apes led by Caesar is threatened by a band of human survivors of the devastating virus unleashed a decade earlier.', 7.6, '90', '46'),
('Deadpool', 'Ryan Reynolds', 'Morena Baccarin', 'Tim Miller', '108 min', 'Action', 'A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks.', 8, '85', '46'),
('Deadpool 2', 'Ryan Reynolds', 'Josh Brolin', 'David Leitch', '119 min', 'Action', 'Foul-mouthed mutant mercenary Wade Wilson (a.k.a. Deadpool), brings together a team of fellow mutant rogues to protect a young boy with supernatural abilities from the brutal, time-traveling cyborg Cable.', 7.7, '83', '46'),
('Dil Bechara', 'Sushant Singh Rajput', 'Sanjana Sanghi', 'Mukesh Chhabra', '101 min', 'Comedy', 'The emotional journey of two hopelessly in love youngsters, a young girl, Kizie, suffering from cancer, and a boy, Manny, whom she meets at a support group.', 7.9, '60', '46'),
('Django Unchained', 'Jamie Foxx', 'Christoph Waltz', 'Quentin Tarantino', '165 min', 'Drama', 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.', 8.4, '87', '46'),
('Drishyam', 'Ajay Devgn', 'Shriya Saran', 'Nishikant Kamat', '163 min', 'Crime', 'Desperate measures are taken by a man who tries to save his family from the dark side of the law, after they commit an unexpected crime.', 8.2, '83', '46'),
('Druk', 'Mads Mikkelsen', 'Thomas Bo Larsen', 'Thomas Vinterberg', '117 min', 'Comedy', 'Four friends, all high school teachers, test a theory that they will improve their lives by maintaining a constant level of alcohol in their blood.', 7.8, '100', '46'),
('Dunkirk', 'Fionn Whitehead', 'Barry Keoghan', 'Christopher Nolan', '106 min', 'Action', 'Allied soldiers from Belgium, the British Empire, and France are surrounded by the German Army and evacuated during a fierce battle in World War II.', 7.8, '92', '46'),
('Edge of Tomorrow', 'Tom Cruise', 'Emily Blunt', 'Doug Liman', '113 min', 'Action', 'A soldier fighting aliens gets to relive the same day over and over again, the day restarting every time he dies.', 7.9, '78', '46'),
('En man som heter Ove', 'Rolf Lassgård', 'Bahar Pars', 'Hannes Holm', '116 min', 'Comedy', 'Ove, an ill-tempered, isolated retiree who spends his days enforcing block association rules and visiting his wife\'s grave, has finally given up on life just as an unlikely friendship develops with his boisterous new neighbors.', 7.7, '100', '46'),
('English Vinglish', 'Sridevi', 'Adil Hussain', 'Gauri Shinde', '134 min', 'Comedy', 'A quiet, sweet tempered housewife endures small slights from her well-educated husband and daughter every day because of her inability to speak and understand English.', 7.8, '80', '46'),
('Ex Machina', 'Alicia Vikander', 'Domhnall Gleeson', 'Alex Garland', '108 min', 'Drama', 'A young programmer is selected to participate in a ground-breaking experiment in synthetic intelligence by evaluating the human qualities of a highly advanced humanoid A.I.', 7.7, '92', '46'),
('Ford v Ferrari', 'Matt Damon', 'Christian Bale', 'James Mangold', '152 min', 'Action', 'American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order to defeat Ferrari at the 24 Hours of Le Mans in 1966.', 8.1, '45', '46'),
('Forushande', 'Shahab Hosseini', 'Taraneh Alidoosti', 'Asghar Farhadi', '124 min', 'Drama', 'While both participating in a production of \"Death of a Salesman,\" a teacher\'s wife is assaulted in her new home, which leaves him determined to find the perpetrator over his wife\'s traumatized objections.', 7.8, '0', '46'),
('Gangs of Wasseypur', 'Manoj Bajpayee', 'Richa Chadha', 'Anurag Kashyap', '321 min', 'Action', 'A clash between Sultan and Shahid Khan leads to the expulsion of Khan from Wasseypur, and ignites a deadly blood feud spanning three generations.', 8.2, '73', '46'),
('Get Out', 'Daniel Kaluuya', 'Allison Williams', 'Jordan Peele', '104 min', 'Horror', 'A young African-American visits his white girlfriend\'s parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point.', 7.7, '98', '46'),
('Gifted', 'Chris Evans', 'Mckenna Grace', 'Marc Webb', '101 min', 'Drama', 'Frank, a single man raising his child prodigy niece Mary, is drawn into a custody battle with his mother.', 7.6, '73', '46'),
('Gisaengchung', 'Kang-ho Song', 'Lee Sun-kyun', 'Bong Joon Ho', '132 min', 'Comedy', 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.', 8.6, '33', '46'),
('God\'s Own Country', 'Josh O\'Connor', 'Alec Secareanu', 'Francis Lee', '104 min', 'Drama', 'Spring. Yorkshire. Young farmer Johnny Saxby numbs his daily frustrations with binge drinking and casual sex, until the arrival of a Romanian migrant worker for lambing season ignites an intense relationship that sets Johnny on a new path.', 7.7, '98', '46'),
('Gone Girl', 'Ben Affleck', 'Rosamund Pike', 'David Fincher', '149 min', 'Drama', 'With his wife\'s disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it\'s suspected that he may not be innocent.', 8.1, '87', '46'),
('Gravity', 'Sandra Bullock', 'George Clooney', 'Alfonso Cuarón', '91 min', 'Drama', 'Two astronauts work together to survive after an accident leaves them stranded in space.', 7.7, '96', '46'),
('Green Book', 'Viggo Mortensen', 'Mahershala Ali', 'Peter Farrelly', '130 min', 'Biography', 'A working-class Italian-American bouncer becomes the driver of an African-American classical pianist on a tour of venues through the 1960s American South.', 8.2, '77', '46'),
('Guardians of the Galaxy', 'Chris Pratt', 'Vin Diesel', 'James Gunn', '121 min', 'Action', 'A group of intergalactic criminals must pull together to stop a fanatical warrior with plans to purge the universe.', 8, '91', '46'),
('Guardians of the Galaxy Vol. 2', 'Chris Pratt', 'Zoe Saldana', 'James Gunn', '136 min', 'Action', 'The Guardians struggle to keep together as a team while dealing with their personal family issues, notably Star-Lord\'s encounter with his father the ambitious celestial being Ego.', 7.6, '85', '46'),
('Gully Boy', 'Vijay Varma', 'Nakul Roshan Sahdev', 'Zoya Akhtar', '154 min', 'Drama', 'A coming-of-age story based on the lives of street rappers in Mumbai.', 8, '69', '46'),
('Hacksaw Ridge', 'Andrew Garfield', 'Sam Worthington', 'Mel Gibson', '139 min', 'Biography', 'World War II American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot.', 8.1, '84', '46'),
('Haider', 'Shahid Kapoor', 'Tabu', 'Vishal Bhardwaj', '160 min', 'Action', 'A young man returns to Kashmir after his father\'s disappearance to confront his uncle, whom he suspects of playing a role in his father\'s fate.', 8.1, '96', '46'),
('Hamilton', 'Lin-Manuel Miranda', 'Phillipa Soo', 'Thomas Kail', '160 min', 'Biography', 'The real life of one of America\'s foremost founding fathers and first Secretary of the Treasury, Alexander Hamilton. Captured live on Broadway from the Richard Rodgers Theater with the original Broadway cast.', 8.6, '100', '46'),
('Hell or High Water', 'Chris Pine', 'Ben Foster', 'David Mackenzie', '102 min', 'Action', 'A divorced father and his ex-con older brother resort to a desperate scheme in order to save their family\'s ranch in West Texas.', 7.6, '97', '46'),
('Her', 'Joaquin Phoenix', 'Amy Adams', 'Spike Jonze', '126 min', 'Drama', 'In a near future, a lonely writer develops an unlikely relationship with an operating system designed to meet his every need.', 8, '95', '46'),
('Hidden Figures', 'Taraji P. Henson', 'Octavia Spencer', 'Theodore Melfi', '127 min', 'Biography', 'The story of a team of female African-American mathematicians who served a vital role in NASA during the early years of the U.S. space program.', 7.8, '93', '46'),
('How to Train Your Dragon 2', 'Jay Baruchel', 'Cate Blanchett', 'Dean DeBlois', '102 min', 'Animation', 'When Hiccup and Toothless discover an ice cave that is home to hundreds of new wild dragons and the mysterious Dragon Rider, the two friends find themselves at the center of a battle to protect the peace.', 7.8, '91', '72'),
('Hunt for the Wilderpeople', 'Sam Neill', 'Julian Dennison', 'Taika Waititi', '101 min', 'Adventure', 'A national manhunt is ordered for a rebellious kid and his foster uncle who go missing in the wild New Zealand bush.', 7.9, '96', '72'),
('I, Daniel Blake', 'Laura Obiols', 'Dave Johns', 'Ken Loach', '100 min', 'Drama', 'After having suffered a heart-attack, a 59-year-old carpenter must fight the bureaucratic forces of the system in order to receive Employment and Support Allowance.', 7.9, '92', '67'),
('Incredibles 2', 'Craig T. Nelson', 'Holly Hunter', 'Brad Bird', '118 min', 'Animation', 'The Incredibles family takes on a new mission which involves a change in family roles: Bob Parr (Mr. Incredible) must manage the house while his wife Helen (Elastigirl) goes out to save the world.', 7.6, '93', '67'),
('Inside Out', 'Ronnie Del Carmen', 'Amy Poehler', 'Pete Docter', '95 min', 'Animation', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.', 8.1, '98', '67'),
('Interstellar', 'Matthew McConaughey', 'Anne Hathaway', 'Christopher Nolan', '169 min', 'Adventure', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 8.6, '72', '67'),
('Isle of Dogs', 'Bryan Cranston', 'Koyu Rankin', 'Wes Anderson', '101 min', 'Animation', 'Set in Japan, Isle of Dogs follows a boy\'s odyssey in search of his lost dog.', 7.9, '90', '67'),
('Jagten', 'Mads Mikkelsen', 'Thomas Bo Larsen', 'Thomas Vinterberg', '115 min', 'Drama', 'A teacher lives a lonely life, all the while struggling over his son\'s custody. His life slowly gets better as he finds love and receives good news from his son, but his new luck is about to be brutally shattered by an innocent little lie.', 8.3, '81', '67'),
('Jojo Rabbit', 'Roman Griffin Davis', 'Thomasin McKenzie', 'Taika Waititi', '108 min', 'Comedy', 'A young boy in Hitler\'s army finds out his mother is hiding a Jewish girl in their home.', 7.9, '73', '67'),
('Joker', 'Joaquin Phoenix', 'Robert De Niro', 'Todd Phillips', '122 min', 'Crime', 'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.', 8.5, '68', '67'),
('Just Mercy', 'Michael B. Jordan', 'Jamie Foxx', 'Destin Daniel Cretton', '137 min', 'Biography', 'World-renowned civil rights defense attorney Bryan Stevenson works to free a wrongly condemned death row prisoner.', 7.6, '84', '67'),
('K.G.F: Chapter 1', 'Yash', 'Srinidhi Shetty', 'Prashanth Neel', '156 min', 'Action', 'In the 1970s, a fierce rebel rises against brutal oppression and becomes the symbol of hope to legions of downtrodden people.', 8.2, '10', '67'),
('Kaguyahime no monogatari', 'Chloë Grace Moretz', 'James Caan', 'Isao Takahata', '137 min', 'Animation', 'Found inside a shining stalk of bamboo by an old bamboo cutter and his wife, a tiny girl grows rapidly into an exquisite young lady. The mysterious young princess enthralls all who encounter her, but ultimately she must confront her fate, the punishment for her crime.', 8, '88', '67'),
('Kahaani', 'Vidya Balan', 'Parambrata Chattopadhyay', 'Sujoy Ghosh', '122 min', 'Mystery', 'A pregnant woman\'s search for her missing husband takes her from London to Kolkata, but everyone she questions denies having ever met him.', 8.1, '88', '67'),
('Kai po che!', 'Amit Sadh', 'Sushant Singh Rajput', 'Abhishek Kapoor', '130 min', 'Drama', 'Three friends growing up in India at the turn of the millennium set out to open a training academy to produce the country\'s next cricket stars.', 7.7, '65', '67'),
('Kaze tachinu', 'Hideaki Anno', 'Hidetoshi Nishijima', 'Hayao Miyazaki', '126 min', 'Animation', 'A look at the life of Jiro Horikoshi, the man who designed Japanese fighter planes during World War II.', 7.8, '5', '67'),
('Kimi no na wa.', 'Ryûnosuke Kamiki', 'Mone Kamishiraishi', 'Makoto Shinkai', '106 min', 'Animation', 'Two strangers find themselves linked in a bizarre way. When a connection forms, will distance be the only thing to keep them apart?', 8.4, '78', '67'),
('Kingsman: The Secret Service', 'Colin Firth', 'Taron Egerton', 'Matthew Vaughn', '129 min', 'Action', 'A spy organisation recruits a promising street kid into the agency\'s training program, while a global threat emerges from a twisted tech genius.', 7.7, '74', '67'),
('Kis Uykusu', 'Haluk Bilginer', 'Melisa Sözen', 'Nuri Bilge Ceylan', '196 min', 'Drama', 'A hotel owner and landlord in a remote Turkish village deals with conflicts within his family and a tenant behind on his rent.', 8.1, '0', '67'),
('Klaus', 'Carlos Martínez López', 'Jason Schwartzman', 'Sergio Pablos', '96 min', 'Animation', 'A simple act of kindness always sparks another, even in a frozen, faraway place. When Smeerensburg\'s new postman, Jesper, befriends toymaker Klaus, their gifts melt an age-old feud and deliver a sleigh full of holiday traditions.', 8.2, '94', '67'),
('Knives Out', 'Daniel Craig', 'Chris Evans', 'Rian Johnson', '130 min', 'Comedy', 'A detective investigates the death of a patriarch of an eccentric, combative family.', 7.9, '97', '67'),
('Koe no katachi', 'Miyu Irino', 'Saori Hayami', 'Naoko Yamada', '130 min', 'Animation', 'A young man is ostracized by his classmates after he bullies a deaf girl to the point where she moves away. Years later, he sets off on a path for redemption.', 8.1, '70', '67'),
('Kubo and the Two Strings', 'Charlize Theron', 'Art Parkinson', 'Travis Knight', '101 min', 'Animation', 'A young boy named Kubo must locate a magical suit of armour worn by his late father in order to defeat a vengeful spirit from the past.', 7.8, '97', '67'),
('La grande bellezza', 'Toni Servillo', 'Carlo Verdone', 'Paolo Sorrentino', '141 min', 'Drama', 'Jep Gambardella has seduced his way through the lavish nightlife of Rome for decades, but after his 65th birthday and a shock from the past, Jep looks past the nightclubs and parties to find a timeless landscape of absurd, exquisite beauty.', 7.8, '93', '67'),
('La La Land', 'Ryan Gosling', 'Emma Stone', 'Damien Chazelle', '128 min', 'Comedy', 'While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.', 8, '91', '67'),
('La migliore offerta', 'Geoffrey Rush', 'Jim Sturgess', 'Giuseppe Tornatore', '131 min', 'Crime', 'A lonely art expert working for a mysterious and reclusive heiress finds not only her art worth examining.', 7.8, '62', '67'),
('La vie d\'Adèle', 'Léa Seydoux', 'Adèle Exarchopoulos', 'Abdellatif Kechiche', '180 min', 'Drama', 'Adèle\'s life is changed when she meets Emma, a young woman with blue hair, who will allow her to discover desire and to assert herself as a woman and as an adult. In front of others, Adèle grows, seeks herself, loses herself, and ultimately finds herself through love and loss.', 7.7, '20', '67'),
('Le passé', 'Bérénice Bejo', 'Tahar Rahim', 'Asghar Farhadi', '130 min', 'Drama', 'An Iranian man deserts his French wife and her two children to return to his homeland. Meanwhile, his wife starts up a new relationship, a reality her husband confronts upon his wife\'s request for a divorce.', 7.8, '72', '67'),
('Le Petit Prince', 'Jeff Bridges', 'Mackenzie Foy', 'Mark Osborne', '108 min', 'Animation', 'A little girl lives in a very grown-up world with her mother, who tries to prepare her for it. Her neighbor, the Aviator, introduces the girl to an extraordinary world where anything is possible, the world of the Little Prince.', 7.7, '78', '67'),
('Leviafan', 'Aleksey Serebryakov', 'Elena Lyadova', 'Andrey Zvyagintsev', '140 min', 'Crime', 'In a Russian coastal town, Kolya is forced to fight the corrupt mayor when he is told that his house will be demolished. He recruits a lawyer friend to help, but the man\'s arrival brings further misfortune for Kolya and his family.', 7.6, '94', '67'),
('Life of Pi', 'Suraj Sharma', 'Irrfan Khan', 'Ang Lee', '127 min', 'Adventure', 'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.', 7.9, '87', '67'),
('Lion', 'Dev Patel', 'Nicole Kidman', 'Garth Davis', '118 min', 'Biography', 'A five-year-old Indian boy is adopted by an Australian couple after getting lost hundreds of kilometers from home. 25 years later, he sets out to find his lost family.', 8, '84', '65'),
('Little Women', 'Saoirse Ronan', 'Emma Watson', 'Greta Gerwig', '135 min', 'Drama', 'Jo March reflects back and forth on her life, telling the beloved story of the March sisters - four young women, each determined to live life on her own terms.', 7.8, '94', '65'),
('Logan', 'Hugh Jackman', 'Patrick Stewart', 'James Mangold', '137 min', 'Action', 'In a future where mutants are nearly extinct, an elderly and weary Logan leads a quiet life. But when Laura, a mutant child pursued by scientists, comes to him for help, he must get her to safety.', 8.1, '93', '65'),
('Loving Vincent', 'Hugh Welchman', 'Douglas Booth', 'Dorota Kobiela', '94 min', 'Animation', 'In a story depicted in oil painted animation, a young man comes to the last hometown of painter Vincent van Gogh (Robert Gulaczyk) to deliver the troubled artist\'s final letter and ends up investigating his final days there.', 7.8, '85', '65'),
('M.S. Dhoni: The Untold Story', 'Sushant Singh Rajput', 'Kiara Advani', 'Neeraj Pandey', '184 min', 'Biography', 'The untold story of Mahendra Singh Dhoni\'s journey from ticket collector to trophy collector - the world-cup-winning captain of the Indian Cricket Team.', 7.8, '79', '65'),
('Mad Max: Fury Road', 'Tom Hardy', 'Charlize Theron', 'George Miller', '120 min', 'Action', 'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the aid of a group of female prisoners, a psychotic worshiper, and a drifter named Max.', 8.1, '97', '65'),
('Manbiki kazoku', 'Lily Franky', 'Sakura Andô', 'Hirokazu Koreeda', '121 min', 'Crime', 'A family of small-time crooks take in a child they find outside in the cold.', 7.9, '96', '65'),
('Manchester by the Sea', 'Casey Affleck', 'Michelle Williams', 'Kenneth Lonergan', '137 min', 'Drama', 'A depressed uncle is asked to take care of his teenage nephew after the boy\'s father dies.', 7.8, '96', '65'),
('Mandariinid', 'Lembit Ulfsak', 'Elmo Nüganen', 'Zaza Urushadze', '87 min', 'Drama', 'In 1992, war rages in Abkhazia, a breakaway region of Georgia. An Estonian man Ivo has decided to stay behind and harvest his crops of tangerines. In a bloody conflict at his door, a wounded man is left behind, and Ivo takes him in.', 8.2, '80', '65'),
('Mar adentro', 'Javier Bardem', 'Belén Rueda', 'Alejandro Amenábar', '126 min', 'Biography', 'The factual story of Spaniard Ramon Sampedro, who fought a thirty-year campaign in favor of euthanasia and his own right to die.', 8, '61', '65'),
('Marriage Story', 'Adam Driver', 'Scarlett Johansson', 'Noah Baumbach', '137 min', 'Comedy', 'Noah Baumbach\'s incisive and compassionate look at a marriage breaking up and a family staying together.', 7.9, '94', '65'),
('Me and Earl and the Dying Girl', 'Thomas Mann', 'RJ Cyler', 'Alfonso Gomez-Rejon', '105 min', 'Comedy', 'High schooler Greg, who spends most of his time making parodies of classic movies with his co-worker Earl, finds his outlook forever altered after befriending a classmate who has just been diagnosed with cancer.', 7.7, '81', '65'),
('Miracle in cell NO.7', 'Aras Bulut Iynemli', 'Nisa Sofiya Aksongur', 'Mehmet Ada Öztekin', '132 min', 'Drama', 'A story of love between a mentally-ill father who was wrongly accused of murder and his lovely six years old daughter. The prison would be their home. Based on the 2013 Korean movie 7-beon-bang-ui seon-mul (2013).', 8.3, '33', '65'),
('Mission: Impossible - Fallout', 'Tom Cruise', 'Henry Cavill', 'Christopher McQuarrie', '147 min', 'Action', 'Ethan Hunt and his IMF team, along with some familiar allies, race against time after a mission gone wrong.', 7.7, '97', '65'),
('Moana', 'John Musker', 'Don Hall', 'Ron Clements', '107 min', 'Animation', 'In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches Moana\'s island, she answers the Ocean\'s call to seek out the Demigod to set things right.', 7.6, '95', '65'),
('Mommy', 'Anne Dorval', 'Antoine Olivier Pilon', 'Xavier Dolan', '139 min', 'Drama', 'A widowed single mother, raising her violent son alone, finds new hope when a mysterious neighbor inserts herself into their household.', 8.1, '89', '65'),
('Moonrise Kingdom', 'Jared Gilman', 'Kara Hayward', 'Wes Anderson', '94 min', 'Comedy', 'A pair of young lovers flee their New England town, which causes a local search party to fan out to find them.', 7.8, '94', '65'),
('Mustang', 'Günes Sensoy', 'Doga Zeynep Doguslu', 'Deniz Gamze Ergüven', '97 min', 'Drama', 'When five orphan girls are seen innocently playing with boys on a beach, their scandalized conservative guardians confine them while forced marriages are arranged.', 7.6, '97', '65'),
('Nebraska', 'Bruce Dern', 'Will Forte', 'Alexander Payne', '115 min', 'Adventure', 'An aging, booze-addled father makes the trip from Montana to Nebraska with his estranged son in order to claim a million-dollar Mega Sweepstakes Marketing prize.', 7.7, '91', '65'),
('Nelyubov', 'Maryana Spivak', 'Aleksey Rozin', 'Andrey Zvyagintsev', '127 min', 'Drama', 'A couple going through a divorce must team up to find their son who has disappeared during one of their bitter arguments.', 7.6, '55', '65'),
('Nightcrawler', 'Jake Gyllenhaal', 'Rene Russo', 'Dan Gilroy', '117 min', 'Crime', 'When Louis Bloom, a con man desperate for work, muscles into the world of L.A. crime journalism, he blurs the line between observer and participant to become the star of his own story.', 7.9, '95', '53'),
('Ôkami kodomo no Ame to Yuki', 'Aoi Miyazaki', 'Takao Osawa', 'Mamoru Hosoda', '117 min', 'Animation', 'After her werewolf lover unexpectedly dies in an accident while hunting for food for their children, a young woman must find ways to raise the werewolf son and daughter that she had with him while keeping their trait hidden from society.', 8.1, '74', 'N/A'),
('OMG: Oh My God!', 'Paresh Rawal', 'Akshay Kumar', 'Umesh Shukla', '125 min', 'Comedy', 'A shopkeeper takes God to court when his shop is destroyed by an earthquake.', 8.1, '17', '53'),
('Omoide no Mânî', 'Hiromasa Yonebayashi', 'Sara Takatsuki', 'James Simone', '103 min', 'Animation', 'Due to 12 y.o. Anna\'s asthma, she\'s sent to stay with relatives of her guardian in the Japanese countryside. She likes to be alone, sketching. She befriends Marnie. Who is the mysterious, blonde Marnie.', 7.7, '17', '53'),
('Once Upon a Time... in Hollywood', 'Leonardo DiCaprio', 'Brad Pitt', 'Quentin Tarantino', '161 min', 'Comedy', 'A faded television actor and his stunt double strive to achieve fame and success in the final years of Hollywood\'s Golden Age in 1969 Los Angeles.', 7.6, '21', '53'),
('Only the Brave', 'Josh Brolin', 'Miles Teller', 'Joseph Kosinski', '134 min', 'Action', 'Based on the true story of the Granite Mountain Hotshots, a group of elite firefighters who risk everything to protect a town from a historic wildfire.', 7.6, '87', '53'),
('Paan Singh Tomar', 'Irrfan Khan', 'Mahie Gill', 'Tigmanshu Dhulia', '135 min', 'Action', 'The story of Paan Singh Tomar, an Indian athlete and seven-time national steeplechase champion who becomes one of the most feared dacoits in Chambal Valley after his retirement.', 8.2, '100', '53'),
('Paddington 2', 'Ben Whishaw', 'Hugh Grant', 'Paul King', '103 min', 'Adventure', 'Paddington (Ben Whishaw), now happily settled with the Brown family and a popular member of the local community, picks up a series of odd jobs to buy the perfect present for his Aunt Lucy\'s (Imelda Staunton\'s) 100th birthday, only for the gift to be stolen.', 7.8, '100', '53'),
('Perfetti sconosciuti', 'Giuseppe Battiston', 'Anna Foglietta', 'Paolo Genovese', '96 min', 'Comedy', 'Seven long-time friends get together for a dinner. When they decide to share with each other the content of every text message, email and phone call they receive, many secrets start to unveil and the equilibrium trembles.', 7.8, '10', '53'),
('Philomena', 'Judi Dench', 'Steve Coogan', 'Stephen Frears', '98 min', 'Biography', 'A world-weary political journalist picks up the story of a woman\'s search for her son, who was taken away from her decades ago after she became pregnant and was forced to live in a convent.', 7.6, '90', '53'),
('Pink', 'Taapsee Pannu', 'Amitabh Bachchan', 'Aniruddha Roy Chowdhury', '136 min', 'Drama', 'When three young women are implicated in a crime, a retired lawyer steps forward to help them clear their names.', 8.1, '59', '53'),
('PK', 'Aamir Khan', 'Anushka Sharma', 'Rajkumar Hirani', '153 min', 'Comedy', 'An alien on Earth loses the only device he can use to communicate with his spaceship. His innocent nature and child-like questions force the country to evaluate the impact of religion on its people.', 8.1, '31', '53'),
('Portrait de la jeune fille en feu', 'Noémie Merlant', 'Adèle Haenel', 'Céline Sciamma', '122 min', 'Drama', 'On an isolated island in Brittany at the end of the eighteenth century, a female painter is obliged to paint a wedding portrait of a young woman.', 8.1, '52', '53'),
('Pride', 'Bill Nighy', 'Imelda Staunton', 'Matthew Warchus', '119 min', 'Biography', 'U.K. gay activists work to help miners during their lengthy strike of the National Union of Mineworkers in the summer of 1984.', 7.8, '91', '53'),
('Prisoners', 'Hugh Jackman', 'Jake Gyllenhaal', 'Denis Villeneuve', '153 min', 'Crime', 'When Keller Dover\'s daughter and her friend go missing, he takes matters into his own hands as the police pursue multiple leads and the pressure mounts.', 8.1, '81', '53'),
('Queen', 'Kangana Ranaut', 'Rajkummar Rao', 'Vikas Bahl', '146 min', 'Adventure', 'A Delhi girl from a traditional family sets out on a solo honeymoon after her marriage gets cancelled.', 8.2, '80', '53'),
('Raazi', 'Alia Bhatt', 'Vicky Kaushal', 'Meghna Gulzar', '138 min', 'Action', 'A Kashmiri woman agrees to marry a Pakistani army officer in order to spy on Pakistan during the Indo-Pakistan War of 1971.', 7.8, '60', '53'),
('Relatos salvajes', 'Darío Grandinetti', 'María Marull', 'Damián Szifron', '122 min', 'Comedy', 'Six short stories that explore the extremities of human behavior involving people in distress.', 8.1, '20', '53'),
('Rogue One', 'Felicity Jones', 'Diego Luna', 'Gareth Edwards', '133 min', 'Action', 'The daughter of an Imperial scientist joins the Rebel Alliance in a risky move to steal the plans for the Death Star.', 7.8, '71', '53'),
('Roma', 'Yalitza Aparicio', 'Marina de Tavira', 'Alfonso Cuarón', '135 min', 'Drama', 'A year in the life of a middle-class family\'s maid in Mexico City in the early 1970s.', 7.7, '96', '53'),
('Room', 'Brie Larson', 'Jacob Tremblay', 'Lenny Abrahamson', '118 min', 'Drama', 'Held captive for 7 years in an enclosed space, a woman and her young son finally gain their freedom, allowing the boy to experience the outside world for the first time.', 8.1, '93', '53'),
('Rush', 'Daniel Brühl', 'Chris Hemsworth', 'Ron Howard', '123 min', 'Action', 'The merciless 1970s rivalry between Formula One rivals James Hunt and Niki Lauda.', 8.1, '88', '53'),
('Searching', 'John Cho', 'Debra Messing', 'Aneesh Chaganty', '102 min', 'Drama', 'After his teenage daughter goes missing, a desperate father tries to find clues on her laptop.', 7.6, '92', '53'),
('Serbuan maut 2: Berandal', 'Iko Uwais', 'Yayan Ruhian', 'Gareth Evans', '150 min', 'Action', 'Only a short time after the first raid, Rama goes undercover with the thugs of Jakarta and plans to bring down the syndicate and uncover the corruption within his police force.', 8, '83', '53'),
('Short Term 12', 'Brie Larson', 'Frantz Turner', 'Destin Daniel Cretton', '96 min', 'Drama', 'A 20-something supervising staff member of a residential treatment facility navigates the troubled waters of that world alongside her co-worker and longtime boyfriend.', 8, '98', '53'),
('Sicario', 'Emily Blunt', 'Josh Brolin', 'Denis Villeneuve', '121 min', 'Action', 'An idealistic FBI agent is enlisted by a government task force to aid in the escalating war against drugs at the border area between the U.S. and Mexico.', 7.6, '92', '53'),
('Sing Street', 'Ferdia Walsh-Peelo', 'Aidan Gillen', 'John Carney', '106 min', 'Comedy', 'A boy growing up in Dublin during the 1980s escapes his strained family life by starting a band to impress the mysterious girl he likes.', 7.9, '95', '53'),
('Song of the Sea', 'David Rawle', 'Brendan Gleeson', 'Tomm Moore', '93 min', 'Animation', 'Ben, a young Irish boy, and his little sister Saoirse, a girl who can turn into a seal, go on an adventure to free the fairies and save the spirit world.', 8.1, '99', '53'),
('Soorarai Pottru', 'Suriya', 'Madhavan', 'Sudha Kongara', '153 min', 'Drama', 'Nedumaaran Rajangam \"Maara\" sets out to make the common man fly and in the process takes on the world\'s most capital intensive industry and several enemies who stand in his way.', 8.6, '83', '53'),
('Soul', 'Kemp Powers', 'Jamie Foxx', 'Pete Docter', '100 min', 'Animation', 'After landing the gig of a lifetime, a New York jazz pianist suddenly finds himself trapped in a strange land between Earth and the afterlife.', 8.1, '86', '53'),
('Sound of Metal', 'Riz Ahmed', 'Olivia Cooke', 'Darius Marder', '120 min', 'Drama', 'A heavy-metal drummer\'s life is thrown into freefall when he begins to lose his hearing.', 7.8, '100', '53'),
('Special Chabbis', 'Akshay Kumar', 'Anupam Kher', 'Neeraj Pandey', '144 min', 'Crime', 'A gang of con-men rob prominent rich businessmen and politicians by posing as C.B.I and income tax officers.', 8, '58', '53'),
('Spider-Man: Into the Spider-Verse', 'Peter Ramsey', 'Rodney Rothman', 'Bob Persichetti', '117 min', 'Animation', 'Teen Miles Morales becomes the Spider-Man of his universe, and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.', 8.4, '97', '53'),
('Spotlight', 'Mark Ruffalo', 'Michael Keaton', 'Tom McCarthy', '129 min', 'Biography', 'The true story of how the Boston Globe uncovered the massive scandal of child molestation and cover-up within the local Catholic Archdiocese, shaking the entire Catholic Church to its core.', 8.1, '97', '53'),
('Star Trek Into Darkness', 'Chris Pine', 'Zachary Quinto', 'J.J. Abrams', '132 min', 'Action', 'After the crew of the Enterprise find an unstoppable force of terror from within their own organization, Captain Kirk leads a manhunt to a war-zone world to capture a one-man weapon of mass destruction.', 7.7, '84', '53'),
('Star Wars: Episode VII - The Force Awakens', 'Daisy Ridley', 'John Boyega', 'J.J. Abrams', '138 min', 'Action', 'As a new threat to the galaxy rises, Rey, a desert scavenger, and Finn, an ex-stormtrooper, must join Han Solo and Chewbacca to search for the one hope of restoring peace.', 7.9, '92', '53'),
('Straight Outta Compton', 'O\'Shea Jackson Jr.', 'Corey Hawkins', 'F. Gary Gray', '147 min', 'Biography', 'The rap group NWA emerges from the mean streets of Compton in Los Angeles, California, in the mid-1980s and revolutionizes Hip Hop culture with their music and tales about life in the hood.', 7.8, '89', '53'),
('Talvar', 'Irrfan Khan', 'Konkona Sen Sharma', 'Meghna Gulzar', '132 min', 'Crime', 'An experienced investigator confronts several conflicting theories about the perpetrators of a violent double homicide.', 8.2, '85', '53'),
('The Avengers', 'Robert Downey Jr.', 'Chris Evans', 'Joss Whedon', '143 min', 'Action', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', 8, '87', '53'),
('The Big Short', 'Christian Bale', 'Steve Carell', 'Adam McKay', '130 min', 'Biography', 'In 2006-2007 a group of investors bet against the US mortgage market. In their research they discover how flawed and corrupt the market is.', 7.8, '88', '53'),
('The Dark Knight Rises', 'Christian Bale', 'Tom Hardy', 'Christopher Nolan', '164 min', 'Action', 'Eight years after the Joker\'s reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City from the brutal guerrilla terrorist Bane.', 8.4, '87', '53'),
('The Fault in Our Stars', 'Shailene Woodley', 'Ansel Elgort', 'Josh Boone', '126 min', 'Drama', 'Two teenage cancer patients begin a life-affirming journey to visit a reclusive author in Amsterdam.', 7.7, '81', '53'),
('The Florida Project', 'Brooklynn Prince', 'Bria Vinaite', 'Sean Baker', '111 min', 'Drama', 'Set over one summer, the film follows precocious six-year-old Moonee as she courts mischief and adventure with her ragtag playmates and bonds with her rebellious but caring mother, all while living in the shadows of Walt Disney World.', 7.6, '96', '53'),
('The Gentlemen', 'Matthew McConaughey', 'Charlie Hunnam', 'Guy Ritchie', '113 min', 'Action', 'An American expat tries to sell off his highly profitable marijuana empire in London, triggering plots, schemes, bribery and blackmail in an attempt to steal his domain out from under him.', 7.8, '75', '53'),
('The Grand Budapest Hotel', 'Ralph Fiennes', 'F. Murray Abraham', 'Wes Anderson', '99 min', 'Adventure', 'A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel\'s glorious years under an exceptional concierge.', 8.1, '91', '53'),
('The Hateful Eight', 'Samuel L. Jackson', 'Kurt Russell', 'Quentin Tarantino', '168 min', 'Crime', 'In the dead of a Wyoming winter, a bounty hunter and his prisoner find shelter in a cabin currently inhabited by a collection of nefarious characters.', 7.8, '75', '53'),
('The Hobbit: The Desolation of Smaug', 'Ian McKellen', 'Martin Freeman', 'Peter Jackson', '161 min', 'Adventure', 'The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring.', 7.8, '74', '53'),
('The Imitation Game', 'Benedict Cumberbatch', 'Keira Knightley', 'Morten Tyldum', '114 min', 'Biography', 'During World War II, the English mathematical genius Alan Turing tries to crack the German Enigma code with help from fellow mathematicians.', 8, '89', '53'),
('The Irishman', 'Robert De Niro', 'Al Pacino', 'Martin Scorsese', '209 min', 'Biography', 'An old man recalls his time painting houses for his friend, Jimmy Hoffa, through the 1950-70s.', 7.9, '96', '53'),
('The Lego Movie', 'Phil Lord', 'Chris Pratt', 'Christopher Miller', '100 min', 'Animation', 'An ordinary LEGO construction worker, thought to be the prophesied as \"special\", is recruited to join a quest to stop an evil tyrant from gluing the LEGO universe into eternal stasis.', 7.7, '96', '53'),
('The Lunchbox', 'Irrfan Khan', 'Nimrat Kaur', 'Ritesh Batra', '104 min', 'Drama', 'A mistaken delivery in Mumbai\'s famously efficient lunchbox delivery system connects a young housewife to an older man in the dusk of his life as they build a fantasy world together through notes in the lunchbox.', 7.8, '97', '53'),
('The Martian', 'Matt Damon', 'Jessica Chastain', 'Ridley Scott', '144 min', 'Adventure', 'An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.', 8, '91', '53'),
('The Peanut Butter Falcon', 'Michael Schwartz', 'Zack Gottsagen', 'Tyler Nilson', '97 min', 'Adventure', 'Zak runs away from his care home to make his dream of becoming a wrestler come true.', 7.6, '96', '53'),
('The Perks of Being a Wallflower', 'Logan Lerman', 'Emma Watson', 'Stephen Chbosky', '103 min', 'Drama', 'An introvert freshman is taken under the wings of two seniors who welcome him to the real world', 8, '86', '53'),
('The Revenant', 'Leonardo DiCaprio', 'Tom Hardy', 'Alejandro G. Iñárritu', '156 min', 'Action', 'A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team.', 8, '78', '53'),
('The Theory of Everything', 'Eddie Redmayne', 'Felicity Jones', 'James Marsh', '123 min', 'Biography', 'A look at the relationship between the famous physicist Stephen Hawking and his wife.', 7.7, '80', '53'),
('The Trial of the Chicago 7', 'Eddie Redmayne', 'Alex Sharp', 'Aaron Sorkin', '129 min', 'Drama', 'The story of 7 people on trial stemming from various charges surrounding the uprising at the 1968 Democratic National Convention in Chicago, Illinois.', 7.8, '50', '53'),
('The Wolf of Wall Street', 'Leonardo DiCaprio', 'Jonah Hill', 'Martin Scorsese', '180 min', 'Biography', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 8.2, '80', '53'),
('Thor: Ragnarok', 'Chris Hemsworth', 'Tom Hiddleston', 'Taika Waititi', '130 min', 'Action', 'Imprisoned on the planet Sakaar, Thor must race against time to return to Asgard and stop Ragnarök, the destruction of his world, at the hands of the powerful and ruthless villain Hela.', 7.9, '93', '53'),
('Three Billboards Outside Ebbing, Missouri', 'Frances McDormand', 'Woody Harrelson', 'Martin McDonagh', '115 min', 'Comedy', 'A mother personally challenges the local authorities to solve her daughter\'s murder when they fail to catch the culprit.', 8.2, '90', '53'),
('Togo', 'Willem Dafoe', 'Julianne Nicholson', 'Ericson Core', '113 min', 'Adventure', 'The story of Togo, the sled dog who led the 1925 serum run yet was considered by most to be too small and weak to lead such an intense race.', 8, '90', '53');
INSERT INTO `movies` (`Title`, `Actor1`, `Actor2`, `Director`, `Runtime`, `Genre`, `Overview`, `IMDB`, `RottenTomatoes`, `Metacritic`) VALUES
('Toy Story 4', 'Tom Hanks', 'Tim Allen', 'Josh Cooley', '100 min', 'Animation', 'When a new toy called \"Forky\" joins Woody and the gang, a road trip alongside old and new friends reveals how big the world can be for a toy.', 7.8, '97', '53'),
('Tumbbad', 'Anand Gandhi', 'Adesh Prasad', 'Rahi Anil Barve', '104 min', 'Drama', 'A mythological story about a goddess who created the entire universe. The plot revolves around the consequences when humans build a temple for her first-born.', 8.3, '87', '53'),
('Udta Punjab', 'Shahid Kapoor', 'Alia Bhatt', 'Abhishek Chaubey', '148 min', 'Action', 'A story that revolves around drug abuse in the affluent north Indian State of Punjab and how the youth there have succumbed to it en-masse resulting in a socio-economic decline.', 7.8, '68', '53'),
('Under sandet', 'Roland Møller', 'Louis Hofmann', 'Martin Zandvliet', '100 min', 'Drama', 'In post-World War II Denmark, a group of young German POWs are forced to clear a beach of thousands of land mines under the watch of a Danish Sergeant who slowly learns to appreciate their plight.', 7.8, '81', '53'),
('Uri: The Surgical Strike', 'Vicky Kaushal', 'Paresh Rawal', 'Aditya Dhar', '138 min', 'Action', 'Indian army special forces execute a covert operation, avenging the killing of fellow army men at their base by a terrorist group.', 8.2, '0', '53'),
('Vicky Donor', 'Ayushmann Khurrana', 'Yami Gautam', 'Shoojit Sircar', '126 min', 'Comedy', 'A man is brought in by an infertility doctor to supply him with his sperm, where he becomes the biggest sperm donor for his clinic.', 7.8, '81', '53'),
('Victoria', 'Laia Costa', 'Frederick Lau', 'Sebastian Schipper', '138 min', 'Crime', 'A young Spanish woman who has recently moved to Berlin finds her flirtation with a local guy turn potentially deadly as their night out with his friends reveals a dangerous secret.', 7.6, '82', '53'),
('Vikram Vedha', 'Pushkar', 'Madhavan', 'Gayatri', '147 min', 'Action', 'Vikram, a no-nonsense police officer, accompanied by Simon, his partner, is on the hunt to capture Vedha, a smuggler and a murderer. Vedha tries to change Vikram\'s life, which leads to a conflict.', 8.4, '100', '53'),
('What We Do in the Shadows', 'Taika Waititi', 'Jemaine Clement', 'Jemaine Clement', '86 min', 'Comedy', 'Viago, Deacon and Vladislav are vampires who are finding that modern life has them struggling with the mundane - like paying rent, keeping up with the chore wheel, trying to get into nightclubs and overcoming flatmate conflicts.', 7.7, '96', '53'),
('Whiplash', 'Miles Teller', 'J.K. Simmons', 'Damien Chazelle', '106 min', 'Drama', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.', 8.5, '94', '53'),
('Wind River', 'Kelsey Asbille', 'Jeremy Renner', 'Taylor Sheridan', '107 min', 'Crime', 'A veteran hunter helps an FBI agent investigate the murder of a young woman on a Wyoming Native American reservation.', 7.7, '88', '53'),
('Wonder', 'Jacob Tremblay', 'Owen Wilson', 'Stephen Chbosky', '113 min', 'Drama', 'Based on the New York Times bestseller, this movie tells the incredibly inspiring and heartwarming story of August Pullman, a boy with facial differences who enters the fifth grade, attending a mainstream elementary school for the first time.', 8, '85', '53'),
('X-Men: Days of Future Past', 'Patrick Stewart', 'Ian McKellen', 'Bryan Singer', '132 min', 'Action', 'The X-Men send Wolverine to the past in a desperate effort to change history and prevent an event that results in doom for both humans and mutants.', 7.9, '90', '53'),
('Zootopia', 'Rich Moore', 'Jared Bush', 'Byron Howard', '108 min', 'Animation', 'In a city of anthropomorphic animals, a rookie bunny cop and a cynical con artist fox must work together to uncover a conspiracy.', 8, '98', '53');

-- --------------------------------------------------------

--
-- Table structure for table `screen`
--

CREATE TABLE `screen` (
  `ScreenNo` varchar(15) NOT NULL,
  `Capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `screen`
--

INSERT INTO `screen` (`ScreenNo`, `Capacity`) VALUES
('Screen1', 56),
('Screen2', 56),
('Screen3', 56),
('Screen4', 56),
('Screen5', 56),
('Screen6', 56),
('Screen7', 56);

-- --------------------------------------------------------

--
-- Table structure for table `seatarrangement`
--

CREATE TABLE `seatarrangement` (
  `SeatNumber` varchar(10) NOT NULL,
  `TypeOfSeat` varchar(10) DEFAULT NULL,
  `SeatStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seatarrangement`
--

INSERT INTO `seatarrangement` (`SeatNumber`, `TypeOfSeat`, `SeatStatus`) VALUES
('A1', 'Single', 'Available'),
('A2', 'Single', 'Available'),
('A3', 'Single', 'Available'),
('A4', 'Single', 'Available'),
('A5', 'Single', 'Available'),
('A6', 'Single', 'Available'),
('A7', 'Single', 'Available'),
('A8', 'Single', 'Available'),
('B1', 'Single', 'Occupied'),
('B2', 'Single', 'Occupied'),
('B3', 'Single', 'Occupied'),
('B4', 'Single', 'Occupied'),
('B5', 'Single', 'Occupied'),
('B6', 'Single', 'Occupied'),
('B7', 'Single', 'Occupied'),
('B8', 'Single', 'Available'),
('C1', 'Single', 'Available'),
('C2', 'Single', 'Available'),
('C3', 'Single', 'Available'),
('C4', 'Single', 'Available'),
('C5', 'Single', 'Occupied'),
('C6', 'Single', 'Available'),
('C7', 'Single', 'Available'),
('C8', 'Single', 'Available'),
('D1', 'Single', 'Available'),
('D2', 'Single', 'Occupied'),
('D3', 'Single', 'Occupied'),
('D4', 'Single', 'Available'),
('D5', 'Single', 'Available'),
('D6', 'Single', 'Available'),
('D7', 'Single', 'Available'),
('D8', 'Single', 'Unavailable'),
('E1', 'Single', 'Available'),
('E2', 'Single', 'Unavailable'),
('E3', 'Single', 'Available'),
('E4', 'Single', 'Available'),
('E5', 'Single', 'Available'),
('E6', 'Single', 'Unavailable'),
('E7', 'Single', 'Available'),
('E8', 'Single', 'Available'),
('F1', 'Couple', 'Available'),
('F2', 'Couple', 'Available'),
('F3', 'Couple', 'Occupied'),
('F4', 'Couple', 'Occupied'),
('F5', 'Couple', 'Occupied'),
('F6', 'Couple', 'Occupied'),
('F7', 'Couple', 'Unavailable'),
('F8', 'Couple', 'Unavailable'),
('G1', 'Couple', 'Unavailable'),
('G2', 'Couple', 'Unavailable'),
('G3', 'Couple', 'Available'),
('G4', 'Couple', 'Available'),
('G5', 'Couple', 'Available'),
('G6', 'Couple', 'Available'),
('G7', 'Couple', 'Available'),
('G8', 'Couple', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `showtimes`
--

CREATE TABLE `showtimes` (
  `ShowID` varchar(30) NOT NULL,
  `Movie` varchar(30) DEFAULT NULL,
  `Showtime` time DEFAULT NULL,
  `TicketPrice` float DEFAULT NULL,
  `ShowDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showtimes`
--

INSERT INTO `showtimes` (`ShowID`, `Movie`, `Showtime`, `TicketPrice`, `ShowDate`) VALUES
('S1', 'The Dark Knight', '09:00:00', 10, '2022-12-30'),
('S10', 'Hamilton', '22:00:00', 12, '2023-01-08'),
('S11', 'The Dark Knight', '09:00:00', 10, '2023-01-09'),
('S12', 'The Lord of the Rings: The Ret', '11:45:00', 13, '2023-01-10'),
('S13', 'The Lord of the Rings: The Fel', '14:30:00', 10, '2023-01-11'),
('S14', 'Inception', '18:00:00', 15, '2023-01-12'),
('S15', 'The Lord of the Rings: The Two', '22:00:00', 14, '2023-01-13'),
('S16', 'Forrest Gump', '09:00:00', 10, '2023-01-14'),
('S17', 'Joker', '11:45:00', 11, '2023-01-15'),
('S18', 'Interstellar ', '14:30:00', 11, '2023-01-16'),
('S19', 'The Intouchables', '18:00:00', 13, '2023-01-17'),
('S2', 'The Lord of the Rings: The Ret', '11:45:00', 10, '2022-12-31'),
('S20', 'Hamilton', '22:00:00', 10, '2023-01-18'),
('S21', 'The Dark Knight', '09:00:00', 12, '2023-01-19'),
('S22', 'The Lord of the Rings: The Ret', '11:45:00', 13, '2023-01-20'),
('S23', 'The Lord of the Rings: The Fel', '14:30:00', 12, '2023-01-21'),
('S24', 'Inception', '18:00:00', 14, '2023-01-22'),
('S25', 'The Lord of the Rings: The Two', '22:00:00', 11, '2023-01-23'),
('S26', 'Forrest Gump', '09:00:00', 15, '2023-01-24'),
('S27', 'Joker', '11:45:00', 10, '2023-01-25'),
('S28', 'Interstellar ', '14:30:00', 11, '2023-01-26'),
('S29', 'The Intouchables', '18:00:00', 13, '2023-01-27'),
('S3', 'The Lord of the Rings: The Fel', '14:30:00', 11, '2023-01-01'),
('S30', 'Hamilton', '22:00:00', 15, '2023-01-28'),
('S31', 'The Dark Knight', '09:00:00', 12, '2023-01-29'),
('S32', 'Joker', '11:45:00', 15, '2023-01-30'),
('S4', 'Inception', '18:00:00', 10, '2023-01-02'),
('S5', 'The Lord of the Rings: The Two', '22:00:00', 15, '2023-01-03'),
('S6', 'Forrest Gump', '09:00:00', 13, '2023-01-04'),
('S7', 'Joker', '11:45:00', 12, '2023-01-05'),
('S8', 'Interstellar ', '14:30:00', 14, '2023-01-06'),
('S9', 'The Intouchables', '18:00:00', 10, '2023-01-07');

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

CREATE TABLE `theatre` (
  `TheatreID` varchar(10) NOT NULL,
  `Theatrezipcode` varchar(50) DEFAULT NULL,
  `Theatrename` varchar(50) DEFAULT NULL,
  `Theatrecity` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`TheatreID`, `Theatrezipcode`, `Theatrename`, `Theatrecity`) VALUES
('T01', 'East', 'Golden Village', 'Bedok'),
('T02', 'East', 'Golden Village', 'Tampines'),
('T03', 'North', 'Golden Village', 'Yishun'),
('T04', 'North', 'Golden Village', 'Bishan'),
('T05', 'Central', 'Golden Village', 'City Hall'),
('T06', 'East', 'CathyCineplex', 'Bedok'),
('T07', 'Central', 'Golden Village', 'Bugis'),
('T08', 'West', 'Golden Village', 'Jurong'),
('T09', 'East', 'CathyCineplex', 'Tampines'),
('T10', 'North', 'CathyCineplex', 'Yishun'),
('T11', 'North', 'CathyCineplex', 'Bishan'),
('T12', 'Central', 'CathyCineplex', 'City Hall'),
('T13', 'West', 'CathyCineplex', 'Jurong'),
('T14', 'Central', 'ShawTheatres', 'Bugis'),
('T15', 'North', 'ShawTheatres', 'Yishun'),
('T16', 'North', 'ShawTheatres', 'Bishan'),
('T17', 'West', 'ShawTheatres', 'Jurong'),
('T18', 'Central', 'ShawTheatres', 'Bugis');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Location` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Password`, `Location`) VALUES
('1', 'User01', 'password01', 'South'),
('10', 'User10', 'password10', 'West'),
('11', 'User11', 'password11', 'South'),
('12', 'User12', 'password12', 'North'),
('13', 'User13', 'password13', 'North'),
('14', 'User14', 'password14', 'Central'),
('15', 'User15', 'password15', 'South'),
('16', 'User16', 'password16', 'West'),
('17', 'User17', 'password17', 'South'),
('18', 'User18', 'password18', 'East'),
('19', 'User19', 'password19', 'South'),
('2', 'User02', 'password02', 'South'),
('20', 'User20', 'password20', 'Central'),
('21', 'User21', 'password21', 'Central'),
('22', 'User22', 'password22', 'West'),
('23', 'User23', 'password23', 'North'),
('24', 'User24', 'password24', 'Central'),
('25', 'User25', 'password25', 'East'),
('26', 'User26', 'password26', 'South'),
('27', 'User27', 'password27', 'East'),
('28', 'User28', 'password28', 'East'),
('29', 'User29', 'password29', 'South'),
('3', 'User03', 'password03', 'North'),
('30', 'User30', 'password30', 'North'),
('31', 'User31', 'password31', 'East'),
('32', 'User32', 'password32', 'South'),
('33', 'User33', 'password33', 'South'),
('34', 'User34', 'password34', 'West'),
('35', 'User35', 'password35', 'North'),
('36', 'User36', 'password36', 'North'),
('37', 'User37', 'password37', 'West'),
('38', 'User38', 'password38', 'East'),
('39', 'User39', 'password39', 'South'),
('4', 'User04', 'password04', 'West'),
('40', 'User40', 'password40', 'North'),
('41', 'User41', 'password41', 'South'),
('42', 'User42', 'password42', 'South'),
('43', 'User43', 'password43', 'North'),
('44', 'User44', 'password44', 'West'),
('45', 'User45', 'password45', 'North'),
('46', 'User46', 'password46', 'Central'),
('47', 'User47', 'password47', 'North'),
('48', 'User48', 'password48', 'Central'),
('49', 'User49', 'password49', 'South'),
('5', 'User05', 'password05', 'West'),
('50', 'User50', 'password50', 'Central'),
('6', 'User06', 'password06', 'Central'),
('7', 'User07', 'password07', 'West'),
('8', 'User08', 'password08', 'South'),
('9', 'User09', 'password09', 'North');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `find`
--
ALTER TABLE `find`
  ADD PRIMARY KEY (`Title`,`TheatreID`),
  ADD KEY `TheatreID` (`TheatreID`);

--
-- Indexes for table `looksupmovies`
--
ALTER TABLE `looksupmovies`
  ADD PRIMARY KEY (`Title`,`UserID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `makesbooking`
--
ALTER TABLE `makesbooking`
  ADD PRIMARY KEY (`bookingID`,`UserID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`Title`);

--
-- Indexes for table `screen`
--
ALTER TABLE `screen`
  ADD PRIMARY KEY (`ScreenNo`);

--
-- Indexes for table `seatarrangement`
--
ALTER TABLE `seatarrangement`
  ADD PRIMARY KEY (`SeatNumber`);

--
-- Indexes for table `showtimes`
--
ALTER TABLE `showtimes`
  ADD PRIMARY KEY (`ShowID`);

--
-- Indexes for table `theatre`
--
ALTER TABLE `theatre`
  ADD PRIMARY KEY (`TheatreID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `find`
--
ALTER TABLE `find`
  ADD CONSTRAINT `find_ibfk_1` FOREIGN KEY (`Title`) REFERENCES `movies` (`Title`),
  ADD CONSTRAINT `find_ibfk_2` FOREIGN KEY (`TheatreID`) REFERENCES `theatre` (`TheatreID`);

--
-- Constraints for table `looksupmovies`
--
ALTER TABLE `looksupmovies`
  ADD CONSTRAINT `looksupmovies_ibfk_1` FOREIGN KEY (`Title`) REFERENCES `movies` (`Title`),
  ADD CONSTRAINT `looksupmovies_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `makesbooking`
--
ALTER TABLE `makesbooking`
  ADD CONSTRAINT `makesbooking_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
