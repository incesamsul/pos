

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `gambar`, `created_at`, `updated_at`) VALUES
(2, 'kopi', '6421a2f6dbd27..jpg', '2023-03-26 22:06:46', '2023-03-26 22:14:53'),
(3, 'teh', '6421a535617a9..jpg', '2023-03-26 22:16:21', '2023-03-26 23:39:14'),
(4, 'Breakfast', '6421a5427a402..jpg', '2023-03-26 22:16:34', '2023-03-26 22:24:38'),
(5, 'Lunch', '6421a55ee8098..jpg', '2023-03-26 22:17:02', '2023-03-26 22:24:25'),
(7, 'Jus', '6421a6b5e13c1..jpg', '2023-03-26 22:17:35', '2023-03-26 22:22:45'),
(8, 'Snack', '6421a587bf4ae..jpg', '2023-03-26 22:17:43', '2023-03-26 22:17:43'),
(9, 'dinner', '6421a7391f2e1..jpg', '2023-03-26 22:24:57', '2023-03-26 22:24:57');



INSERT INTO `menu` (`id_menu`, `id_kategori`, `nama_menu`, `deskripsi`, `gambar`, `harga`, `created_at`, `updated_at`) VALUES
(5, 2, 'espresso', 'minuman esktrak kopi yang pahit dengan sedikit tambahan rasa asam', '6421b448ec1b1..jpg', 25000, '2023-03-26 23:19:45', '2023-03-26 23:20:40'),
(6, 3, 'Teh tarik', 'minuman yang terbuat dari daun yang di tarik menggunakan tali rapiah', '6421b89367439..jpg', 27000, '2023-03-26 23:38:59', '2023-03-26 23:38:59'),
(7, 4, 'Telur rebus', 'Telur yang di goreng menggunakan minyak panas dengan suhu 700 F', '6421d656e93c6..jpg', 28000, '2023-03-27 01:45:59', '2023-03-27 01:45:59'),
(8, 7, 'Jus kuning', 'Minuman jus yang terbuat dari buah buahan berwarna kuning', '6421d672dc03b..jpg', 18000, '2023-03-27 01:46:26', '2023-03-27 01:46:26'),
(9, 2, 'Kopi le\'leng', 'kopi yang terbuat dari batu akik, rasanya pahit dan asam membuatmu selalu cerita', '6424397b9a505..jpg', 80000, '2023-03-29 05:13:31', '2023-03-29 05:14:05');


INSERT INTO `users` (`id`, `name`, `email`, `wa`, `email_verified_at`, `password`, `role`, `foto`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mail.com', '0895324670360', NULL, '$2y$10$N6nmGrHUtLAw5/5SlPZqEehn.S5KDNDFHf1yuW184mEw5zLWhVeLm', 'Administrator', '64213a5d9d191.jpg', NULL, '2021-11-23 17:06:43', '2023-03-26 14:40:29'),
(2, 'tam', 'tam@mail.com', '085237837273', NULL, '$2y$10$o9MMzmogGGBrM2Go9z95J.yZF8CDGtl4xKCs0ewqX1Wqn5mA7.K.y', 'kasir', '', NULL, '2023-03-29 05:14:38', '2023-03-29 05:14:38');

