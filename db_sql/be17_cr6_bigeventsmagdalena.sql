-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 09:35 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be17_cr6_bigeventsmagdalena`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221203151943', '2022-12-03 16:20:21', 140);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `date`, `time`, `description`, `image`, `capacity`, `contact_email`, `contact_phone`, `address`, `url`, `type`) VALUES
(1, 'Deluxe Edition', '2023-06-14', '20:00:00', 'The orchestra podium and the audience area are located in the middle of the baroque park and are surrounded by the extraordinary scenery of Schönbrunn Palace and the Gloriette.', 'https://wph-live.s3.amazonaws.com/media/filer_public_thumbnails/filer_public/b8/4b/b84b8e0f-b312-4b03-9be0-d51d07831cde/snk_juliussilvertag2.jpg__978x551_q85_crop_subject_location-1339%2C1235_subsampling-2.jpg', 100, 'wien@gmail.at', '01 454 454', 'Schönbrunn Palace', 'https://www.wienerphilharmoniker.at/en/summernightconcert', 'concert'),
(2, 'Hardvig/Levit', '2023-06-15', '20:00:00', 'The open-air concert takes place annually in the park of Schönbrunn Palace, which has been declared a World Heritage Site by UNESCO.', 'https://wph-live.s3.amazonaws.com/media/filer_public_thumbnails/filer_public/b8/4b/b84b8e0f-b312-4b03-9be0-d51d07831cde/snk_juliussilvertag2.jpg__978x551_q85_crop_subject_location-1339%2C1235_subsampling-2.jpg', 100, 'wien@gmail.at', '01 454 454', 'Schönbrunn Palace', 'https://www.wienerphilharmoniker.at/en/summernightconcert', 'concert'),
(3, 'Vienna Philharmonic', '2023-07-10', '20:00:00', 'The Summer Night Concert in the beautiful setting of the Schönbrunn Palace is one of the great highlights of the Philharmonic year.', 'https://wph-live.s3.amazonaws.com/media/filer_public_thumbnails/filer_public/b8/4b/b84b8e0f-b312-4b03-9be0-d51d07831cde/snk_juliussilvertag2.jpg__978x551_q85_crop_subject_location-1339%2C1235_subsampling-2.jpg', 100, 'wien@gmail.at', '01 454 454', 'Schönbrunn Palace', 'https://www.wienerphilharmoniker.at/en/summernightconcert', 'concert'),
(4, 'This is how I see you', '2023-07-12', '19:00:00', 'The term film festival is a little misleading. We’re not talking Steven Spielberg retrospectives or a celebration of Estonian film noir. Instead, it’s all about the music.', 'https://filmfreeway-production-storage-01-storage.filmfreeway.com/festivals/logos/000/007/596/large/square_blank.jpg?1462652759', 200, 'film@gmail.at', '01 454 454', 'Rathausplatz Film Festival', 'https://www.visitingvienna.com/entertainment/events/rathaus-film-festival/#:~:text=The%202023%20festival%20is%20scheduled,extravaganza%20going%20to%20cost%20you%3F', 'Film'),
(5, 'Meet me', '2023-07-14', '21:00:00', 'The term film festival is a little misleading. We’re not talking Steven Spielberg retrospectives or a celebration of Estonian film noir. Instead, it’s all about the music.', 'https://filmfreeway-production-storage-01-storage.filmfreeway.com/festivals/logos/000/007/596/large/square_blank.jpg?1462652759', 200, 'film@gmail.at', '01 454 454', 'Rathausplatz Film Festival', 'https://www.visitingvienna.com/entertainment/events/rathaus-film-festival/#:~:text=The%202023%20festival%20is%20scheduled,extravaganza%20going%20to%20cost%20you%3F', 'Film'),
(6, 'This could be me', '2023-08-16', '21:30:00', 'The term film festival is a little misleading. We’re not talking Steven Spielberg retrospectives or a celebration of Estonian film noir. Instead, it’s all about the music.', 'https://filmfreeway-production-storage-01-storage.filmfreeway.com/festivals/logos/000/007/596/large/square_blank.jpg?1462652759', 200, 'film@gmail.at', '01 454 454', 'Rathausplatz Film Festival', 'https://www.visitingvienna.com/entertainment/events/rathaus-film-festival/#:~:text=The%202023%20festival%20is%20scheduled,extravaganza%20going%20to%20cost%20you%3F', 'Film'),
(7, 'How to fly', '2023-08-26', '18:00:00', 'The term film festival is a little misleading. We’re not talking Steven Spielberg retrospectives or a celebration of Estonian film noir. Instead, it’s all about the music.', 'https://filmfreeway-production-storage-01-storage.filmfreeway.com/festivals/logos/000/007/596/large/square_blank.jpg?1462652759', 200, 'film@gmail.at', '01 454 454', 'Rathausplatz Film Festival', 'https://www.visitingvienna.com/entertainment/events/rathaus-film-festival/#:~:text=The%202023%20festival%20is%20scheduled,extravaganza%20going%20to%20cost%20you%3F', 'Film'),
(8, 'Furniture museum', '2023-10-30', '17:00:00', 'Dance your way into a host of museums under a silvery moon, starry sky, or dark blanket of night fog (depending on the autumn weather Vienna throws at you) in this annual evening of museum festivities.', 'https://moebel-guide.at/sites/moebel/files/styles/gallery_carousel/public/2022-04/Ausstellung_Home%20Stories_Mo%CC%88belmuseum%20Wien%20%C2%A9%20SKB_Edgar%20Knaack_0.jpg?itok=BndCo3GN', 100, 'museum@gmail.at', '01 454 454', 'Andreasgasse 7\r\n1070 Wien', 'https://www.moebelmuseumwien.at/', 'Museum'),
(9, 'The Weltmuseum', '2023-10-30', '17:00:00', 'Dance your way into a host of museums under a silvery moon, starry sky, or dark blanket of night fog (depending on the autumn weather Vienna throws at you) in this annual evening of museum festivities.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1TisLTxbskflcPKoa-D-7_ss19yvpwWCxLA&usqp=CAU', 100, 'museum@gmail.at', '01 454 454', 'Heldenplatz\r\n1010 Vienna, Austria', 'https://www.weltmuseumwien.at/en/', 'Museum'),
(10, 'The Esperanto Museum', '2023-10-30', '17:00:00', 'Dance your way into a host of museums under a silvery moon, starry sky, or dark blanket of night fog (depending on the autumn weather Vienna throws at you) in this annual evening of museum festivities.', 'https://www.esperanto.at/wp-content/uploads/sites/2/2021/12/19_esperantomuseum_mg-768x512.jpg', 100, 'museum@gmail.at', '01 454 454', 'Herrengasse 9, 1010 Wien', 'https://www.esperanto.at/evento_at/esperanto-museum-in-wien/', 'Museum');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
