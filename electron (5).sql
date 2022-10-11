-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2022 at 11:39 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electron`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `item_id` int(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` int(255) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `item_id`, `item_name`, `item_price`, `item_image`, `user_email`) VALUES
(4, 21, 'Sony LinkBuds', 849, 'Sony_LinkBuds.png', 'mingxuan8833@gmail.com'),
(5, 21, 'Sony LinkBuds', 849, 'Sony_LinkBuds.png', 'mingxuan8833@gmail.com'),
(12, 18, 'Sony WH-1000XM3', 899, 'Sony_WH-1000XM3.png', 'mingxuan8833@gmail.com'),
(14, 27, 'SkullCandy Grind Earbuds', 400, 'SkullCandy_Grind_Earbuds.jpg', 'mingxuan8833@gmail.com'),
(16, 2, 'Lenovo Smart Tab M10 FHD Plus 4G LTE 10.3', 999, 'TAB2.png', 'mingxuan8833@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(50) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Laptop\r\n'),
(2, 'Phone'),
(3, 'Audio'),
(4, 'Tablet'),
(5, 'Cable');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `customer_dob` date NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_password` varchar(100) NOT NULL,
  `customer_connum` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_username`, `customer_dob`, `customer_email`, `customer_password`, `customer_connum`) VALUES
(5, 'ming', '2002-06-11', 'mingxuan8833@gmail.com', '1234567890', '012-3255298'),
(6, 'bobbob', '2002-06-11', 'mingxuan3388@gmail.com', '1234567890', '012-3330897'),
(7, 'Leron_cheah', '1111-01-01', 'leroncheah@gmail.com', '123456', '012-5906693'),
(8, 'Timmy', '1567-11-11', 'timmy@gmail.com', '123456', '012-5906695');

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE `order1` (
  `order_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `total_price` int(11) NOT NULL,
  `address` varchar(535) NOT NULL,
  `order_date` date NOT NULL,
  `shipping_date` date NOT NULL,
  `delivery_status` varchar(535) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order1`
--

INSERT INTO `order1` (`order_id`, `user_email`, `total_price`, `address`, `order_date`, `shipping_date`, `delivery_status`) VALUES
(2, 'mingxuan8833@gmail.com', 2847, 'Kampung Cheras Baru 56100', '2022-04-06', '2022-04-13', 'Out for Delivery'),
(3, 'leroncheah@gmail.com', 4797, '30, Jalan Permai M2, Bukit Ampang Permai 68000', '2022-04-07', '0000-00-00', 'Preparing'),
(4, 'leroncheah@gmail.com', 880, '30, Jalan Permai M2, Bukit Ampang Permai 68000', '2022-04-07', '0000-00-00', 'Preparing'),
(5, 'leroncheah@gmail.com', 120, '30, Jalan Permai M2, Bukit Ampang Permai 68000', '2022-04-07', '0000-00-00', 'Preparing');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `orderdetail_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`orderdetail_id`, `product_id`, `user_email`, `price`, `order_id`) VALUES
(1, 18, 'mingxuan8833@gmail.com', 899, 2),
(2, 19, 'mingxuan8833@gmail.com', 1099, 2),
(3, 21, 'mingxuan8833@gmail.com', 849, 2),
(4, 96, 'leroncheah@gmail.com', 800, 3),
(5, 33, 'leroncheah@gmail.com', 3997, 3),
(6, 96, 'leroncheah@gmail.com', 800, 4),
(7, 66, 'leroncheah@gmail.com', 80, 4),
(8, 73, 'leroncheah@gmail.com', 15, 5),
(9, 80, 'leroncheah@gmail.com', 25, 5),
(10, 66, 'leroncheah@gmail.com', 80, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_display` varchar(255) NOT NULL,
  `product_memory` varchar(255) NOT NULL,
  `product_os` varchar(255) NOT NULL,
  `product_camera` varchar(255) NOT NULL,
  `product_battery` varchar(255) NOT NULL,
  `product_ram` varchar(255) NOT NULL,
  `product_gpu` varchar(255) NOT NULL,
  `product_cpu` varchar(255) NOT NULL,
  `product_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_image`, `product_display`, `product_memory`, `product_os`, `product_camera`, `product_battery`, `product_ram`, `product_gpu`, `product_cpu`, `product_category`) VALUES
(1, 'Samsung Galaxy Tab A7 Lite 2021 (T220)/LTE(T225)', 700, 'TAB1.png', '-', '64GB Storage Capacity + 4GB of RAM / Expendable MicroSD up to 1TB', 'Android', 'Front Camera 2MP / Rear Camera 8MP AF', '5,100mAh', 'MediaTek MT8768T', '-', '2GHz Quad-Core', 'Tablet'),
(2, 'Lenovo Smart Tab M10 FHD Plus 4G LTE 10.3\" Tablet (2nd Gen)', 999, 'TAB2.png', '10.3\" inch', 'Storage 64GB eMMC', 'OS Android™ 10™', 'Camera Front 5.0MP / Rear 8.0MP', '5000mAh', 'Memory 4GB Soldered LPDDR4x-3200', 'Graphics Integrated IMG PowerVR GE8320 GPU', '\"Processor MediaTek Helio P22T (8C, 8x A53 @2.3GHz)', 'Tablet'),
(3, 'Microsoft Surface Pro 8', 5250, 'TAB3.png', 'Screen: 13” PixelSense™ Flow Display\r\nResolution: 2880 x 1920 (267 PPI)\r\nUp to 120Hz refresh rate (60Hz default)', '8GB / 16GB', 'Windows 11 Home', '5.0MP front-facing camera with 1080p full HD video / 10.0MP rear-facing autofocus camera with 1080p HD and 4k video', 'Up to 16 hours of typical device usage', '8GB / 16GB', 'Intel® Iris® Xe Graphics (i5/i7)', 'Quad-core 11th Gen Intel® Core™ i5-1135G7 Processor', 'Tablet'),
(4, 'Lenovo Tab M8 (2nd Gen) HD TB-8505X Tablet', 699, 'TAB4.png', 'Screen 8\"\" HD (1280x800), IPS, 60% NTSC gamut, 350 nits', 'Storage 32GB', 'OS Android™ 9 Pie™', 'Rear Camera 5MP Auto Focus\r\nFront Camera 2MP Fixed Focus', 'Battery 5000mAh, Standby Time: Up to 2 weeks', 'RAM 2GB', '-', 'Processor MediaTek Helio A22 (4xARM Cortex-A53, up to 2.0GHz)', 'Tablet'),
(5, 'Apple iPad Air 10.9 inch with Retina display (Wi-Fi) (4th Generation)', 2599, 'TAB5.png', 'Stunning 10.9-inch Liquid Retina display with True Tone and P3 wide colour1', '-', 'iPadOS 14 brings new capabilities designed specifically for iPad', '12MP back camera and 7MP FaceTime HD front camera', 'Up to 10 hours of battery life3', '-', '-', 'A14 Bionic chip with Neural Engine', 'Tablet'),
(6, 'Samsung Galaxy Tab A8 2022 WiFi (X200) - 3GB RAM - 32GB ROM - 10.5 inch - Android Tablet', 999, 'TAB6.png', ' 10.5 inch WUXGA TFT (1920 x 1200) display', 'Expendable Up to 1TB', 'Andriod', 'Rear Camera : 8MP AF\r\nFront Camera : 5PM', '7,040mAh ', '3GB RAM + 32GB ROM', 'Dual 2.0GHz + Hexa 2.0GHz', 'UniSOC T618', 'Tablet'),
(7, 'Microsoft Surface Go 3 - Platinum [10.5\",i3-10100Y,8GB/128GB,W11]', 2988, 'TAB7.png', 'Screen: 10.5” PixelSense™ Display\r\n\r\nResolution: 1920 x 1280 (220 PPI)', '128 GB', 'Windows 11 Home in S mode', '5.0 MP front-facing camera with 1080p HD video\r\n\r\n8.0MP rear-facing auto-focus camera with 1080p HD video', 'Battery Capacity Nominal (WH) 28.0\r\nBattery Capacity Min (WH) 26.8', '4GB or 8GB LPDDR3', '	\r\nIntel® UHD Graphics 630', 'Dual-core Intel® Pentium® Gold 6500Y processor', 'Tablet'),
(8, 'Lenovo Tab M7 (3rd Gen) TB-7306F Wifi Tablet (7.0\"/2GB/32GB/1Year)', 569, 'TAB8.png', 'Display size 7.0 inches, 137.9 cm2 (~76.5% screen-to-body ratio)\r\n600 x 1024 pixels, 16:9 ratio (~170 ppi density)', '32GB', 'OS Android 11 (Go edition)', 'Rear Camera 2 MP\r\nFront Camera 2 MP', 'Battery Li-Po 3750 mAh, non-removable battery', 'RAM 2GB RAM, eMMC 5.1', '-', 'Processor Octa-core 2.0 GHz', 'Tablet'),
(9, 'Apple iPad Pro 11-inch (Wi-Fi) (3rd Generation)', 3499, 'TAB9.png', 'Brilliant 11-inch Liquid Retina display1 with ProMotion, True Tone and P3 wide colour', '-', 'iPadOS', '12MP Wide camera, 10MP Ultra Wide camera and LiDAR Scanner for immersive AR', 'Go further with all-day battery life3', '-', '-', 'Apple M1 chip for next-level performance', 'Tablet'),
(10, 'Apple iPad mini 8.3-inch (Wi-Fi) (6th Generation)', 2299, 'TAB10.png', '8.3-inch Liquid Retina display with True Tone and wide colour1', '-', 'iPadOS 15', '12MP Wide back camera, 12MP Ultra Wide front camera with Centre Stage', 'Up to 10 hours of battery life4', '-', '-', 'A15 Bionic chip with Neural Engine', 'Tablet'),
(11, 'Microsoft Surface Pro X LTE - Black', 8218, 'TAB11.png', '13\" touchscreen', '256GB SSD', 'Windows 10 HOME on ARM', '-', 'Up to 13 hrs', '16GB', 'Microsoft SQ 1 Adreno 685 GPU', 'Microsoft SQ 1', 'Tablet'),
(12, 'Huawei MatePad Pro (8 GB/256 GB) 10.8\" WiFi Android Tablet - Midnight Grey', 2399, 'TAB12.png', 'Screen Size (inches)	10.8\r\nScreen Definition	WQXGA\r\nResolution	2560 x 1600', '256 GB\r\n', 'Android 10\r\n', '13 MP (Rear), 8MP (Front)', '7250mAh', '8GB', '16-Core Mali-G76 600 MHz', 'Processor Brand	Huawei\r\nCPU Cores	8\r\nProcessor Speed (GHz)	1.86\r\nProcessor Max Speed	2.86 GHz', 'Tablet'),
(13, 'Huawei MatePad T10S (3GB+64GB) 10.1-inch Android Tablet - Deepsea Blue', 897, 'TAB13.png', 'Screen Size (inches)	10.1\r\nScreen Definition	WUXGA\r\nResolution	1920 x 1200', 'microSD Memory Card**, support 512 GB maximum.', 'EMUI 10.1 (Based on Android 10)', '5MP (Rear), 2MP (Front)', '5000mAh', '3GB', 'Mali G51', '4 x Cortex-A73 2.0 GHz + 4 x Cortex-A53 1.7 GHz', 'Tablet'),
(14, 'Huawei MediaPad M6 (4 GB/128 GB) 10.8-inch Android Tablet - Titanium Grey', 1899, 'TAB14.png', 'Screen Size (inches)	10.8\r\nResolution	2560 x 1600', '128GB', 'Android 10', '13 MP (Rear), 8 MP (Front)', 'Capacity: 7500 mAh* (typical value)', 'RAM (GB)	4\r\nRAM Type	LPDDR4x', 'ARM Mali-G76 MP10', 'Kirin 980\r\n\r\n\r\n', 'Tablet'),
(15, 'Samsung Galaxy Tab S7+ 12.4 -inch Android Tablet - Mystic Bronze (SM-T970NZNZXME)', 3999, 'TAB15.png', 'Screen Size (inches)	12.4\"\r\nResolution	2800 X 1752', 'Internal: 128 GB or 256 GB / Max. slot capacity: 1 TB', 'Android 10\r\n', '13+5 MP (Rear), 8 MP (Front)', '10090 mAh (Built-in) / 45W Fast charging', 'RAM: 6 GB or 8 GB', 'Adreno 650', 'Octa Core / 3.09 GHz, 2.4 GHz, 1.8 GHz / Qualcomm Snapdragon 865 Plus', 'Tablet'),
(16, 'Xiaomi Mi Pad 5 / Mi Pad 5 Pro Wifi / 5G Version', 1499, 'TAB16.png', 'DISPLAY: 11.0 inches', '128 GB, 256 GB', 'Android 10', '13 MP', 'Li-Po 8720 mAh', '6 GB', '-', 'Sanpdrago 860', 'Tablet'),
(17, 'Sony WH-1000XM4', 1600, 'Sony_WH-1000XM4.png', '-', '-', '-', '-', '30 Hours', '-', '-', '-', 'Audio'),
(18, 'Sony WH-1000XM3', 899, 'Sony_WH-1000XM3.png', '-', '-', '-', '-', '30 Hours', '-', '-', '-', 'Audio'),
(19, 'Sony WF-1000XM4', 1099, 'Sony_WF-1000XM4.png', '-', '-', '-', '-', '8 Hours', '-', '-', '-', 'Audio'),
(20, 'Sony Sony WF-1000XM3', 849, 'Sony_WF-1000XM3.png', '-', '-', '-', '-', '4.5 Hours', '-', '-', '-', 'Audio'),
(21, 'Sony LinkBuds', 849, 'Sony_LinkBuds.png', '-', '-', '-', '-', '5 Hours', '-', '-', '-', 'Audio'),
(22, 'Sony M1ST', 1300, 'Sony_M1ST.jpg', '-', '-', '-', '-', '-', '-', '-', '-', 'Audio'),
(23, 'Sony MDR CD900 ST', 1000, 'Sony_MDR_CD900_ST.png', '-', '-', '-', '-', '-', '-', '-', '-', 'Audio'),
(24, 'Bose QuietComfort Earbuds', 830, 'Bose_QuietComfort_Earbuds.png', '-', '-', '-', '-', '6 Hours', '-', '-', '-', 'Audio'),
(25, 'Bose Noise Concelling Headphones 700', 1280, 'Bose_Noise_Cancelling_Headphones_700.jpg', '-', '-', '-', '-', '20 Hours', '-', '-', '-', 'Audio'),
(26, 'Bose QuietComfort 45 headphones', 1130, 'Bose_QuietComfort_45_headphones.png', '-', '-', '-', '-', '24 Hours', '-', '-', '-', 'Audio'),
(27, 'SkullCandy Grind Earbuds', 400, 'SkullCandy_Grind_Earbuds.jpg', '-', '-', '-', '-', '40 Hours', '-', '-', '-', 'Audio'),
(28, 'Push Earbuds', 320, 'Push_Earbuds.jpg', '-', '-', '-', '-', '44 Hours', '-', '-', '-', 'Audio'),
(29, 'Dime 2 Earbuds', 120, 'Dime_2_Earbuds.jpg', '-', '-', '-', '-', '12 Hours', '-', '-', '-', 'Audio'),
(30, 'Dime Earbuds', 80, 'Dime_Earbuds.jpg', '-', '-', '-', '-', '12 Hours', '-', '-', '-', 'Audio'),
(31, 'Indy Earbuds', 280, 'Indy_Earbuds.jpg', '-', '-', '-', '-', '32 Hours', '-', '-', '-', 'Audio'),
(32, 'Sesh Earbuds', 240, 'Sesh_Earbuds.jpg', '-', '-', '-', '-', '10 Hours', '-', '-', '-', 'Audio'),
(33, 'Microsoft 13.5\" Surface Laptop 3', 3997, 'LAP1.png', '13.5\" inch', '128GB', 'Windows 10 Home', '720p HD', '-', '8GB', 'Intel Iris Plus Graphics G7 (Ice Lake 64 EU)', 'Core i5-1035G7', 'Laptop'),
(34, 'Huawei MateBook D14', 3399, 'LAP2.png', '14 inches', '512GB', 'Windows 10 Home', '1MP', '-', '8GB', '-', 'Core i5-10210U', 'Laptop'),
(35, 'HP 14s-FQ0069AU', 1697, 'LAP3.png', '14 inches', '512GB', 'Windows 10 Home', '-', '-', '4GB', '-', 'Silver 3050U', 'Laptop'),
(36, 'MSI Prestige 14 ', 3697, 'LAP4.png', '14 inches', '512GB', 'Windows 10 Home', '720p', '-', '16GB', 'Nvidia Geforce MX350', 'Core i7-10510U', 'Laptop'),
(37, 'Huawei MateBook 13 2020', 4397, 'LAP5.png', '13 inches', '512GB', 'Windows 10 Home 64', '1MP', '-', '16GB', 'Nvidia Geforce MX250', 'Core i5-10210U', 'Laptop'),
(38, 'ASUS ExpertBook P2451FA', 3297, 'LAP6.png', '14 inches', '256GB', 'Windows 10 Pro', 'HD 720p CMOS module', '-', '8GB', 'Intel UHD Graphics 620', 'Core i5-10210U', 'Laptop'),
(39, 'HP Chromebook x360 11 G3', 1037, 'LAP7.png', '11.6 inches', '32GB', 'Chrome OS', '720p HD', '-', '4GB', 'Intel UHD Graphics 600', 'Celeron N4020', 'Laptop'),
(40, 'Acer Chromebook Spin 311', 1499, 'LAP8.png', '11.6 inches', '32GB', 'Chrome OS', '-', '-', '4GB', 'Intel UHD Graphics 600', 'Celeron N4100', 'Laptop'),
(41, 'Lenovo IdeaPad D330', 1397, 'LAP9.png', '10.1 inches', '128GB', 'Windows 10 Pro', '-', '-', '4GB', 'Intel UHD Graphics 600', 'Celeron N4020', 'Laptop'),
(42, 'MSI Bravo 17', 4299, 'LAP10.png', '17.3 inches', '512GB', 'Windows 10 Home', '720p', '-', '8GB', 'AMD Radeon RX 5500M', 'Ryzen 7 4800H', 'Laptop'),
(43, 'Huawei MateBook D15', 2797, 'LAP11.png', '15.6 inches', '512GB', 'Windows 10 Home 64', '1MP', '-', '8GB', 'Intel UHD Graphics 620', 'Core i5-10210U', 'Laptop'),
(44, 'HP Spectre x360 Convertible', 7099, 'LAP12.png', '13.5 inches', '1TB', 'Windows 10 Home 64', 'HD', '-', '16GB', 'Intel Iris Xe Graphics G7 96EUs', 'Core i7-1165G7', 'Laptop'),
(45, 'Huawei MateBook X Pro', 6999, 'LAP13.png', '13.9 inches', '512GB', 'Windows 10 Home 64', '1MP', '-', '16GB', 'NVIDIA GeForce MX150', 'Core i7-8550U', 'Laptop'),
(46, 'HP Pavilion Aero Laptop', 3197, 'LAP14.png', '13.3 inches', '512GB', 'Windows 10 Home 64', '720p', '-', '8GB', 'AMD Radeon RX Vega 7', 'Ryzen 5 5600U', 'Laptop'),
(47, 'HP ProBook 440 G8', 3691, 'LAP15.png', '14 inches', '512GB', 'Windows 10 Pro 64', '720p', '-', '8GB', 'Intel Iris Xe Graphics G7 80EUs', 'Core i5-1135G7', 'Laptop'),
(48, 'MSI Modern 14', 3199, 'LAP16.png', '14 inches', '256GB', 'Windows 10 Pro 64', '720p', '-', '8GB', 'NVIDIA Geforce MX350', 'Core i5-10210U', 'Laptop'),
(66, 'Apple - Ipad Cable (2.4A)', 80, 'Apple-Ipad.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(67, 'Apple - Lighting Cable (2.4A)', 90, 'Apple-Iphone 2.4A.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(68, 'Baseus - Lighting Cable (2.4A)', 30, 'Baseus-IOS.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(69, 'Baseus - Type C + LED Cable (3.0A)', 25, 'Baseus-TypeC+LED.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(70, 'Baseus - Type C Cable (5.0A)', 20, 'Baseus-TypeC.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(71, 'Baseus - Lighting Cable (4.0A)', 35, 'Baseus-IOS4.0A.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(72, 'Huawei - MircroUSB + Type C Cable (2.0A)', 40, 'Huawei-USB+TypeC.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(73, 'Mcdodo - Type C Cable (3.0A)', 15, 'Mcdodo-TypeC.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(74, 'MOXOM - MicroUSB Cable (2.4A)', 10, 'MOXOM-USB.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(75, 'ROCK - Lighting Cable (2.4A)', 20, 'ROCK-IOS.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(76, 'ROMOSS - MicroUSB Cable (2.1A)', 7, 'ROMOSS-USB.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(77, 'SAMSUNG - Type C Cable (2.0A)', 50, 'SAMSUNG-TypeC.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(78, 'URGREEN - MicroUSB + Type C Cable (2.4A)', 25, 'UGREEN-USB+TypeC.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(79, 'URGREEN - MicroUSB Cable (3.0A)', 17, 'UGREEN-USB.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(80, 'URGREEN - Lighting Cable (2.4A)', 25, 'UGREEN-IOS.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(81, 'Xiaomi - Type C Cable (6.0A)', 42, 'Xiaomi-Type C.jpg', '', '', '', '', '', '', '', '', 'Cable'),
(82, 'Iphone 13', 3000, 'PH01.jpg', '6.1-inch Super Retina XDR', '128GB', 'IOS 15', '12 MP, f/1.6, 26mm (wide), 1.7µm, dual pixel PDAF, sensor-shift OIS 12 MP, f/2.4, 120˚, 13mm (ultrawide)', 'Li-Ion 3240 mAh', '4GB', 'Apple GPU (4-core graphics)', 'Hexa-core (2x3.22 GHz Avalanche + 4xX.X GHz Blizzard)', 'Phone'),
(83, 'Iphone 12', 2900, 'PH02.jpg', '6.1-inch Super Retina XDR', '128GB', 'IOS 14.1', '12 MP, f/1.6, 26mm (wide), 1.4µm, dual pixel PDAF, OIS 12 MP, f/2.4, 120˚(ultrawide), 13mm', 'Li-Ion 2815 mAh', '4GB', 'Apple GPU (4-core graphics)', 'Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)', 'Phone'),
(84, 'Iphone 11', 2000, 'PH03.jpg', '6.1-inch Liquid Retina IPS', '128GB', 'IOS 13', '12 MP, f/1.8, 26mm (wide), 1/2.55\", 1.4µm, dual pixel PDAF, OIS 12 MP, f/2.4, 120˚, 13mm (ultrawide)', 'Li-Ion 3110 mAh', '4GB', 'Apple GPU (4-core graphics)', 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', 'Phone'),
(85, 'Iphone 13 Pro Max', 5000, 'PH04.jpg', '6.7-inch Super Retina XDR,120Hz', '128GB', 'IOS 15', '12 MP, f/1.5, 26mm (wide), 1.9µm, dual pixel PDAF, sensor-shift OIS 12 MP, f/2.8, 77mm (telephoto), PDAF, OIS, 3x optical zoom 12 MP, f/1.8, 13mm, 120˚(ultrawide) PDAF TOF 3D LiDAR scanner (depth)', 'Li-Ion 4352 mAh', '6GB', 'Apple GPU (5-core graphics)', 'Hexa-core (2x3.22 GHz Avalanche + 4xX.X GHz Blizzard)', 'Phone'),
(86, 'Huawei Mate 30', 2000, 'PH05.jpg', '6.62 inches OLED, HDR10', '256GB', 'Android 10, EMUI 10', '40 MP, f/1.8, 27mm (wide), 1/1.54\", PDAF, Laser AF 8 MP, f/2.4, 80mm (telephoto), 1/4.0\", PDAF, OIS, 3x optical zoom 16 MP, f/2.2, 17mm (ultrawide)', 'Li-Po 4200 mAh', '8GB', 'Mali-G76 MP16', 'Octa-core (2x2.86 GHz Cortex-A76 & 2x2.09 GHz Cortex-A76 & 4x1.86 GHz Cortex-A55)', 'Phone'),
(87, 'Huawei nova 4', 2300, 'PH06.jpg', '6.4 inches IPS LCD', '128GB', 'Android 9.0 (Pie), EMUI 9', '48 MP, f/1.8, (wide), 1/2.0\", 0.8µm, PDAF or 20 MP, f/1.8, (wide), PDAF 16 MP, f/2.2, 13mm (ultrawide) 2 MP, f/2.4, (depth)', 'Li-Po 3750 mAh', '8GB', 'Mali-G72 MP12', 'Octa-core (4x2.4 GHz Cortex-A73 & 4x1.8 GHz Cortex-A53)', 'Phone'),
(88, 'Huawei nova 7 SE 5G Youth', 2400, 'PH07.jpg', '6.5 inches IPS LCD, HDR10', '128GB', 'Android 10, EMUI 10.1', '64 MP, f/1.8, 26mm (wide), PDAF, 8 MP, f/2.4, 17mm (ultrawide) ,2 MP, f/2.4, (macro) ,2 MP, f/2.4, (depth)', 'Li-Po 4000 mAh', '8GB', 'Mali-G57 MC3', 'Octa-core (2x2.4 GHz Cortex-A76 & 6x2.0 GHz Cortex-A55)', 'Phone'),
(89, 'Huawei P30', 1500, 'PH08.jpg', '6.1 inches, OLED, HDR10', '128GB', 'Android 9.0 (Pie), EMUI 10', '40 MP, f/1.8, 27mm (wide), 1/1.7\", PDAF, Laser AF, 8 MP, f/2.4, 80mm (telephoto), 1/4.0\", PDAF, OIS, 3x optical zoom, 16 MP, f/2.2, 17mm (ultrawide), PDAF, Laser AF', 'Li-Po 3650 mAh', '8GB', 'Mali-G76 MP10', 'Octa-core (2x2.6 GHz Cortex-A76 & 2x1.92 GHz Cortex-A76 & 4x1.8 GHz Cortex-A55)', 'Phone'),
(90, 'Samsung Galaxy Z Flip', 4000, 'PH09.jpg', '6.7 inches, Foldable Dynamic AMOLED, HDR10+', '256GB', 'Android 10, One UI 4', '12 MP, f/1.8, 27mm (wide), 1/2.55\", 1.4µm, Dual Pixel PDAF, OIS ,12 MP, f/2.2, 123˚ (ultrawide), 1.12µm', 'Li-Po 3300 mAh', '8GB', 'Adreno 640 (700 MHz)', 'Octa-core (1x2.95 GHz Kryo 485 & 3x2.41 GHz Kryo 485 & 4x1.78 GHz Kryo 485)', 'Phone'),
(91, 'Samsung Galaxy S20', 3000, 'PH10.jpg', '6.2 inches, Dynamic AMOLED 2X, 120Hz, HDR10+, 1200 nits (peak)', '128GB', 'Android 10, One UI 3.0', '12 MP, f/1.8, 26mm (wide), 1/1.76\", 1.8µm, Dual Pixel PDAF, OIS, 64 MP, f/2.0, 29mm (telephoto), 1/1.72\", 0.8µm, PDAF, OIS, 1.1x optical zoom, 3x hybrid zoom, 12 MP, f/2.2, 13mm, 120˚ (ultrawide), 1/2.55\" 1.4µm, Super Steady video', 'Li-Ion 4000 mAh', '8GB', 'Mali-G77 MP11 - Global, Adreno 650 - USA', 'Octa-core (2x2.73 GHz Mongoose M5 & 2x2.50 GHz Cortex-A76 & 4x2.0 GHz Cortex-A55) - Global, Octa-core (1x2.84 GHz Kryo 585 & 3x2.42 GHz Kryo 585 & 4x1.8 GHz Kryo 585) - USA', 'Phone'),
(92, 'Samsung Galaxy Note10', 4000, 'PH11.jpg', '6.3 inches, Dynamic AMOLED, HDR10+', '256GB', 'Android 9.0 (Pie), One UI 4', '12 MP, f/1.5-2.4, 27mm (wide), 1/2.55\", 1.4µm, Dual Pixel PDAF, OIS, 12 MP, f/2.1, 52mm (telephoto), 1/3.6\", 1.0µm, PDAF, OIS, 2x optical zoom, 16 MP, f/2.2, 12mm (ultrawide), 1/3.1\", 1.0µm, Super Steady video', 'Li-Ion 3500 mAh', '8GB', 'Mali-G76 MP12 - EMEA/LATAM, Adreno 640 - USA/China', '	Octa-core (2x2.73 GHz Mongoose M4 & 2x2.4 GHz Cortex-A75 & 4x1.9 GHz Cortex-A55) - EMEA/LATAM, Octa-core (1x2.84 GHz Kryo 485 & 3x2.42 GHz Kryo 485 & 4x1.78 GHz Kryo 485) - USA/China', 'Phone'),
(93, 'Samsung Galaxy Z Fold3', 8000, 'PH12.jpg', '7.6 inches, Foldable Dynamic AMOLED 2X, 120Hz, HDR10+, 1200 nits (peak)', '512GB', 'Android 11, One UI 4.1', '12 MP, f/1.8, 26mm (wide), 1/1.76\", 1.8µm, Dual Pixel PDAF, OIS, 12 MP, f/2.4, 52mm (telephoto), 1/3.6\", 1.0µm, PDAF, OIS, 2x optical zoom, 12 MP, f/2.2, 123˚, 12mm (ultrawide), 1.12µm', 'Li-Po 4400 mAh', '12GB', 'Adreno 660', 'Octa-core (1x2.84 GHz Kryo 680 & 3x2.42 GHz Kryo 680 & 4x1.80 GHz Kryo 680)', 'Phone'),
(94, 'vivo X50', 900, 'PH13.jpg', '6.56 inches, AMOLED, 90Hz, HDR10+', '128GB', 'Android 10, Funtouch 10.5', '48 MP, f/1.6, (wide), PDAF, OIS, 13 MP, f/2.5, 50mm (telephoto), 1/2.8\", 0.8µm, PDAF, 2x optical zoom, 8 MP, f/2.2, 120˚, 16mm (ultrawide), 1/4.0\", 1.12µm, 5 MP, f/2.5, (macro)', 'Li-Po 4200 mAh', '8GB', 'Adreno 618', 'Octa-core (2x2.2 GHz Kryo 470 Gold & 6x1.8 GHz Kryo 470 Silver)', 'Phone'),
(95, 'vivo X70', 700, 'PH14.jpg', '6.56 inches, AMOLED, 120Hz, HDR10+', '128GB', 'Android 11, Funtouch OS 12 (International), OriginOS 1.0 (China)', '40 MP, f/1.9, (wide), 1.0µm, PDAF, 12 MP, f/2.0, 50mm (telephoto), 1/2.93\", 1.22µm, PDAF, 2x optical zoom, 12 MP, f/2.2, 16mm, 116˚ (ultrawide), 1/3.1\", 1.12µm', 'Li-Po 4400 mAh', '8GB', 'Mali-G77 MC9', 'Octa-core (1x3.0 GHz Cortex-A78 & 3x2.6 GHz Cortex-A78 & 4x2.0 GHz Cortex-A55)', 'Phone'),
(96, 'vivo Y20S', 800, 'PH15.jpg', '6.51 inches, IPS LCD', '128GB', 'Android 10, Funtouch 10.5 or Funtouch 11', '13 MP, f/2.2, (wide), PDAF, 2 MP, f/2.4, (macro), 2 MP, f/2.4, (depth)', 'Li-Po 5000 mAh', '8GB', 'Adreno 610', 'Octa-core (4x1.8 GHz Kryo 240 & 4x1.6 GHz Kryo 240)', 'Phone');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `order1`
--
ALTER TABLE `order1`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`orderdetail_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order1`
--
ALTER TABLE `order1`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `orderdetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
