-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Apr 08, 2023 at 10:06 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maithreyaagencies`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_name`, `product_price`, `product_image`, `qty`, `total_price`, `product_code`) VALUES
(85, 'Servo ultra 10W', '41135', './uploads/1.jpeg', 1, '41135', '2');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Tyres'),
(2, 'Engine oils'),
(4, 'All');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL,
  `pay_status` int(255) NOT NULL,
  `order_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`, `pay_status`, `order_status`) VALUES
(19, 'nagasai', 'nagasaidonthi@gmail.com', '9441207375', 'punganur', 'cod', 'Servo ultra 10W(5), servo pride 40(10)', '30245', 1, 1),
(20, 'mohan', 'mohanram@gmail.com', '9441207375', 'db,zsjv,jam', 'cod', 'Servo ultra 10W(2), Servo ultra 10W(5)', '109115', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `category_id` int(11) NOT NULL,
  `uploaded_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_desc`, `product_image`, `price`, `product_qty`, `category_id`, `uploaded_date`) VALUES
(2, 'Servo ultra 10W', '210 litres', './uploads/1.jpeg', 41135, 1, 2, '2022-04-04'),
(5, 'Servo ultra 10W', '26 litres', './uploads/3.jpeg', 5369, 1, 2, '2022-04-04'),
(10, 'servo pride 40', '1 litre', './uploads/5.jpeg', 340, 1, 2, '2023-03-05'),
(11, 'Servo pride 40', '5 litres', './uploads/7.jpeg', 1622, 1, 2, '2023-03-05'),
(12, 'Servo pride 40', '20 litres', './uploads/6.jpeg', 6600, 1, 2, '2023-03-05'),
(13, 'Servo Gear HP 90', '0.5 litres', './uploads/8.jpeg', 180, 1, 2, '2023-03-05'),
(14, 'Servo Gear HP 90', '1 litre', './uploads/8.jpeg', 345, 1, 2, '2023-03-05'),
(15, 'servo pride 40', '10 litres', './uploads/6.jpeg', 3400, 1, 2, '2023-03-05'),
(16, 'Servo Gear HP 90', '5 litres', './uploads/8.jpeg', 1700, 1, 2, '2023-03-05'),
(17, 'Servo Gear HP 90', '210 litres', './uploads/2.jpeg', 50551, 1, 2, '2023-03-05'),
(22, 'Ceat Anmol Rib 4.50 - 10 Tube-Type Truck Tyre', '30', './uploads/31.webp', 2589, 1, 1, '2023-04-02'),
(23, 'CEAT 7.50R16 Winsuper X3 D Light Truck 16 PR Tyre and Tube with Flap', '29', './uploads/32.webp', 15800, 1, 1, '2023-04-02'),
(24, 'CEAT FM 7.50-20 12PR Tube-Type Tyre for Truck\r\n', '40 ', './uploads/33.webp', 12800, 1, 1, '2023-04-02'),
(25, 'Ceat Mile Xl Rib Pro Truck TyresOpens ', '35', './uploads/34.webp', 270000, 1, 1, '2023-04-02'),
(26, 'CEAT 7.50-16 Buland Mile XL Light Truck 16 PR Tyre and Tube with Flap\r\n', '42', './uploads/35.webp', 12900, 1, 1, '2023-04-02'),
(27, 'Ceat 165D14 RD920 Rib Tyre for TruckOpens ', '59', './uploads/36.webp', 5290, 1, 1, '2023-04-02'),
(28, 'CEAT Czar A/T 255/65 R 18 Tubeless 111 H', '20', './uploads/37.webp', 5799, 1, 1, '2023-04-02'),
(29, 'Ceat Milaze 7.00 R15 Tube-Type Truck Tyre', '34', './uploads/38.webp', 9450, 1, 1, '2023-04-02'),
(30, 'CEAT 8.25-20 Mile XL RIB Pro Truck Bias 16 PR ', '44', './uploads/39.webp', 16800, 1, 1, '2023-04-02'),
(31, 'Ceat 10.00-20 Mile XL+HD TT 16PR Tube Type Tyre ', '10', './uploads/40.webp', 24800, 1, 1, '2023-04-02'),
(32, 'CEAT 8.25R20 RD418 Truck Radial 16 PR Tyre and Tube with Flap', '15', './uploads/41.webp', 22800, 1, 1, '2023-04-02'),
(33, 'CEAT Rock Max X3 10.00-20/18PR Tube-Type Tyre ', '20', './uploads/42.webp', 27800, 1, 1, '2023-04-02'),
(34, 'Radial Mrf 1000 R20 Steel Muscle S3p4 Tt, Size: 1000.20 ', '15', './uploads/43.webp', 48500, 1, 1, '2023-04-02'),
(35, 'MRF 10 00 20 Super Lug Fifty Plus R Tyre, Model Name/Number: Slg 50+r ', '28', './uploads/44.webp', 18500, 1, 1, '2023-04-02'),
(36, 'MRF Truck Tyre, Diameter: 20 inch ', '37', './uploads/45.webp', 18000, 1, 1, '2023-04-02'),
(38, 'Rubber Truck 8.25.16 S.M 99 MRF', '18', './uploads/46.webp', 9000, 1, 1, '2023-04-02'),
(39, 'Mrf S3C8 Plus Heavy Duty Truck Tyre Size 1000R20', '17', './uploads/47.webp', 49100, 1, 1, '2023-04-02'),
(40, 'Apollo 10.00 R20 146/143 K 16PR Endurace LD-D Tyre', '13', './uploads/48.webp', 37800, 1, 1, '2023-04-02'),
(41, 'Apollo 10.00 R20 146/143 K 16PR Endurace LD-D', '19', './uploads/49.webp', 39900, 1, 1, '2023-04-02'),
(42, 'Apollo XT7 8.25-20 16PR Tube Type', '29', './uploads/50.webp', 21800, 1, 1, '2023-04-02'),
(44, 'Gulf 8.5L XHD Supreme+ 15W-40 ', '20litres\r\n', './uploads/11.webp', 3280, 1, 2, '2023-04-02'),
(45, 'Castrol CRB TURBOMAX 15W-40 CI-4 Plus Diesel Engine Oil for ', '24litres', './uploads/12.webp', 3564, 1, 2, '2023-04-02'),
(47, 'Castrol CRB MINI-TRUCK 15W-40 CH-4 Diesel Engine ', '3litres', './uploads/13.webp', 1045, 1, 2, '2023-04-02'),
(49, 'Castrol 15W-40 CRB Mini-truck Engine Oil (3L)', '3 litres', './uploads/51.webp', 1060, 1, 2, '2023-04-05'),
(50, 'Shell Helix HX8 5W-30 API SN Plus Fully Synthetic Engine Oil for Petrol, Diesel ', '4litres', './uploads/52.webp', 2370, 1, 2, '2023-04-05'),
(51, 'Gulf 50L Superfleet 15W-40 Diesel & Gas Engine Oil for trucks', '50 litres', './uploads/53.webp', 12800, 1, 2, '2023-04-05'),
(52, 'Mobil Motor Oil, 5W-20, Advance Full Synthetic, Truck & SUV - 5qt', '4.73litres', './uploads/54.webp', 4360, 1, 2, '2023-04-05'),
(53, 'Gulf 20L Superfleet Turbo + 15W-40 Diesel & Gas Engine Oil for Truck & Buses', '20 litres', './uploads/55.webp', 7534, 1, 2, '2023-04-05'),
(54, 'Gulf 6L XHD Supreme+ 15W-40 Diesel & Gas Engine Oil for Truck & Buses', '6litres', './uploads/56.webp', 2380, 1, 2, '2023-04-05'),
(55, 'Shell Rotella 5 gal. T4 15W-40 Motor Oil', '18.9litres', './uploads/57.webp', 12872, 1, 2, '2023-04-05'),
(56, 'Proline Hyrax 1.9\" G8 Rock Terrain Crawler Truck Tyre', '20', './uploads/58.webp', 2709, 1, 1, '2023-04-05'),
(57, 'Solid Rubber Strong Grip Heavy Duty Long Duty Black Mrf Truck Tyre', '26', './uploads/59.webp', 17000, 1, 1, '2023-04-05'),
(58, '1085mm Diameter Solid Flat Mrf Super Lug Fifty Plus Tire For Trucks', '37', './uploads/60.webp', 20000, 1, 1, '2023-04-05'),
(59, 'Apollo 295/90 R20 152/148J Endurace LD-D Tyre for Truck/Bus', '19', './uploads/61.webp', 37800, 1, 1, '2023-04-05'),
(60, 'Premium Apollo Truck Tyre (1000 R 20)', '10', './uploads/62.webp', 42000, 1, 1, '2023-04-05'),
(61, 'Apollo 295/90 R20 152/148J Endurace MA 326-D Tyre for Truck/Bus', '12', './uploads/63.webp', 35800, 1, 1, '2023-04-05'),
(62, '28x13 Inch 150 Kilogram Round Heavy Duty Truck Radial Tyre', '15', './uploads/64.webp', 15000, 1, 1, '2023-04-05'),
(63, 'Apollo LOADSTAR SUPER XP 10.00-20 18PR Tube Type Tyre For Truck/Bus', '10', './uploads/65.webp', 29900, 1, 1, '2023-04-05'),
(64, 'JK Tyre 295/90R20 Rubber Lug Jdy Tyre for Truck & Bus', '16', './uploads/66.webp', 29900, 1, 1, '2023-04-05'),
(65, 'JK Tyre 295/90R20 Rubber Lug Jdy Tyre for Truck & Bus', '16', './uploads/67.webp', 14789, 1, 1, '2023-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(29, 'nagasai', 'donthinagasai11376@gmail.com', '1234321123', 'hi', '2023-03-25 07:17:36', NULL),
(30, 'nelson', 'nelss@gmail.com', '9876543210', 'good website', '2023-03-30 02:44:21', NULL),
(31, 'sd vswrjhv', 'dvjkwr@gmail.com', '1234512345', 'hiiiiiii', '2023-04-02 08:20:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(0, 'nagasai', 'nagasaidonthi@gmail.com', '5f6d7dde7d120fd6a034a8f3432606c8', 'user'),
(0, 'nagasaidonthi', 'donthinagasai11376@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'admin'),
(0, 'mohan', 'mohanram@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'admin'),
(0, 'madhuri', 'madhuri@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'user'),
(0, 'nelss', 'nelss@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(0, 'abcd', 'abcd@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
