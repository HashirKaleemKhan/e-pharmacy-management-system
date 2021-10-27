-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 08:40 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(5, 'abdullah', '8504fd846ea28d33d68f09131fa49cda', '2017-01-24 16:21:18', '01-12-2019 07:36:47 PM'),
(6, 'Faraz', '8504fd846ea28d33d68f09131fa49cda', '2017-01-24 16:21:18', '01-12-2019 07:36:47 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(8, 'Tablets', 'Solid unit dosage', '2019-12-02 18:24:45', NULL),
(9, 'Syrups', 'Concentrated solution', '2019-12-02 18:25:14', NULL),
(10, 'Surgical', ' Tools that allow surgeons', '2019-12-02 18:25:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(5, 8, 4, 'Paracetamol', 'Paramed', 22, 25, 'Fever and Headache<br>', 'Paracetamol1.png', 'Ponstan.jpeg', 'qumic.jpg', 3, 'In Stock', '2019-12-02 18:41:24', NULL),
(6, 8, 5, 'Ascard', 'Medicos', 490, 500, 'Relax Cardiac muscles', 'Ascard.jpg', 'Arinac.jpg', 'Distalgesic.jpg', 5, 'In Stock', '2019-12-02 18:42:44', NULL),
(7, 8, 5, 'Brufen', 'Isboma', 376, 380, 'Relax Cardiac muscles<br>', 'Brufen.jpg', 'Distalgesic.jpg', '', 5, 'In Stock', '2019-12-02 18:43:40', NULL),
(8, 8, 6, 'Xanxax', 'Scociesta', 980, 1000, 'Xrays formula reduce cancerous cells', 'Xanax.jpg', 'Unix.jpg', 'Softin.png', 10, 'In Stock', '2019-12-02 18:44:54', NULL),
(9, 8, 6, 'Rivotril', 'Riverdale', 987, 1200, 'Reduce Cancerous Cells', 'Rivotril.png', 'Rigix.jpg', '', 7, 'In Stock', '2019-12-02 18:45:53', NULL),
(10, 8, 4, 'Panadol', 'First Care', 18, 20, 'Fever and Headache', 'Panadol_ExtraFuerte_455x455.jpg', '408x300-panadol-extra.jif', '', 4, 'In Stock', '2019-12-02 18:52:28', NULL),
(11, 9, 8, 'Coughio', 'Pardesi', 280, 300, 'Cough and Flu', 'multi-vitamin-syrup.jpg', 'tangedyl.jpg', '', 3, 'In Stock', '2019-12-02 18:59:39', NULL),
(12, 9, 8, 'Tusin', 'Ducky', 376, 500, 'Cough and Flu<br>', 'Tusin.jpg', 'Theraflu.jpg', 'v-zyme.jpg', 6, 'In Stock', '2019-12-02 19:00:24', NULL),
(13, 9, 7, 'Parasonin', 'Rehmat', 280, 290, 'Vitamins A,B,C', 'pranosin.jpg', 'piclin.jfif', 'Tylenol.jfif', 7, 'In Stock', '2019-12-02 19:03:51', NULL),
(14, 9, 7, 'Arinac', 'AgaKhan', 400, 420, 'Vitamins A,B,C,E<br>', 'arinac.png', 'ayurvedic.jpg', '', 10, 'In Stock', '2019-12-02 19:04:40', NULL),
(15, 9, 9, 'Calpol', 'Abbot', 160, 170, 'For Children Fever', 'calpol.jfif', 'benylin.png', 'Genexa.png', 5, 'In Stock', '2019-12-02 19:05:40', NULL),
(16, 9, 9, 'Panadol', 'Fadi', 200, 208, 'For Children Fever<br>', 'panadol.jfif', 'Mucaine.jpg', '', 12, 'In Stock', '2019-12-02 19:06:28', NULL),
(17, 10, 10, 'Clamps', 'waterloo', 1030, 1040, 'Cutting Skin', 'Clamps and occluders.jpg', 'dental-drill.jpg', 'Detachatip-graspers_pp_s1.jpg', 5, 'In Stock', '2019-12-02 19:24:09', NULL),
(18, 10, 10, 'Ligasure', 'brownze', 4980, 5000, 'Cutting Skin<br>', 'ligasure.jpg', 'Needle Driver.jpg', '', 60, 'In Stock', '2019-12-02 19:25:00', NULL),
(20, 10, 11, 'Rasp', 'Lmaord', 2908, 3000, 'Holder Tissue and skin', 'Rasp.jpg', 'scalpels.png', 'surgical suction.jpg', 20, 'In Stock', '2019-12-02 19:27:15', NULL),
(21, 10, 11, 'Surgical Drill', 'Fast', 3400, 3500, 'Holding Skin and cells<br>', 'surgical-drill-bit.jpg', 'surgical-retractor.jpg', '', 25, 'In Stock', '2019-12-02 19:28:20', NULL),
(22, 10, 12, 'Skin Stapler', 'Numlsuffa', 3909, 4000, 'Dress Wounds and accidents', 'Disposable Skin stapler.jpg', 'Distractors-For-Foot-And-Ankle-Surgery-Hintermann.jpg', 'endoscopy-equipment.jpg', 30, 'In Stock', '2019-12-02 19:29:42', NULL),
(23, 10, 12, 'Forester Clamp', 'Gurujee', 280, 380, 'Dressing Wounds', 'Foerster Clamp.jpg', 'HArmonic Scalpel.png', '', 40, 'In Stock', '2019-12-02 19:31:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(4, 8, 'Headache', '2019-12-02 18:26:08', NULL),
(5, 8, 'Cardiac', '2019-12-02 18:26:52', NULL),
(6, 8, 'Cancer', '2019-12-02 18:26:58', NULL),
(7, 9, 'Vitamins', '2019-12-02 18:27:05', NULL),
(8, 9, 'Cough', '2019-12-02 18:27:10', NULL),
(9, 9, 'Fever', '2019-12-02 18:27:22', NULL),
(10, 10, 'Cutting instruments ', '2019-12-02 18:27:50', NULL),
(11, 10, 'Holding instruments', '2019-12-02 18:28:18', NULL),
(12, 10, 'Dressings', '2019-12-02 18:28:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'abdullah@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-01 17:56:24', '01-12-2019 11:19:26 PM', 1),
(2, 'abdullah@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-01 18:19:34', '01-12-2019 11:19:38 PM', 1),
(3, 'abdullah@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-02 17:05:36', '02-12-2019 10:18:53 PM', 1),
(4, 'abdullah@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-02 17:25:30', '02-12-2019 10:28:23 PM', 1),
(5, 'faraz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-02 17:29:19', NULL, 1),
(6, 'abdullah@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-02 18:46:43', NULL, 0),
(7, 'faraz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-02 18:46:51', NULL, 1),
(8, 'abdullah@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-02 19:33:18', NULL, 0),
(9, 'abdullah@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-02 19:33:25', NULL, 0),
(10, 'faraz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-02 19:33:38', '03-12-2019 12:34:07 AM', 1),
(11, 'faraz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-02 19:34:20', '03-12-2019 12:36:06 AM', 1),
(12, 'faraz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-02 19:36:16', '03-12-2019 12:37:03 AM', 1),
(13, 'faraz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-02 19:37:07', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(2, 'Faraz', 'faraz@gmail.com', 9123213123, '8504fd846ea28d33d68f09131fa49cda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 17:29:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
