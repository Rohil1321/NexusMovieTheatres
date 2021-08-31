-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 04:26 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(1) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `password` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `password`) VALUES
(1, 'admin', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`name`, `email`, `message`) VALUES
('Sumit', 'akb85308@gmail.com', 'hello, this is good website....'),
('Sumit', 'akb85308@gmail.com', 'This is not good.....'),
('Akash', 'akb85308@gmail.com', 'This website needs improvement......');

-- --------------------------------------------------------

--
-- Table structure for table `tb_movie`
--

CREATE TABLE `tb_movie` (
  `id` int(100) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `descr` text NOT NULL,
  `release_year` year(4) NOT NULL,
  `image` varchar(100) NOT NULL,
  `video_url` varchar(100) NOT NULL,
  `t_price` varchar(100) NOT NULL,
  `screen_day` varchar(100) NOT NULL,
  `screen_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_movie`
--

INSERT INTO `tb_movie` (`id`, `movie_name`, `lang`, `cast`, `descr`, `release_year`, `image`, `video_url`, `t_price`, `screen_day`, `screen_time`) VALUES
(1, 'Delhi Safari	', 'Hindi', 'Govinda :- Bajrangi (voice), Akshaye Khanna :- Alex (voice), Urmila Matondkar :- Begum (voice)', 'Delhi Safari (also known as Jungle Safari) is a 2012 Indian computer-animated comedy musical film directed by Nikkhil Advani. It has been produced by Krayon Pictures (a Pune-based 3D animation studio).', 2012, 'delhi1.jpg', 'https://www.youtube.com/watch?v=y9oljIvNEHo', '150', 'Monday', '3:00 PM to 6:00 PM '),
(2, 'Karnan', 'Tamil', 'Dhanush(Karnan), Lal Paul(Yeama Raja), Yogi Babu(Vadamalaiyaan), Rajisha Vijayan(Draupathai)', 'Karnan is a 2021 Indian Tamil-language action drama film directed by Mari Selvaraj, and produced by Kalaipuli S. Thanu under his V Creations banner.', 2021, 'karnan.jpg', 'https://www.youtube.com/watch?v=pgfUzQ8nzBY', '160', 'Wednesday', '3:00 PM to 6:00 PM '),
(3, 'Mortal Kombat', 'English', 'Lewis Tan(Cole Young), Jessica McNamee(Sonya Blade), Josh Lawson(Kano Tadanobu), Asano(Lord Raiden)', 'Mortal Kombat is a 2021 American martial arts fantasy film directed by Simon McQuoid, from a screenplay by Greg Russo and Dave Callaham and a story by Russo and Oren Uziel. It is based on the video game franchise of the same name created by Ed Boon and John Tobias, serving as a reboot to the Mortal Kombat film series.', 2021, 'kombat.jpg', 'https://www.youtube.com/watch?v=jBa_aHwCbC4', '150', 'Friday', '3:00 PM to 6:00 PM '),
(8, 'Dragon Ball', 'English', 'Vic Mignogna :- Broly(voice), Sean Schemmel :- Goku(voice), Christopher Sabat :- Vegeta(voice)', 'Dragon Ball Super: Broly is a 2018 Japanese anime martial arts fantasy/adventure film, directed by Tatsuya Nagamine and written by Dragon Ball series creator Akira Toriyama.', 2018, 'broly1.jpg', 'https://www.youtube.com/watch?v=FHgm89hKpXU', '', '', ''),
(9, 'Angry Birds 2', 'English', 'Jason Sudeikis :- Red (voice), Josh Gad :- Chuck (voice), Bill Hader :- Leonard (voice)', 'The Angry Birds Movie 2 is a 2019 American computer-animated comedy film based on Rovio Entertainment\'s Angry Birds video game series, produced by Columbia Pictures, Rovio Animation, and Sony Pictures Animation, and distributed by Sony Pictures Releasing.', 2019, 'ang2.jpg', 'https://www.youtube.com/watch?v=RSKQ-lVsMdg', '', '', ''),
(10, 'Master', 'Tamil', 'Vijay(John durairaj), Vijay Sethupathi(Bhavani), Malavika Mohanan(Charulatha)', 'Master is a 2021 Indian Tamil-language action thriller film written and directed by Lokesh Kanagaraj. The film was produced by Xavier Britto, under his maiden production house XB Film Creators, and was distributed by S. S. Lait Kumar of Seven Screen Studios.', 2021, 'master.jpg', 'https://www.youtube.com/watch?v=UTiXQcrLlv4', '', '', ''),
(11, 'Krrish3', 'Hindi', 'Hrithik Roshan(Rohit,Krishna), Vivek Oberoi(Kaal), Priyanka Chopra(Priya)', 'Krrish 3 is a 2013 Indian Hindi-language superhero film produced and directed by Rakesh Roshan, and written by Honey Irani and Robin Bhatt. It is the third film in the Krrish series, following Koi... Mil Gaya (2003) and Krrish (2006).', 2013, 'krrish1.jpg', 'https://www.youtube.com/watch?v=MCCVVgtI5xU', '', '', ''),
(12, 'Godzilla v/s Kong', 'English', 'Alexander Skarsgard(Nathan Lind), Millie Bobby Brown(Madison Russell), Rebecca Hall(Ilene Andrews)', 'Godzilla vs. Kong is a 2021 American monster film directed by Adam Wingard. A sequel to Godzilla: King of the Monsters (2019) and Kong: Skull Island (2017), it is the fourth film in Legendary\'s MonsterVerse.', 2021, 'godzilla.jpg', 'https://www.youtube.com/watch?v=odM92ap8_c0', '', '', ''),
(14, 'Zack Snyder\'s Justice League', 'English', 'Ben Affleck(Batman), Henry Cavill(Superman), Gal Gadot(Wonder Woman)', 'Zack Snyder\'s Justice League, often referred to as the \"Snyder Cut\", is the 2021 director\'s cut of the 2017 American superhero film Justice League.', 2021, 'justice.jpg', 'https://www.youtube.com/watch?v=vM-Bja2Gy04\r\n', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_registration`
--

CREATE TABLE `tb_registration` (
  `id` int(100) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_registration`
--

INSERT INTO `tb_registration` (`id`, `uname`, `password`, `age`, `phone`, `gender`, `email`) VALUES
(1, 'Sumit', '7815696ecbf1c96e6894b779456d330e', 19, 9081594025, 'male', 'akb85308@gmail.com'),
(2, 'Akash', '7815696ecbf1c96e6894b779456d330e', 19, 6355157390, 'male', 'akb85308@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_theater`
--

CREATE TABLE `tb_theater` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `pin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_theater`
--

INSERT INTO `tb_theater` (`id`, `name`, `address`, `state`, `city`, `pin`) VALUES
(1, 'NEXUS theaters', 'NEXUS theater,Inside Gate-no.2,Opposite Balaji wafers pvt ltd,Metoda Rajkot Gujrat - 360021', 'Gujrat', 'Rajkot', 360021);

-- --------------------------------------------------------

--
-- Table structure for table `tb_ticket`
--

CREATE TABLE `tb_ticket` (
  `id` int(100) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `qty` int(20) DEFAULT NULL,
  `movie_name` varchar(100) NOT NULL,
  `created on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `show_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_ticket`
--

INSERT INTO `tb_ticket` (`id`, `uname`, `email`, `phone`, `qty`, `movie_name`, `created on`, `show_date`) VALUES
(1, 'Sumit', 'akb85308@gmail.com', 9081594025, 1, 'Delhi Safari	', '2021-04-29 11:57:38', '2021-05-03'),
(2, 'Sumit', 'akb85308@gmail.com', 9081594025, 2, 'Karnan', '2021-04-29 12:21:04', '2021-05-05'),
(3, 'Sumit', 'akb85308@gmail.com', 9081594025, 1, 'Mortal Kombat', '2021-04-29 12:33:41', '2021-05-07'),
(4, 'Akash', 'akb85308@gmail.com', 6355157390, 4, 'Delhi Safari	', '2021-04-29 12:59:13', '2021-05-03'),
(5, 'Sumit', 'akb85308@gmail.com', 9081594025, 1, 'Karnan', '2021-04-29 13:27:51', '2021-05-12'),
(6, 'Sumit', 'akb85308@gmail.com', 9081594025, 4, 'Karnan', '2021-04-29 13:54:08', '2021-05-19'),
(7, 'Akash', 'akb85308@gmail.com', 6355157390, 2, 'Karnan', '2021-04-29 14:10:11', '2021-06-16'),
(8, 'Akash', 'akb85308@gmail.com', 6355157390, 1, 'Mortal Kombat', '2021-04-29 14:21:15', '2021-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `th_raj_fri`
--

CREATE TABLE `th_raj_fri` (
  `id` int(100) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `show-date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `th_raj_mon`
--

CREATE TABLE `th_raj_mon` (
  `id` int(100) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `show-date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `th_raj_wed`
--

CREATE TABLE `th_raj_wed` (
  `id` int(100) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `show-date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_movie`
--
ALTER TABLE `tb_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_registration`
--
ALTER TABLE `tb_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_theater`
--
ALTER TABLE `tb_theater`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_ticket`
--
ALTER TABLE `tb_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `th_raj_fri`
--
ALTER TABLE `th_raj_fri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `th_raj_mon`
--
ALTER TABLE `th_raj_mon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `th_raj_wed`
--
ALTER TABLE `th_raj_wed`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_movie`
--
ALTER TABLE `tb_movie`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_registration`
--
ALTER TABLE `tb_registration`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_theater`
--
ALTER TABLE `tb_theater`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_ticket`
--
ALTER TABLE `tb_ticket`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `th_raj_fri`
--
ALTER TABLE `th_raj_fri`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `th_raj_mon`
--
ALTER TABLE `th_raj_mon`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `th_raj_wed`
--
ALTER TABLE `th_raj_wed`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
