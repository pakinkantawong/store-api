-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 29, 2025 at 07:10 AM
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
-- Database: `store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `category`, `image`) VALUES
(1, 'Smartphone A1', 'สมาร์ทโฟนรุ่นใหม่ พร้อมกล้อง AI', 9990.00, 'Electronics', 'smartphone_a1.jpg'),
(2, 'Laptop Gamer Z5', 'แล็ปท็อปเกมมิ่งสเปคสูง', 45900.00, 'Electronics', 'laptop_gamer_z5.jpg'),
(3, 'Wireless Earbuds Pro', 'หูฟังไร้สายเสียงคมชัด', 2990.00, 'Electronics', 'earbuds_pro.jpg'),
(4, 'Smart Watch X2', 'นาฬิกาอัจฉริยะวัดสุขภาพครบวงจร', 5990.00, 'Electronics', 'smartwatch_x2.jpg'),
(5, 'Gaming Mouse RGB', 'เมาส์เกมมิ่งพร้อมไฟ RGB', 1290.00, 'Electronics', 'gaming_mouse.jpg'),
(6, 'Bluetooth Speaker S9', 'ลำโพงบลูทูธพกพา เสียงทรงพลัง', 1890.00, 'Electronics', 'speaker_s9.jpg'),
(7, '4K LED TV 50\"', 'ทีวี 4K ขนาด 50 นิ้ว', 18900.00, 'Electronics', 'led_tv_50.jpg'),
(8, 'Digital Camera C300', 'กล้องดิจิตอลความละเอียดสูง', 15900.00, 'Electronics', 'camera_c300.jpg'),
(9, 'Fitness Tracker F1', 'เครื่องติดตามกิจกรรมและสุขภาพ', 1290.00, 'Electronics', 'fitness_tracker.jpg'),
(10, 'Tablet Plus T7', 'แท็บเล็ตหน้าจอใหญ่ รองรับปากกา', 10990.00, 'Electronics', 'tablet_plus_t7.jpg'),
(11, 'Air Purifier AP-200', 'เครื่องฟอกอากาศประสิทธิภาพสูง', 3990.00, 'Home Appliances', 'air_purifier.jpg'),
(12, 'Vacuum Cleaner V8', 'เครื่องดูดฝุ่นไร้สายแรงสูง', 3590.00, 'Home Appliances', 'vacuum_cleaner.jpg'),
(13, 'Microwave Oven M10', 'เตาไมโครเวฟระบบดิจิตอล', 2890.00, 'Home Appliances', 'microwave_m10.jpg'),
(14, 'Rice Cooker RC-5L', 'หม้อหุงข้าวดิจิตอล 5 ลิตร', 1790.00, 'Home Appliances', 'rice_cooker.jpg'),
(15, 'Electric Kettle EK-1.7L', 'กาต้มน้ำไฟฟ้าสำหรับบ้าน', 990.00, 'Home Appliances', 'kettle.jpg'),
(16, 'Office Chair Ergonomic', 'เก้าอี้สำนักงานรองรับสรีระ', 2990.00, 'Furniture', 'office_chair.jpg'),
(17, 'Wooden Desk 120cm', 'โต๊ะไม้ขนาดกว้าง 120 ซม.', 3990.00, 'Furniture', 'wooden_desk.jpg'),
(18, 'LED Desk Lamp', 'โคมไฟตั้งโต๊ะ LED ประหยัดพลังงาน', 690.00, 'Furniture', 'desk_lamp.jpg'),
(19, 'Bookshelf 5 ชั้น', 'ชั้นวางหนังสือไม้ขนาดใหญ่', 2490.00, 'Furniture', 'bookshelf.jpg'),
(20, 'Yoga Mat Eco', 'เสื่อโยคะทำจากวัสดุธรรมชาติ', 790.00, 'Sports', 'yoga_mat.jpg'),
(21, 'Treadmill T300', 'ลู่วิ่งไฟฟ้าพร้อมหน้าจอแสดงผล', 15900.00, 'Sports', 'treadmill.jpg'),
(22, 'Dumbbell Set 10kg', 'ดัมเบลชุดน้ำหนักรวม 10 กก.', 1590.00, 'Sports', 'dumbbell_set.jpg'),
(23, 'Basketball Official', 'ลูกบาสเกตบอลขนาดมาตรฐาน', 590.00, 'Sports', 'basketball.jpg'),
(24, 'Camping Tent 4P', 'เต็นท์แคมป์ขนาด 4 คน', 2990.00, 'Sports', 'camping_tent.jpg'),
(25, 'LED String Lights', 'ไฟประดับตกแต่งบ้านแบบ LED', 490.00, 'Home Decor', 'string_lights.jpg'),
(26, 'Wall Art Canvas', 'ภาพพิมพ์บนผ้าแคนวาสสวยงาม', 1290.00, 'Home Decor', 'wall_art.jpg'),
(27, 'Indoor Plant Pot', 'กระถางต้นไม้ตกแต่งภายใน', 690.00, 'Home Decor', 'plant_pot.jpg'),
(28, 'Scented Candle Set', 'ชุดเทียนหอมสำหรับตกแต่งบ้าน', 490.00, 'Home Decor', 'candle_set.jpg'),
(29, 'Decorative Vase', 'แจกันตกแต่งบ้านสไตล์โมเดิร์น', 990.00, 'Home Decor', 'vase.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
