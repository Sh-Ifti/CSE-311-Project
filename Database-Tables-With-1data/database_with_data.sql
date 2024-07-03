-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2023 at 02:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_with_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_ID` int(20) NOT NULL,
  `address_type` varchar(20) DEFAULT NULL,
  `address_details` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_ID`, `address_type`, `address_details`) VALUES
(1, 'Home', '123 Mirpur');

-- --------------------------------------------------------

--
-- Table structure for table `belong_to`
--

CREATE TABLE `belong_to` (
  `brand_ID` int(20) NOT NULL,
  `product_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `belong_to`
--

INSERT INTO `belong_to` (`brand_ID`, `product_ID`) VALUES
(1, 101);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_ID` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_ID`, `name`, `description`) VALUES
(1, 'Apple', 'Gadgets');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_ID` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  `product_ID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_ID`, `name`, `description`, `product_ID`) VALUES
(1, 'Daily Essentials', 'Products for regular', 101);

-- --------------------------------------------------------

--
-- Table structure for table `classifies`
--

CREATE TABLE `classifies` (
  `category_ID` int(20) NOT NULL,
  `brand_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classifies`
--

INSERT INTO `classifies` (`category_ID`, `brand_ID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `product_ID` int(20) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `colour` varchar(20) DEFAULT NULL,
  `country_of_origin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`product_ID`, `size`, `colour`, `country_of_origin`) VALUES
(102, 'Large', 'Blue', 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_ID` int(20) NOT NULL,
  `address_ID` int(20) DEFAULT NULL,
  `shipping_method_ID` int(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `contact_information` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_ID`, `address_ID`, `shipping_method_ID`, `name`, `contact_information`, `email`) VALUES
(1, 1, 1, 'Abir', '0191', 'abcd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `electronics`
--

CREATE TABLE `electronics` (
  `product_ID` int(20) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `warranty` varchar(20) DEFAULT NULL,
  `product_dimension` varchar(50) DEFAULT NULL,
  `country_of_origin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `electronics`
--

INSERT INTO `electronics` (`product_ID`, `model`, `weight`, `warranty`, `product_dimension`, `country_of_origin`) VALUES
(101, 'Vivo', 5.2, '1 Year', '10x5x2', 'China');

-- --------------------------------------------------------

--
-- Table structure for table `groceries`
--

CREATE TABLE `groceries` (
  `product_ID` int(20) DEFAULT NULL,
  `ingredients` varchar(20) DEFAULT NULL,
  `safety_information` varchar(20) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groceries`
--

INSERT INTO `groceries` (`product_ID`, `ingredients`, `safety_information`, `expiry_date`) VALUES
(103, 'Tea', 'keep reach out of ch', '2023-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `product_ID` int(20) NOT NULL,
  `quantity_in_stock` int(20) NOT NULL,
  `reordering_threshold` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`product_ID`, `quantity_in_stock`, `reordering_threshold`) VALUES
(101, 50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_audit`
--

CREATE TABLE `inventory_audit` (
  `audit_ID` int(20) NOT NULL,
  `product_ID` int(20) DEFAULT NULL,
  `audit_date` date DEFAULT NULL,
  `audit_outcome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_audit`
--

INSERT INTO `inventory_audit` (`audit_ID`, `product_ID`, `audit_date`, `audit_outcome`) VALUES
(1, 101, '2023-09-13', 'AuditOutcome');

-- --------------------------------------------------------

--
-- Table structure for table `money_reciept`
--

CREATE TABLE `money_reciept` (
  `customer_ID` int(20) NOT NULL,
  `product_ID` int(20) NOT NULL,
  `order_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `money_reciept`
--

INSERT INTO `money_reciept` (`customer_ID`, `product_ID`, `order_ID`) VALUES
(1, 101, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(20) NOT NULL,
  `order_date` date DEFAULT NULL,
  `shipping_address` varchar(20) DEFAULT NULL,
  `payment_method` varchar(10) DEFAULT NULL,
  `order_status` varchar(10) DEFAULT NULL,
  `carrier_ID` int(20) DEFAULT NULL,
  `shipping_method_ID` int(20) DEFAULT NULL,
  `address_ID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `order_date`, `shipping_address`, `payment_method`, `order_status`, `carrier_ID`, `shipping_method_ID`, `address_ID`) VALUES
(1, '2023-09-13', 'Mirpur', 'Cash', 'Pending', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE `others` (
  `product_ID` int(20) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `country_of_origin` varchar(50) DEFAULT NULL,
  `product_dimension` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `others`
--

INSERT INTO `others` (`product_ID`, `weight`, `quantity`, `country_of_origin`, `product_dimension`) VALUES
(104, 2.5, 100, 'India', '10x8x6');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_ID` int(20) NOT NULL,
  `order_ID` int(20) DEFAULT NULL,
  `customer_ID` int(20) DEFAULT NULL,
  `payment_amount` float DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_ID`, `order_ID`, `customer_ID`, `payment_amount`, `payment_date`, `payment_status`) VALUES
(1, 1, 1, 100, '2023-09-13', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_ID` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  `stock_availability` int(20) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_ID`, `name`, `description`, `stock_availability`, `price`) VALUES
(101, 'Fan', '3 blade ', 100, 50),
(102, 'Shirt', 'White', 100, 50),
(103, 'Tea powder', 'Smooth and colorful', 100, 50),
(104, 'Paper', 'Writing tool', 100, 50);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `product_ID` int(20) NOT NULL,
  `average_rating` int(5) NOT NULL,
  `total_number_of_reviews` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`product_ID`, `average_rating`, `total_number_of_reviews`) VALUES
(101, 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_ID` int(20) NOT NULL,
  `review_text` varchar(50) DEFAULT NULL,
  `rating` int(5) DEFAULT NULL,
  `product_ID` int(20) DEFAULT NULL,
  `customer_ID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_ID`, `review_text`, `rating`, `product_ID`, `customer_ID`) VALUES
(1, 'Good', 5, 101, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_carriers`
--

CREATE TABLE `shipping_carriers` (
  `carrier_ID` int(20) NOT NULL,
  `shipping_method_ID` int(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `contact_information` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_carriers`
--

INSERT INTO `shipping_carriers` (`carrier_ID`, `shipping_method_ID`, `name`, `contact_information`) VALUES
(1, 1, 'Truck', '0181');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method`
--

CREATE TABLE `shipping_method` (
  `shipping_method_ID` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  `shipping_cost` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_method`
--

INSERT INTO `shipping_method` (`shipping_method_ID`, `name`, `description`, `shipping_cost`) VALUES
(1, 'Express', 'In 1 Hour', 10);

-- --------------------------------------------------------

--
-- Table structure for table `star_customer`
--

CREATE TABLE `star_customer` (
  `star_customer_ID` int(20) NOT NULL,
  `customer_ID` int(20) NOT NULL,
  `reward_points` int(10) NOT NULL,
  `discount_pct` int(5) NOT NULL,
  `membership_start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `star_customer`
--

INSERT INTO `star_customer` (`star_customer_ID`, `customer_ID`, `reward_points`, `discount_pct`, `membership_start_date`) VALUES
(1, 1, 100, 10, '2023-09-13');

-- --------------------------------------------------------

--
-- Table structure for table `star_supplier`
--

CREATE TABLE `star_supplier` (
  `supplier_ID` int(20) NOT NULL,
  `star_supplier_ID` int(20) NOT NULL,
  `monthly_supply` int(20) NOT NULL,
  `start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `star_supplier`
--

INSERT INTO `star_supplier` (`supplier_ID`, `star_supplier_ID`, `monthly_supply`, `start_date`) VALUES
(1, 2, 500, '2023-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_ID` int(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `contact_details` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_ID`, `name`, `contact_details`) VALUES
(1, 'Tota', '0141');

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `supplier_ID` int(20) NOT NULL,
  `product_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`supplier_ID`, `product_ID`) VALUES
(1, 101);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_ID`);

--
-- Indexes for table `belong_to`
--
ALTER TABLE `belong_to`
  ADD PRIMARY KEY (`brand_ID`,`product_ID`),
  ADD KEY `product_ID` (`product_ID`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_ID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_ID`),
  ADD KEY `product_ID` (`product_ID`);

--
-- Indexes for table `classifies`
--
ALTER TABLE `classifies`
  ADD PRIMARY KEY (`category_ID`,`brand_ID`),
  ADD KEY `brand_ID` (`brand_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_ID`),
  ADD KEY `address_ID` (`address_ID`),
  ADD KEY `shipping_method_ID` (`shipping_method_ID`);

--
-- Indexes for table `electronics`
--
ALTER TABLE `electronics`
  ADD KEY `product_ID` (`product_ID`);

--
-- Indexes for table `groceries`
--
ALTER TABLE `groceries`
  ADD KEY `product_ID` (`product_ID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`product_ID`,`quantity_in_stock`,`reordering_threshold`);

--
-- Indexes for table `inventory_audit`
--
ALTER TABLE `inventory_audit`
  ADD PRIMARY KEY (`audit_ID`),
  ADD KEY `product_ID` (`product_ID`);

--
-- Indexes for table `money_reciept`
--
ALTER TABLE `money_reciept`
  ADD PRIMARY KEY (`customer_ID`,`product_ID`,`order_ID`),
  ADD KEY `product_ID` (`product_ID`),
  ADD KEY `order_ID` (`order_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `shipping_method_ID` (`shipping_method_ID`),
  ADD KEY `carrier_ID` (`carrier_ID`),
  ADD KEY `address_ID` (`address_ID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_ID`),
  ADD KEY `customer_ID` (`customer_ID`),
  ADD KEY `order_ID` (`order_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_ID`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`product_ID`,`average_rating`,`total_number_of_reviews`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_ID`),
  ADD KEY `product_ID` (`product_ID`),
  ADD KEY `customer_ID` (`customer_ID`);

--
-- Indexes for table `shipping_carriers`
--
ALTER TABLE `shipping_carriers`
  ADD PRIMARY KEY (`carrier_ID`),
  ADD KEY `shipping_method_ID` (`shipping_method_ID`);

--
-- Indexes for table `shipping_method`
--
ALTER TABLE `shipping_method`
  ADD PRIMARY KEY (`shipping_method_ID`);

--
-- Indexes for table `star_customer`
--
ALTER TABLE `star_customer`
  ADD PRIMARY KEY (`customer_ID`,`star_customer_ID`,`reward_points`,`discount_pct`,`membership_start_date`);

--
-- Indexes for table `star_supplier`
--
ALTER TABLE `star_supplier`
  ADD PRIMARY KEY (`supplier_ID`,`star_supplier_ID`,`monthly_supply`,`start_date`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_ID`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`supplier_ID`,`product_ID`),
  ADD KEY `product_ID` (`product_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `belong_to`
--
ALTER TABLE `belong_to`
  ADD CONSTRAINT `belong_to_ibfk_1` FOREIGN KEY (`brand_ID`) REFERENCES `brands` (`brand_ID`),
  ADD CONSTRAINT `belong_to_ibfk_2` FOREIGN KEY (`product_ID`) REFERENCES `products` (`product_ID`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`product_ID`) REFERENCES `products` (`product_ID`);

--
-- Constraints for table `classifies`
--
ALTER TABLE `classifies`
  ADD CONSTRAINT `classifies_ibfk_1` FOREIGN KEY (`category_ID`) REFERENCES `categories` (`category_ID`),
  ADD CONSTRAINT `classifies_ibfk_2` FOREIGN KEY (`brand_ID`) REFERENCES `brands` (`brand_ID`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`address_ID`) REFERENCES `address` (`address_ID`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`shipping_method_ID`) REFERENCES `shipping_method` (`shipping_method_ID`);

--
-- Constraints for table `electronics`
--
ALTER TABLE `electronics`
  ADD CONSTRAINT `electronics_ibfk_1` FOREIGN KEY (`product_ID`) REFERENCES `products` (`product_ID`);

--
-- Constraints for table `groceries`
--
ALTER TABLE `groceries`
  ADD CONSTRAINT `groceries_ibfk_1` FOREIGN KEY (`product_ID`) REFERENCES `products` (`product_ID`);

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_ID`) REFERENCES `products` (`product_ID`);

--
-- Constraints for table `inventory_audit`
--
ALTER TABLE `inventory_audit`
  ADD CONSTRAINT `inventory_audit_ibfk_1` FOREIGN KEY (`product_ID`) REFERENCES `products` (`product_ID`);

--
-- Constraints for table `money_reciept`
--
ALTER TABLE `money_reciept`
  ADD CONSTRAINT `money_reciept_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_ID`),
  ADD CONSTRAINT `money_reciept_ibfk_2` FOREIGN KEY (`product_ID`) REFERENCES `products` (`product_ID`),
  ADD CONSTRAINT `money_reciept_ibfk_3` FOREIGN KEY (`order_ID`) REFERENCES `orders` (`order_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`shipping_method_ID`) REFERENCES `shipping_method` (`shipping_method_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`carrier_ID`) REFERENCES `shipping_carriers` (`carrier_ID`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`address_ID`) REFERENCES `address` (`address_ID`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_ID`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`order_ID`) REFERENCES `orders` (`order_ID`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`product_ID`) REFERENCES `products` (`product_ID`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`product_ID`) REFERENCES `products` (`product_ID`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_ID`);

--
-- Constraints for table `shipping_carriers`
--
ALTER TABLE `shipping_carriers`
  ADD CONSTRAINT `shipping_carriers_ibfk_1` FOREIGN KEY (`shipping_method_ID`) REFERENCES `shipping_method` (`shipping_method_ID`);

--
-- Constraints for table `star_customer`
--
ALTER TABLE `star_customer`
  ADD CONSTRAINT `star_customer_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_ID`);

--
-- Constraints for table `star_supplier`
--
ALTER TABLE `star_supplier`
  ADD CONSTRAINT `star_supplier_ibfk_1` FOREIGN KEY (`supplier_ID`) REFERENCES `supplier` (`supplier_ID`);

--
-- Constraints for table `supplies`
--
ALTER TABLE `supplies`
  ADD CONSTRAINT `supplies_ibfk_1` FOREIGN KEY (`supplier_ID`) REFERENCES `supplier` (`supplier_ID`),
  ADD CONSTRAINT `supplies_ibfk_2` FOREIGN KEY (`product_ID`) REFERENCES `products` (`product_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
