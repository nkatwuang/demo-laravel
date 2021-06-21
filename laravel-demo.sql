-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 18, 2021 lúc 07:26 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel-demo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_17_153945_create_product_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Laptop MSI Gaming Leopard 10SDK GL65 i7 242VN', '32990000', 'https://cdn.tgdd.vn/Products/Images/44/225857/msi-gaming-leopard-10sdr-gl65-i7-242vn-16-600x600.jpg', 'Laptop MSI Gaming Leopard 10SDRK GL65 i7 (242VN) là chiếc laptop gaming với thiết kế chuẩn hiện đại, hiệu năng mạnh mẽ với CPU thế hệ mới mang lại sức mạnh chiến game đỉnh cao cho các game thủ lựa chọn lí tưởng trong tầm giá.\r\nCấu hình khủng, chiến game c', '2021-06-17 17:00:00', '2021-06-17 17:00:00'),
(2, 'Laptop MSI GL65 Leopard 10SCXK i7 217VN', '24990000', 'https://cdn.tgdd.vn/Products/Images/44/240518/msi-gl65-leopard-10scxk-i7-217vn-600x600.jpg', 'MSI GL65 Leopard 10SCXK i7 (217VN) sở hữu thiết kế gaming hiện đại và sức mạnh vượt trội của bộ vi xử lý Intel Core i7 dòng H sẵn sàng đồng hành cùng bạn trong mọi cuộc chiến. \r\nThiết kế gaming ấn tượng \r\nLaptop sở hữu thiết kế mỏng nhẹ hiện đại nhưng khô', '2021-06-17 17:00:00', '2021-06-17 17:00:00'),
(3, 'Laptop MSI GF75 Thin 10SCXR i7 068VN', '23490000', 'https://cdn.tgdd.vn/Products/Images/44/238606/msi-gf75-thin-10scxr-i7-068vn-600x600.jpg', 'Laptop MSI GF75 Thin 10SCXR i7 (068VN) xứng đáng là sự lựa chọn tối ưu cho những bạn muốn trải nghiệm game với hiệu năng mạnh mẽ cùng CPU Intel Core i7 và card đồ hoạ NVIDIA Geforce 1650 ổn định.\r\nThiết kế tinh tế, tối giản trong phân khúc gaming\r\nNhìn từ', '2021-06-17 17:00:00', '2021-06-17 17:00:00'),
(5, 'Laptop MSI GF65 10UE i7 228VN', '32490000', 'https://cdn.tgdd.vn/Products/Images/44/242200/msi-gf65-10ue-i7-228vn-600x600.jpg', 'Laptop MSI GF65 10UE i7 (228VN) sở hữu thiết kế đẳng cấp cùng hiệu năng mạnh mẽ, đặc biệt hiệu suất chơi game được nâng cấp đáng kể mang đến cho bạn những giờ phút giải trí bất tận.\r\nSức mạnh nổi bật nhờ công nghệ tiên tiến\r\nLaptop được trang bị bộ vi xử ', '2021-06-17 17:00:00', '2021-06-17 17:00:00'),
(6, 'Laptop MSI Katana GF66 11UC i7 224VN', '29990000', 'https://cdn.tgdd.vn/Products/Images/44/242201/msi-gf66-11uc-i7-11800h-8gb-512gb-4gb-rtx3050-600x600.jpg', 'Laptop MSI Katana GF66 11UC i7 (224VN) mang vẻ ngoài cơ động cùng cấu hình mạnh mẽ, đẩy nhanh quá trình xử lý mọi tác vụ hay sẵn sàng đồng hành cùng bạn chiến mọi thể loại game đầy kịch tính. \r\nPhát huy sức mạnh hiệu năng với chip Intel Gen 11\r\nHiệu năng ', '2021-06-17 17:00:00', '2021-06-17 17:00:00'),
(7, 'Laptop MSI GF65 Thin 10UE i5 297VN', '28990000', 'https://cdn.tgdd.vn/Products/Images/44/238607/msi-gf65-thin-10ue-i5-297vn-600x600.jpg', 'MSI GF65 Thin 10UE i5 (297VN) với cấu hình mạnh đến từ Intel Core i5 cùng card đồ hoạ NVIDIA RTX 30 series đảm bảo hiệu suất tối ưu và hoạt động êm ái dành cho những ai yêu thích gaming.\r\nHiệu năng chiến game cực đã\r\nLaptop MSI này được trang bị một bộ vi', '2021-06-17 17:00:00', '2021-06-17 17:00:00'),
(8, 'Laptop MSI GF63 10SC i5 255VN', '20990000', 'https://cdn.tgdd.vn/Products/Images/44/238608/msi-gf63-10sc-i5-255v-600x600.jpg', 'MSI GF63 10SC i5 (255VN) mang vẻ ngoài mạnh mẽ, đậm chất gaming sở hữu chip i5 thế hệ 10 cùng card đồ họa NVIDIA GeForce GTX 1650 mang lại hiệu năng vượt trội, thoải mái chiến các tựa game yêu thích.\r\nChiến các game thịnh hành với bộ CPU mạnh mẽ\r\nLaptop s', '2021-06-17 17:00:00', '2021-06-17 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
