-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2019 at 10:26 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `desc`, `date`) VALUES
(1, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus, diam a bibendum dapibus, orci mauris rhoncus velit, nec cursus lorem augue sed nulla. Proin et urna leo. Proin a purus turpis. Proin ullamcorper ultrices elit, nec rhoncus sem sagittis non. Fusce id nulla quis felis dictum faucibus. Phasellus sagittis fringilla nisl quis dapibus. Integer vitae viverra sem. Ut sodales viverra ex. Donec vitae lacinia ipsum. Sed id posuere risus. Curabitur in malesuada elit, quis efficitur neque. Morbi pellentesque, est nec rhoncus suscipit, purus tortor ultrices nunc, vitae aliquam elit lorem fermentum mauris. Etiam tincidunt nisl nec tempus feugiat. Etiam ullamcorper pretium mauris, ac sagittis nunc imperdiet a.', '2018-12-30 21:34:22'),
(2, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus, diam a bibendum dapibus, orci mauris rhoncus velit, nec cursus lorem augue sed nulla. Proin et urna leo. Proin a purus turpis. Proin ullamcorper ultrices elit, nec rhoncus sem sagittis non. Fusce id nulla quis felis dictum faucibus. Phasellus sagittis fringilla nisl quis dapibus. Integer vitae viverra sem. Ut sodales viverra ex. Donec vitae lacinia ipsum. Sed id posuere risus. Curabitur in malesuada elit, quis efficitur neque. Morbi pellentesque, est nec rhoncus suscipit, purus tortor ultrices nunc, vitae aliquam elit lorem fermentum mauris. Etiam tincidunt nisl nec tempus feugiat. Etiam ullamcorper pretium mauris, ac sagittis nunc imperdiet a.', '2018-12-30 21:34:22'),
(3, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus, diam a bibendum dapibus, orci mauris rhoncus velit, nec cursus lorem augue sed nulla. Proin et urna leo. Proin a purus turpis. Proin ullamcorper ultrices elit, nec rhoncus sem sagittis non. Fusce id nulla quis felis dictum faucibus. Phasellus sagittis fringilla nisl quis dapibus. Integer vitae viverra sem. Ut sodales viverra ex. Donec vitae lacinia ipsum. Sed id posuere risus. Curabitur in malesuada elit, quis efficitur neque. Morbi pellentesque, est nec rhoncus suscipit, purus tortor ultrices nunc, vitae aliquam elit lorem fermentum mauris. Etiam tincidunt nisl nec tempus feugiat. Etiam ullamcorper pretium mauris, ac sagittis nunc imperdiet a.', '2018-12-30 22:25:35'),
(4, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus, diam a bibendum dapibus, orci mauris rhoncus velit, nec cursus lorem augue sed nulla. Proin et urna leo. Proin a purus turpis. Proin ullamcorper ultrices elit, nec rhoncus sem sagittis non. Fusce id nulla quis felis dictum faucibus. Phasellus sagittis fringilla nisl quis dapibus. Integer vitae viverra sem. Ut sodales viverra ex. Donec vitae lacinia ipsum. Sed id posuere risus. Curabitur in malesuada elit, quis efficitur neque. Morbi pellentesque, est nec rhoncus suscipit, purus tortor ultrices nunc, vitae aliquam elit lorem fermentum mauris. Etiam tincidunt nisl nec tempus feugiat. Etiam ullamcorper pretium mauris, ac sagittis nunc imperdiet a.', '2018-12-30 22:25:59'),
(5, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus, diam a bibendum dapibus, orci mauris rhoncus velit, nec cursus lorem augue sed nulla. Proin et urna leo. Proin a purus turpis. Proin ullamcorper ultrices elit, nec rhoncus sem sagittis non. Fusce id nulla quis felis dictum faucibus. Phasellus sagittis fringilla nisl quis dapibus. Integer vitae viverra sem. Ut sodales viverra ex. Donec vitae lacinia ipsum. Sed id posuere risus. Curabitur in malesuada elit, quis efficitur neque. Morbi pellentesque, est nec rhoncus suscipit, purus tortor ultrices nunc, vitae aliquam elit lorem fermentum mauris. Etiam tincidunt nisl nec tempus feugiat. Etiam ullamcorper pretium mauris, ac sagittis nunc imperdiet a.', '2018-12-30 22:25:59'),
(6, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus, diam a bibendum dapibus, orci mauris rhoncus velit, nec cursus lorem augue sed nulla. Proin et urna leo. Proin a purus turpis. Proin ullamcorper ultrices elit, nec rhoncus sem sagittis non. Fusce id nulla quis felis dictum faucibus. Phasellus sagittis fringilla nisl quis dapibus. Integer vitae viverra sem. Ut sodales viverra ex. Donec vitae lacinia ipsum. Sed id posuere risus. Curabitur in malesuada elit, quis efficitur neque. Morbi pellentesque, est nec rhoncus suscipit, purus tortor ultrices nunc, vitae aliquam elit lorem fermentum mauris. Etiam tincidunt nisl nec tempus feugiat. Etiam ullamcorper pretium mauris, ac sagittis nunc imperdiet a.', '2018-12-30 22:25:59'),
(7, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus, diam a bibendum dapibus, orci mauris rhoncus velit, nec cursus lorem augue sed nulla. Proin et urna leo. Proin a purus turpis. Proin ullamcorper ultrices elit, nec rhoncus sem sagittis non. Fusce id nulla quis felis dictum faucibus. Phasellus sagittis fringilla nisl quis dapibus. Integer vitae viverra sem. Ut sodales viverra ex. Donec vitae lacinia ipsum. Sed id posuere risus. Curabitur in malesuada elit, quis efficitur neque. Morbi pellentesque, est nec rhoncus suscipit, purus tortor ultrices nunc, vitae aliquam elit lorem fermentum mauris. Etiam tincidunt nisl nec tempus feugiat. Etiam ullamcorper pretium mauris, ac sagittis nunc imperdiet a.', '2018-12-30 22:25:59'),
(8, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus, diam a bibendum dapibus, orci mauris rhoncus velit, nec cursus lorem augue sed nulla. Proin et urna leo. Proin a purus turpis. Proin ullamcorper ultrices elit, nec rhoncus sem sagittis non. Fusce id nulla quis felis dictum faucibus. Phasellus sagittis fringilla nisl quis dapibus. Integer vitae viverra sem. Ut sodales viverra ex. Donec vitae lacinia ipsum. Sed id posuere risus. Curabitur in malesuada elit, quis efficitur neque. Morbi pellentesque, est nec rhoncus suscipit, purus tortor ultrices nunc, vitae aliquam elit lorem fermentum mauris. Etiam tincidunt nisl nec tempus feugiat. Etiam ullamcorper pretium mauris, ac sagittis nunc imperdiet a.', '2018-12-30 22:25:59'),
(9, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus, diam a bibendum dapibus, orci mauris rhoncus velit, nec cursus lorem augue sed nulla. Proin et urna leo. Proin a purus turpis. Proin ullamcorper ultrices elit, nec rhoncus sem sagittis non. Fusce id nulla quis felis dictum faucibus. Phasellus sagittis fringilla nisl quis dapibus. Integer vitae viverra sem. Ut sodales viverra ex. Donec vitae lacinia ipsum. Sed id posuere risus. Curabitur in malesuada elit, quis efficitur neque. Morbi pellentesque, est nec rhoncus suscipit, purus tortor ultrices nunc, vitae aliquam elit lorem fermentum mauris. Etiam tincidunt nisl nec tempus feugiat. Etiam ullamcorper pretium mauris, ac sagittis nunc imperdiet a.', '2018-12-30 22:25:59'),
(10, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus, diam a bibendum dapibus, orci mauris rhoncus velit, nec cursus lorem augue sed nulla. Proin et urna leo. Proin a purus turpis. Proin ullamcorper ultrices elit, nec rhoncus sem sagittis non. Fusce id nulla quis felis dictum faucibus. Phasellus sagittis fringilla nisl quis dapibus. Integer vitae viverra sem. Ut sodales viverra ex. Donec vitae lacinia ipsum. Sed id posuere risus. Curabitur in malesuada elit, quis efficitur neque. Morbi pellentesque, est nec rhoncus suscipit, purus tortor ultrices nunc, vitae aliquam elit lorem fermentum mauris. Etiam tincidunt nisl nec tempus feugiat. Etiam ullamcorper pretium mauris, ac sagittis nunc imperdiet a.', '2018-12-30 22:25:59'),
(12, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus, diam a bibendum dapibus, orci mauris rhoncus velit, nec cursus lorem augue sed nulla. Proin et urna leo. Proin a purus turpis. Proin ullamcorper ultrices elit, nec rhoncus sem sagittis non. Fusce id nulla quis felis dictum faucibus. Phasellus sagittis fringilla nisl quis dapibus. Integer vitae viverra sem. Ut sodales viverra ex. Donec vitae lacinia ipsum. Sed id posuere risus. Curabitur in malesuada elit, quis efficitur neque. Morbi pellentesque, est nec rhoncus suscipit, purus tortor ultrices nunc, vitae aliquam elit lorem fermentum mauris. Etiam tincidunt nisl nec tempus feugiat. Etiam ullamcorper pretium mauris, ac sagittis nunc imperdiet a.', '2018-12-30 22:25:59'),
(13, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus, diam a bibendum dapibus, orci mauris rhoncus velit, nec cursus lorem augue sed nulla. Proin et urna leo. Proin a purus turpis. Proin ullamcorper ultrices elit, nec rhoncus sem sagittis non. Fusce id nulla quis felis dictum faucibus. Phasellus sagittis fringilla nisl quis dapibus. Integer vitae viverra sem. Ut sodales viverra ex. Donec vitae lacinia ipsum. Sed id posuere risus. Curabitur in malesuada elit, quis efficitur neque. Morbi pellentesque, est nec rhoncus suscipit, purus tortor ultrices nunc, vitae aliquam elit lorem fermentum mauris. Etiam tincidunt nisl nec tempus feugiat. Etiam ullamcorper pretium mauris, ac sagittis nunc imperdiet a.', '2018-12-30 22:25:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
