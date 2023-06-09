-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 30. Apr 2023 um 17:37
-- Server-Version: 10.3.38-MariaDB-0+deb10u1
-- PHP-Version: 7.3.31-1~deb10u3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `zap1075571-1`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `accounts`
--

CREATE TABLE `accounts` (
  `name` varchar(255) NOT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('bank_savings', 'Bank Savings', 0),
('caution', 'caution', 0),
('property_black_money', 'Dirty Money Property', 0),
('society_ambulance', 'EMS', 1),
('society_banker', 'Banker', 1),
('society_cardealer', 'Cardealer', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'Police', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_cardealer', 0, NULL),
(2, 'society_police', 0, NULL),
(3, 'society_ambulance', 0, NULL),
(4, 'society_mechanic', 0, NULL),
(5, 'society_taxi', 0, NULL),
(6, 'society_banker', 0, NULL),
(7, 'society_realestateagent', 0, NULL),
(8, 'bank_savings', 0, 'char1:9413027c5cbc3adc47537bc033b3dac46a1d0937'),
(9, 'caution', 0, 'char1:9413027c5cbc3adc47537bc033b3dac46a1d0937'),
(10, 'property_black_money', 0, 'char1:9413027c5cbc3adc47537bc033b3dac46a1d0937'),
(11, 'bank_savings', 0, 'char1:a5d426133ae88964bdb7cee17487587b433acfc7'),
(12, 'caution', 0, 'char1:a5d426133ae88964bdb7cee17487587b433acfc7'),
(13, 'property_black_money', 0, 'char1:a5d426133ae88964bdb7cee17487587b433acfc7'),
(14, 'bank_savings', 0, 'char1:3b562366abf02128cbe9fa9ced6f2fc294def3c3'),
(15, 'caution', 0, 'char1:3b562366abf02128cbe9fa9ced6f2fc294def3c3'),
(16, 'property_black_money', 0, 'char1:3b562366abf02128cbe9fa9ced6f2fc294def3c3'),
(17, 'bank_savings', 0, 'char1:7b9871e3696d452ae3f7410b0b9bda329aa8acf7'),
(18, 'caution', 0, 'char1:7b9871e3696d452ae3f7410b0b9bda329aa8acf7'),
(19, 'property_black_money', 0, 'char1:7b9871e3696d452ae3f7410b0b9bda329aa8acf7'),
(20, 'bank_savings', 0, 'char1:130bb7eecb2a5ec9e898e1557d7ea532caa1ef0c'),
(21, 'caution', 0, 'char1:130bb7eecb2a5ec9e898e1557d7ea532caa1ef0c'),
(22, 'property_black_money', 0, 'char1:130bb7eecb2a5ec9e898e1557d7ea532caa1ef0c'),
(23, 'bank_savings', 0, 'char1:b70f5332d21a95102cbfa1ebd511ef99bb93ec4e'),
(24, 'caution', 0, 'char1:b70f5332d21a95102cbfa1ebd511ef99bb93ec4e'),
(25, 'property_black_money', 0, 'char1:b70f5332d21a95102cbfa1ebd511ef99bb93ec4e'),
(26, 'bank_savings', 0, 'char1:c817abb2ae907fabdbe44dbec221724a230c1ee9'),
(27, 'caution', 0, 'char1:c817abb2ae907fabdbe44dbec221724a230c1ee9'),
(28, 'property_black_money', 0, 'char1:c817abb2ae907fabdbe44dbec221724a230c1ee9'),
(29, 'bank_savings', 0, 'char1:7c5719ff4512d77d0ea1a08c78b1cb059d12a3ef'),
(30, 'caution', 0, 'char1:7c5719ff4512d77d0ea1a08c78b1cb059d12a3ef'),
(31, 'property_black_money', 0, 'char1:7c5719ff4512d77d0ea1a08c78b1cb059d12a3ef'),
(32, 'bank_savings', 0, 'char1:b4b701e43f68839b8a7c8f54a638d5742f3a5e18'),
(33, 'property_black_money', 0, 'char1:b4b701e43f68839b8a7c8f54a638d5742f3a5e18'),
(34, 'caution', 0, 'char1:b4b701e43f68839b8a7c8f54a638d5742f3a5e18'),
(35, 'property_black_money', 0, 'char1:fb42626fff840170cf4cf967a5672061ab8d6e68'),
(36, 'caution', 0, 'char1:fb42626fff840170cf4cf967a5672061ab8d6e68'),
(37, 'bank_savings', 0, 'char1:fb42626fff840170cf4cf967a5672061ab8d6e68'),
(38, 'bank_savings', 0, 'char1:9dd4606ba1ad9a477ae174f80da2e3bb72794cb6'),
(39, 'caution', 0, 'char1:9dd4606ba1ad9a477ae174f80da2e3bb72794cb6'),
(40, 'property_black_money', 0, 'char1:9dd4606ba1ad9a477ae174f80da2e3bb72794cb6'),
(41, 'bank_savings', 0, 'char1:6a015cf18978eda6728f48f7398514c0a2069843'),
(42, 'caution', 0, 'char1:6a015cf18978eda6728f48f7398514c0a2069843'),
(43, 'property_black_money', 0, 'char1:6a015cf18978eda6728f48f7398514c0a2069843'),
(44, 'bank_savings', 0, 'char1:d68ea116085b9520cb16dcc21130e681f37eed89'),
(45, 'caution', 0, 'char1:d68ea116085b9520cb16dcc21130e681f37eed89'),
(46, 'property_black_money', 0, 'char1:d68ea116085b9520cb16dcc21130e681f37eed89'),
(47, 'bank_savings', 0, 'char1:7ef1e287ae1a64dd457ef34795757f1e30732ab3'),
(48, 'caution', 0, 'char1:7ef1e287ae1a64dd457ef34795757f1e30732ab3'),
(49, 'property_black_money', 0, 'char1:7ef1e287ae1a64dd457ef34795757f1e30732ab3'),
(50, 'bank_savings', 0, 'char1:d073a019cb67f88dc1d54ee576ac8261a4db584c'),
(51, 'property_black_money', 0, 'char1:d073a019cb67f88dc1d54ee576ac8261a4db584c'),
(52, 'caution', 0, 'char1:d073a019cb67f88dc1d54ee576ac8261a4db584c'),
(53, 'property_black_money', 0, 'char1:a06541dd53c724605aa7cd96364175743304a676'),
(54, 'bank_savings', 0, 'char1:a06541dd53c724605aa7cd96364175743304a676'),
(55, 'caution', 0, 'char1:a06541dd53c724605aa7cd96364175743304a676'),
(56, 'property_black_money', 0, 'char1:ca55db6935e81c32166773a1e0d2ac0a79adf81b'),
(57, 'bank_savings', 0, 'char1:ca55db6935e81c32166773a1e0d2ac0a79adf81b'),
(58, 'caution', 0, 'char1:ca55db6935e81c32166773a1e0d2ac0a79adf81b'),
(59, 'caution', 0, 'char1:d1c5d93e7edd84c428f5f100d8675ef80a062a1b'),
(60, 'bank_savings', 0, 'char1:d1c5d93e7edd84c428f5f100d8675ef80a062a1b'),
(61, 'property_black_money', 0, 'char1:d1c5d93e7edd84c428f5f100d8675ef80a062a1b'),
(62, 'bank_savings', 0, 'char1:68b4893a2dc3781db88d6a0c8da9103b79149967'),
(63, 'caution', 0, 'char1:68b4893a2dc3781db88d6a0c8da9103b79149967'),
(64, 'property_black_money', 0, 'char1:68b4893a2dc3781db88d6a0c8da9103b79149967'),
(65, 'bank_savings', 0, 'char1:8c6f25469d600b8f6a0cce5585dbb95754cc91e1'),
(66, 'property_black_money', 0, 'char1:8c6f25469d600b8f6a0cce5585dbb95754cc91e1'),
(67, 'caution', 0, 'char1:8c6f25469d600b8f6a0cce5585dbb95754cc91e1'),
(68, 'bank_savings', 0, 'char1:baad492ec405ba622036da6ffd17135346550096'),
(69, 'caution', 0, 'char1:baad492ec405ba622036da6ffd17135346550096'),
(70, 'property_black_money', 0, 'char1:baad492ec405ba622036da6ffd17135346550096'),
(71, 'bank_savings', 0, 'char1:f490b5d16f416984871dc96230dbab0a9f5dec60'),
(72, 'caution', 0, 'char1:f490b5d16f416984871dc96230dbab0a9f5dec60'),
(73, 'property_black_money', 0, 'char1:f490b5d16f416984871dc96230dbab0a9f5dec60'),
(74, 'bank_savings', 0, 'char1:c859d83e5b52e9d8ee3ad2dd47fcee4a75370413'),
(75, 'property_black_money', 0, 'char1:c859d83e5b52e9d8ee3ad2dd47fcee4a75370413'),
(76, 'caution', 0, 'char1:c859d83e5b52e9d8ee3ad2dd47fcee4a75370413'),
(77, 'bank_savings', 0, 'char1:c38d91b02eee05447fb5754fd154c0ac9d9ded6b'),
(78, 'caution', 0, 'char1:c38d91b02eee05447fb5754fd154c0ac9d9ded6b'),
(79, 'property_black_money', 0, 'char1:c38d91b02eee05447fb5754fd154c0ac9d9ded6b'),
(80, 'bank_savings', 0, 'char1:731f593a141601cb0b0f3fdea45416804b834557'),
(81, 'caution', 0, 'char1:731f593a141601cb0b0f3fdea45416804b834557'),
(82, 'property_black_money', 0, 'char1:731f593a141601cb0b0f3fdea45416804b834557'),
(83, 'bank_savings', 0, 'char1:c271a7cf4a1c65048402a083b65fd7e3cb2d7787'),
(84, 'caution', 0, 'char1:c271a7cf4a1c65048402a083b65fd7e3cb2d7787'),
(85, 'property_black_money', 0, 'char1:c271a7cf4a1c65048402a083b65fd7e3cb2d7787'),
(86, 'bank_savings', 0, 'char1:7f6dde25d62cd241359f2ff463f1a4dd88524dd0'),
(87, 'property_black_money', 0, 'char1:7f6dde25d62cd241359f2ff463f1a4dd88524dd0'),
(88, 'caution', 0, 'char1:7f6dde25d62cd241359f2ff463f1a4dd88524dd0'),
(89, 'bank_savings', 0, 'char1:4343c0a396a7fbf23b44c3ef58c5c307b2d5efd0'),
(90, 'caution', 0, 'char1:4343c0a396a7fbf23b44c3ef58c5c307b2d5efd0'),
(91, 'property_black_money', 0, 'char1:4343c0a396a7fbf23b44c3ef58c5c307b2d5efd0'),
(92, 'bank_savings', 0, 'char1:c6f4e89e12a0eef2fe292ac28ac290d48ec281de'),
(93, 'caution', 0, 'char1:c6f4e89e12a0eef2fe292ac28ac290d48ec281de'),
(94, 'property_black_money', 0, 'char1:c6f4e89e12a0eef2fe292ac28ac290d48ec281de'),
(95, 'bank_savings', 0, 'char1:27ca92e6e804bd4de4d2451c46291c0a01c37085'),
(96, 'property_black_money', 0, 'char1:27ca92e6e804bd4de4d2451c46291c0a01c37085'),
(97, 'caution', 0, 'char1:27ca92e6e804bd4de4d2451c46291c0a01c37085'),
(98, 'bank_savings', 0, 'char1:2acde40ae15f3f6a5d4e5aba813ae2d7241ac786'),
(99, 'property_black_money', 0, 'char1:2acde40ae15f3f6a5d4e5aba813ae2d7241ac786'),
(100, 'caution', 0, 'char1:2acde40ae15f3f6a5d4e5aba813ae2d7241ac786'),
(101, 'bank_savings', 0, 'char1:c5d03420f5eb9bf352afb61ac54d83d4998194c9'),
(102, 'property_black_money', 0, 'char1:c5d03420f5eb9bf352afb61ac54d83d4998194c9'),
(103, 'caution', 0, 'char1:c5d03420f5eb9bf352afb61ac54d83d4998194c9'),
(104, 'bank_savings', 0, 'char1:a976ed3ebf0b24285879712e1e6aa1aa063f5420'),
(105, 'property_black_money', 0, 'char1:a976ed3ebf0b24285879712e1e6aa1aa063f5420'),
(106, 'caution', 0, 'char1:a976ed3ebf0b24285879712e1e6aa1aa063f5420'),
(107, 'bank_savings', 0, 'char1:e9c6d4d7d004327bc7c3522c030b8542d2d83223'),
(108, 'caution', 0, 'char1:e9c6d4d7d004327bc7c3522c030b8542d2d83223'),
(109, 'property_black_money', 0, 'char1:e9c6d4d7d004327bc7c3522c030b8542d2d83223'),
(110, 'bank_savings', 0, 'char1:e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4'),
(111, 'property_black_money', 0, 'char1:e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4'),
(112, 'caution', 0, 'char1:e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4'),
(113, 'bank_savings', 0, 'char1:46fabf57fd3cb4bfb927a04134be22ca2c59feab'),
(114, 'caution', 0, 'char1:46fabf57fd3cb4bfb927a04134be22ca2c59feab'),
(115, 'property_black_money', 0, 'char1:46fabf57fd3cb4bfb927a04134be22ca2c59feab'),
(116, 'bank_savings', 0, 'char1:30c9314a2f2bcea1f8fc50ddd7097b3f8af24f61'),
(117, 'caution', 0, 'char1:30c9314a2f2bcea1f8fc50ddd7097b3f8af24f61'),
(118, 'property_black_money', 0, 'char1:30c9314a2f2bcea1f8fc50ddd7097b3f8af24f61'),
(119, 'bank_savings', 0, 'char1:ec686432ac637aaaa422371014a1e08026133b3c'),
(120, 'caution', 0, 'char1:ec686432ac637aaaa422371014a1e08026133b3c'),
(121, 'property_black_money', 0, 'char1:ec686432ac637aaaa422371014a1e08026133b3c'),
(122, 'bank_savings', 0, 'char1:11cf4811816ea4b9a9b9be5982974a1ceacacc55'),
(123, 'caution', 0, 'char1:11cf4811816ea4b9a9b9be5982974a1ceacacc55'),
(124, 'property_black_money', 0, 'char1:11cf4811816ea4b9a9b9be5982974a1ceacacc55'),
(125, 'bank_savings', 0, 'char1:85ce8871d9979e8cb94c76f369557a2952a931a6'),
(126, 'caution', 0, 'char1:85ce8871d9979e8cb94c76f369557a2952a931a6'),
(127, 'property_black_money', 0, 'char1:85ce8871d9979e8cb94c76f369557a2952a931a6'),
(128, 'bank_savings', 0, 'char1:aa24fbd318a2f3c4ee45cbff944911c4361221e0'),
(129, 'property_black_money', 0, 'char1:aa24fbd318a2f3c4ee45cbff944911c4361221e0'),
(130, 'caution', 0, 'char1:aa24fbd318a2f3c4ee45cbff944911c4361221e0'),
(131, 'caution', 0, 'char1:9df7ecd455c8ec9885a7b110a90e161744dabdbd'),
(132, 'bank_savings', 0, 'char1:9df7ecd455c8ec9885a7b110a90e161744dabdbd'),
(133, 'property_black_money', 0, 'char1:9df7ecd455c8ec9885a7b110a90e161744dabdbd'),
(134, 'bank_savings', 0, 'char1:57e1136f1845df6b2b4e2514bd7ab02fbe3a0bd5'),
(135, 'caution', 0, 'char1:57e1136f1845df6b2b4e2514bd7ab02fbe3a0bd5'),
(136, 'property_black_money', 0, 'char1:57e1136f1845df6b2b4e2514bd7ab02fbe3a0bd5'),
(137, 'bank_savings', 0, 'char1:d5c2e10e2de1b6ff080cac442eabe55fffcacf4e'),
(138, 'caution', 0, 'char1:d5c2e10e2de1b6ff080cac442eabe55fffcacf4e'),
(139, 'property_black_money', 0, 'char1:d5c2e10e2de1b6ff080cac442eabe55fffcacf4e'),
(140, 'bank_savings', 0, 'char1:3c55d8c953f8f27bbf776ad8bad9cd07c4aa62c1'),
(141, 'caution', 0, 'char1:3c55d8c953f8f27bbf776ad8bad9cd07c4aa62c1'),
(142, 'property_black_money', 0, 'char1:3c55d8c953f8f27bbf776ad8bad9cd07c4aa62c1'),
(143, 'bank_savings', 0, 'char1:ce894a6491086e487df19c9a28575c7fe53e2564'),
(144, 'caution', 0, 'char1:ce894a6491086e487df19c9a28575c7fe53e2564'),
(145, 'property_black_money', 0, 'char1:ce894a6491086e487df19c9a28575c7fe53e2564'),
(146, 'bank_savings', 0, 'char1:d72e1074bba4b1904de963a78d6b9a0629651670'),
(147, 'property_black_money', 0, 'char1:d72e1074bba4b1904de963a78d6b9a0629651670'),
(148, 'caution', 0, 'char1:d72e1074bba4b1904de963a78d6b9a0629651670'),
(149, 'bank_savings', 0, 'char1:740635149b504024f0398f6c05522fc554dcb5ec'),
(150, 'property_black_money', 0, 'char1:740635149b504024f0398f6c05522fc554dcb5ec'),
(151, 'caution', 0, 'char1:740635149b504024f0398f6c05522fc554dcb5ec'),
(152, 'bank_savings', 0, '9413027c5cbc3adc47537bc033b3dac46a1d0937'),
(153, 'caution', 0, '9413027c5cbc3adc47537bc033b3dac46a1d0937'),
(154, 'property_black_money', 0, '9413027c5cbc3adc47537bc033b3dac46a1d0937'),
(155, 'property_black_money', 0, '60e7f61c12e41dcd4230790d4c36a862a50683e8'),
(156, 'caution', 0, '60e7f61c12e41dcd4230790d4c36a862a50683e8'),
(157, 'bank_savings', 0, '60e7f61c12e41dcd4230790d4c36a862a50683e8'),
(158, 'bank_savings', 0, '8a479b8c0e92ed24b173fbe87bdda1f62f2c9dba'),
(159, 'caution', 0, '8a479b8c0e92ed24b173fbe87bdda1f62f2c9dba'),
(160, 'property_black_money', 0, '8a479b8c0e92ed24b173fbe87bdda1f62f2c9dba'),
(161, 'bank_savings', 0, 'a61491ae07585fa1f5ad4bd117b207479ace3696'),
(162, 'caution', 0, 'a61491ae07585fa1f5ad4bd117b207479ace3696'),
(163, 'property_black_money', 0, 'a61491ae07585fa1f5ad4bd117b207479ace3696'),
(164, 'bank_savings', 0, '8de6c811aa10b7ec2f2b23ab9c4d4a154bb9d74e'),
(165, 'caution', 0, '8de6c811aa10b7ec2f2b23ab9c4d4a154bb9d74e'),
(166, 'property_black_money', 0, '8de6c811aa10b7ec2f2b23ab9c4d4a154bb9d74e'),
(167, 'bank_savings', 0, 'ce894a6491086e487df19c9a28575c7fe53e2564'),
(168, 'caution', 0, 'ce894a6491086e487df19c9a28575c7fe53e2564'),
(169, 'property_black_money', 0, 'ce894a6491086e487df19c9a28575c7fe53e2564'),
(170, 'bank_savings', 0, 'aa24fbd318a2f3c4ee45cbff944911c4361221e0'),
(171, 'caution', 0, 'aa24fbd318a2f3c4ee45cbff944911c4361221e0'),
(172, 'property_black_money', 0, 'aa24fbd318a2f3c4ee45cbff944911c4361221e0'),
(173, 'bank_savings', 0, 'ab295ffb82dbb6774d9bab950d54389ff4035d25'),
(174, 'caution', 0, 'ab295ffb82dbb6774d9bab950d54389ff4035d25'),
(175, 'property_black_money', 0, 'ab295ffb82dbb6774d9bab950d54389ff4035d25'),
(176, 'bank_savings', 0, '1a820a95f8703b0ae9569765dd02be48f72bfd9e'),
(177, 'caution', 0, '1a820a95f8703b0ae9569765dd02be48f72bfd9e'),
(178, 'property_black_money', 0, '1a820a95f8703b0ae9569765dd02be48f72bfd9e'),
(179, 'bank_savings', 0, '3c4f01d92bf183b4003f6e62552fa48aeea2988b'),
(180, 'caution', 0, '3c4f01d92bf183b4003f6e62552fa48aeea2988b'),
(181, 'property_black_money', 0, '3c4f01d92bf183b4003f6e62552fa48aeea2988b'),
(182, 'bank_savings', 0, '539da34fec223d723fb1a1d888c8d0ad850ccd43'),
(183, 'caution', 0, '539da34fec223d723fb1a1d888c8d0ad850ccd43'),
(184, 'property_black_money', 0, '539da34fec223d723fb1a1d888c8d0ad850ccd43'),
(185, 'bank_savings', 0, 'f8217067e95de9e11c6b96cf3066087dca6caee4'),
(186, 'caution', 0, 'f8217067e95de9e11c6b96cf3066087dca6caee4'),
(187, 'property_black_money', 0, 'f8217067e95de9e11c6b96cf3066087dca6caee4'),
(188, 'property_black_money', 0, '34b17620248cf688eaafced1b4f89da770471352'),
(189, 'caution', 0, '34b17620248cf688eaafced1b4f89da770471352'),
(190, 'bank_savings', 0, '34b17620248cf688eaafced1b4f89da770471352'),
(191, 'property_black_money', 0, 'a0810ce592c53b1f3d3244f1c178f668bff4796a'),
(192, 'caution', 0, 'a0810ce592c53b1f3d3244f1c178f668bff4796a'),
(193, 'bank_savings', 0, 'a0810ce592c53b1f3d3244f1c178f668bff4796a'),
(194, 'caution', 0, 'dacb18f377bd7d22f66cf6934d780f345c875292'),
(195, 'bank_savings', 0, 'dacb18f377bd7d22f66cf6934d780f345c875292'),
(196, 'property_black_money', 0, 'dacb18f377bd7d22f66cf6934d780f345c875292'),
(197, 'property_black_money', 0, '232a2b1a956fe857a308a8dadc5ef04baa861c48'),
(198, 'caution', 0, '232a2b1a956fe857a308a8dadc5ef04baa861c48'),
(199, 'bank_savings', 0, '232a2b1a956fe857a308a8dadc5ef04baa861c48'),
(200, 'bank_savings', 0, 'c6f4e89e12a0eef2fe292ac28ac290d48ec281de'),
(201, 'property_black_money', 0, 'c6f4e89e12a0eef2fe292ac28ac290d48ec281de'),
(202, 'caution', 0, 'c6f4e89e12a0eef2fe292ac28ac290d48ec281de'),
(203, 'bank_savings', 0, 'c437f8ddd69c88c6fea943e86bef903a5e5bdc67'),
(204, 'caution', 0, 'c437f8ddd69c88c6fea943e86bef903a5e5bdc67'),
(205, 'property_black_money', 0, 'c437f8ddd69c88c6fea943e86bef903a5e5bdc67'),
(206, 'property_black_money', 0, '089e7d45c6adc3d7f64d3ec91c7929b218e08c31'),
(207, 'caution', 0, '089e7d45c6adc3d7f64d3ec91c7929b218e08c31'),
(208, 'bank_savings', 0, '089e7d45c6adc3d7f64d3ec91c7929b218e08c31'),
(209, 'bank_savings', 0, '299e148f682e96c6e7703baf5dda7ed79412b8ba'),
(210, 'caution', 0, '299e148f682e96c6e7703baf5dda7ed79412b8ba'),
(211, 'property_black_money', 0, '299e148f682e96c6e7703baf5dda7ed79412b8ba'),
(212, 'bank_savings', 0, '8416c251e8f67dd018426503f5de61c4c1868d73'),
(213, 'caution', 0, '8416c251e8f67dd018426503f5de61c4c1868d73'),
(214, 'property_black_money', 0, '8416c251e8f67dd018426503f5de61c4c1868d73'),
(215, 'bank_savings', 0, '99ca2d4307397eb9376893e4abd8177484960021'),
(216, 'caution', 0, '99ca2d4307397eb9376893e4abd8177484960021'),
(217, 'property_black_money', 0, '99ca2d4307397eb9376893e4abd8177484960021'),
(218, 'property_black_money', 0, 'ac1b6b9662467e4bf7481e6803e8ff5cc45b611e'),
(219, 'caution', 0, 'ac1b6b9662467e4bf7481e6803e8ff5cc45b611e'),
(220, 'bank_savings', 0, 'ac1b6b9662467e4bf7481e6803e8ff5cc45b611e'),
(221, 'bank_savings', 0, 'fc609d8d47441141ca22890817271ffe3167b4c7'),
(222, 'caution', 0, 'fc609d8d47441141ca22890817271ffe3167b4c7'),
(223, 'property_black_money', 0, 'fc609d8d47441141ca22890817271ffe3167b4c7'),
(224, 'property_black_money', 0, 'c456115be1ef55f3b4d16eeac0dc61b2d400a53c'),
(225, 'caution', 0, 'c456115be1ef55f3b4d16eeac0dc61b2d400a53c'),
(226, 'bank_savings', 0, 'c456115be1ef55f3b4d16eeac0dc61b2d400a53c'),
(227, 'property_black_money', 0, 'd948cba614d5490e6f27d3849b613d0c2a87fabe'),
(228, 'bank_savings', 0, 'd948cba614d5490e6f27d3849b613d0c2a87fabe'),
(229, 'caution', 0, 'd948cba614d5490e6f27d3849b613d0c2a87fabe'),
(230, 'bank_savings', 0, '4389442038c53722ac288f1b5d2a3834bef50dca'),
(231, 'caution', 0, '4389442038c53722ac288f1b5d2a3834bef50dca'),
(232, 'property_black_money', 0, '4389442038c53722ac288f1b5d2a3834bef50dca'),
(233, 'property_black_money', 0, 'f7701b63b33025acfa02e6d97ad246a8032aa4c8'),
(234, 'caution', 0, 'f7701b63b33025acfa02e6d97ad246a8032aa4c8'),
(235, 'bank_savings', 0, 'f7701b63b33025acfa02e6d97ad246a8032aa4c8'),
(236, 'bank_savings', 0, 'abf397e909b79abc8e6b73994789f5872a158042'),
(237, 'caution', 0, 'abf397e909b79abc8e6b73994789f5872a158042'),
(238, 'property_black_money', 0, 'abf397e909b79abc8e6b73994789f5872a158042'),
(239, 'bank_savings', 0, '92658cf4333f9987846e03eb8757bbe91d128790'),
(240, 'property_black_money', 0, '92658cf4333f9987846e03eb8757bbe91d128790'),
(241, 'caution', 0, '92658cf4333f9987846e03eb8757bbe91d128790'),
(242, 'bank_savings', 0, '8ae7e1af79b3d8e72196029385499df5745361dd'),
(243, 'caution', 0, '8ae7e1af79b3d8e72196029385499df5745361dd'),
(244, 'property_black_money', 0, '8ae7e1af79b3d8e72196029385499df5745361dd'),
(245, 'bank_savings', 0, '863cbabe1d3cd5e0bad48656b949d762032d3640'),
(246, 'caution', 0, '863cbabe1d3cd5e0bad48656b949d762032d3640'),
(247, 'property_black_money', 0, '863cbabe1d3cd5e0bad48656b949d762032d3640'),
(248, 'property_black_money', 0, 'e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4'),
(249, 'caution', 0, 'e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4'),
(250, 'bank_savings', 0, 'e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4'),
(251, 'bank_savings', 0, 'e9c6d4d7d004327bc7c3522c030b8542d2d83223'),
(252, 'caution', 0, 'e9c6d4d7d004327bc7c3522c030b8542d2d83223'),
(253, 'property_black_money', 0, 'e9c6d4d7d004327bc7c3522c030b8542d2d83223'),
(254, 'bank_savings', 0, 'eda902d2bb97eb5bddd5c2ec4d4cf6ec5cee50d9'),
(255, 'property_black_money', 0, 'eda902d2bb97eb5bddd5c2ec4d4cf6ec5cee50d9'),
(256, 'caution', 0, 'eda902d2bb97eb5bddd5c2ec4d4cf6ec5cee50d9'),
(257, 'bank_savings', 0, 'd47df2793834fb6c4d2a7dca22454c169eb316e8'),
(258, 'property_black_money', 0, 'd47df2793834fb6c4d2a7dca22454c169eb316e8'),
(259, 'caution', 0, 'd47df2793834fb6c4d2a7dca22454c169eb316e8'),
(260, 'bank_savings', 0, '9dd4606ba1ad9a477ae174f80da2e3bb72794cb6'),
(261, 'property_black_money', 0, '9dd4606ba1ad9a477ae174f80da2e3bb72794cb6'),
(262, 'caution', 0, '9dd4606ba1ad9a477ae174f80da2e3bb72794cb6'),
(263, 'bank_savings', 0, '4347b762f484ce02f3b09d02e33f5f14a19c8fd8'),
(264, 'property_black_money', 0, '4347b762f484ce02f3b09d02e33f5f14a19c8fd8'),
(265, 'caution', 0, '4347b762f484ce02f3b09d02e33f5f14a19c8fd8'),
(266, 'caution', 0, '00747cf4acddaf6dfead08134c7ca03897f54925'),
(267, 'bank_savings', 0, '00747cf4acddaf6dfead08134c7ca03897f54925'),
(268, 'property_black_money', 0, '00747cf4acddaf6dfead08134c7ca03897f54925'),
(269, 'caution', 0, '122adf648e8bc88e27db8e2380dbbc94b2efef91'),
(270, 'bank_savings', 0, '122adf648e8bc88e27db8e2380dbbc94b2efef91'),
(271, 'property_black_money', 0, '122adf648e8bc88e27db8e2380dbbc94b2efef91'),
(272, 'bank_savings', 0, '2fc0a833986471bf80b1465c634827c592a84784'),
(273, 'caution', 0, '2fc0a833986471bf80b1465c634827c592a84784'),
(274, 'property_black_money', 0, '2fc0a833986471bf80b1465c634827c592a84784'),
(275, 'bank_savings', 0, '54e42157cf2af377b106735bceba2594f6588c5f'),
(276, 'caution', 0, '54e42157cf2af377b106735bceba2594f6588c5f'),
(277, 'property_black_money', 0, '54e42157cf2af377b106735bceba2594f6588c5f'),
(278, 'bank_savings', 0, 'c5cc128dadc475193bbf07bf91dbd7a8f3d2d177'),
(279, 'property_black_money', 0, 'c5cc128dadc475193bbf07bf91dbd7a8f3d2d177'),
(280, 'caution', 0, 'c5cc128dadc475193bbf07bf91dbd7a8f3d2d177'),
(281, 'bank_savings', 0, '6cc5f367bc66f1b43ba124d2fb4cea876bb3599b'),
(282, 'property_black_money', 0, '6cc5f367bc66f1b43ba124d2fb4cea876bb3599b'),
(283, 'caution', 0, '6cc5f367bc66f1b43ba124d2fb4cea876bb3599b'),
(284, 'bank_savings', 0, 'fb7691ba94bde18b8ea03d50a8d18c4230c34a9c'),
(285, 'caution', 0, 'fb7691ba94bde18b8ea03d50a8d18c4230c34a9c'),
(286, 'property_black_money', 0, 'fb7691ba94bde18b8ea03d50a8d18c4230c34a9c'),
(287, 'bank_savings', 0, '6121d6980e964e478449336c022a989ef0e02cfe'),
(288, 'property_black_money', 0, '6121d6980e964e478449336c022a989ef0e02cfe'),
(289, 'caution', 0, '6121d6980e964e478449336c022a989ef0e02cfe'),
(290, 'bank_savings', 0, '5cf91c7c0cf842e1d51716474601d6f92e9019eb'),
(291, 'caution', 0, '5cf91c7c0cf842e1d51716474601d6f92e9019eb'),
(292, 'property_black_money', 0, '5cf91c7c0cf842e1d51716474601d6f92e9019eb'),
(293, 'property_black_money', 0, '2027540b47886d2e7b8f43a4e59eafb80d678c7f'),
(294, 'caution', 0, '2027540b47886d2e7b8f43a4e59eafb80d678c7f'),
(295, 'bank_savings', 0, '2027540b47886d2e7b8f43a4e59eafb80d678c7f'),
(296, 'bank_savings', 0, 'fa851e9fe6399643acd2696f16ca2c6569379120'),
(297, 'property_black_money', 0, 'fa851e9fe6399643acd2696f16ca2c6569379120'),
(298, 'caution', 0, 'fa851e9fe6399643acd2696f16ca2c6569379120'),
(299, 'bank_savings', 0, '3cfb07a6b99a4782c26dacc94514b6d76ac34f11'),
(300, 'caution', 0, '3cfb07a6b99a4782c26dacc94514b6d76ac34f11'),
(301, 'property_black_money', 0, '3cfb07a6b99a4782c26dacc94514b6d76ac34f11'),
(302, 'property_black_money', 0, '8f6f7c40ef26457257ae2a53dd1115a2881c4e91'),
(303, 'bank_savings', 0, '8f6f7c40ef26457257ae2a53dd1115a2881c4e91'),
(304, 'caution', 0, '8f6f7c40ef26457257ae2a53dd1115a2881c4e91'),
(305, 'bank_savings', 0, '740635149b504024f0398f6c05522fc554dcb5ec'),
(306, 'caution', 0, '740635149b504024f0398f6c05522fc554dcb5ec'),
(307, 'property_black_money', 0, '740635149b504024f0398f6c05522fc554dcb5ec'),
(308, 'bank_savings', 0, '47f1e524266279e3c6c4eaf911f67c9980b66568'),
(309, 'caution', 0, '47f1e524266279e3c6c4eaf911f67c9980b66568'),
(310, 'property_black_money', 0, '47f1e524266279e3c6c4eaf911f67c9980b66568'),
(311, 'bank_savings', 0, '812f930685f939747b5527d26b3e97f675ea86d9'),
(312, 'caution', 0, '812f930685f939747b5527d26b3e97f675ea86d9'),
(313, 'property_black_money', 0, '812f930685f939747b5527d26b3e97f675ea86d9'),
(314, 'bank_savings', 0, 'cd05ef4cf64f6cda716f84768f0db8280c07763e'),
(315, 'caution', 0, 'cd05ef4cf64f6cda716f84768f0db8280c07763e'),
(316, 'property_black_money', 0, 'cd05ef4cf64f6cda716f84768f0db8280c07763e'),
(317, 'bank_savings', 0, '71796f076ab2054f7248846de51148871a628218'),
(318, 'property_black_money', 0, '71796f076ab2054f7248846de51148871a628218'),
(319, 'caution', 0, '71796f076ab2054f7248846de51148871a628218'),
(320, 'bank_savings', 0, 'a48e967ecc7794609cbc2424d8dcb123e172b057'),
(321, 'caution', 0, 'a48e967ecc7794609cbc2424d8dcb123e172b057'),
(322, 'property_black_money', 0, 'a48e967ecc7794609cbc2424d8dcb123e172b057'),
(323, 'bank_savings', 0, 'c2ee0d63bed593472531eb1aaea9080b634199da'),
(324, 'property_black_money', 0, 'c2ee0d63bed593472531eb1aaea9080b634199da'),
(325, 'caution', 0, 'c2ee0d63bed593472531eb1aaea9080b634199da'),
(326, 'bank_savings', 0, '2b0ceaeddafbdc9d1a2e07d9053284dda71ab790'),
(327, 'caution', 0, '2b0ceaeddafbdc9d1a2e07d9053284dda71ab790'),
(328, 'property_black_money', 0, '2b0ceaeddafbdc9d1a2e07d9053284dda71ab790'),
(329, 'caution', 0, 'b299ea7ae38aa538abcbbbaf087da1589ebfeecb'),
(330, 'property_black_money', 0, 'b299ea7ae38aa538abcbbbaf087da1589ebfeecb'),
(331, 'bank_savings', 0, 'b299ea7ae38aa538abcbbbaf087da1589ebfeecb'),
(332, 'bank_savings', 0, 'e18bf423c4fc6cbc68334f155d3c4e2fcf1593e5'),
(333, 'caution', 0, 'e18bf423c4fc6cbc68334f155d3c4e2fcf1593e5'),
(334, 'property_black_money', 0, 'e18bf423c4fc6cbc68334f155d3c4e2fcf1593e5'),
(335, 'property_black_money', 0, '973785d12d7416a1f34b77bf7ad23a5bbfc4cd4d'),
(336, 'caution', 0, '973785d12d7416a1f34b77bf7ad23a5bbfc4cd4d'),
(337, 'bank_savings', 0, '973785d12d7416a1f34b77bf7ad23a5bbfc4cd4d'),
(338, 'bank_savings', 0, 'fa0a3d2cf5b909102136a156147e33a8bd54c73a'),
(339, 'caution', 0, 'fa0a3d2cf5b909102136a156147e33a8bd54c73a'),
(340, 'property_black_money', 0, 'fa0a3d2cf5b909102136a156147e33a8bd54c73a'),
(341, 'bank_savings', 0, '9713617b5f3668e10d847bf1762e47692a72bf62'),
(342, 'caution', 0, '9713617b5f3668e10d847bf1762e47692a72bf62'),
(343, 'property_black_money', 0, '9713617b5f3668e10d847bf1762e47692a72bf62'),
(344, 'property_black_money', 0, '3da379d34a90d37a3b86ad3a1350992f267ab9d8'),
(345, 'bank_savings', 0, '3da379d34a90d37a3b86ad3a1350992f267ab9d8'),
(346, 'caution', 0, '3da379d34a90d37a3b86ad3a1350992f267ab9d8'),
(347, 'bank_savings', 0, 'c10de0bb2a24ce07e1a64644028b2808a63157aa'),
(348, 'property_black_money', 0, 'c10de0bb2a24ce07e1a64644028b2808a63157aa'),
(349, 'caution', 0, 'c10de0bb2a24ce07e1a64644028b2808a63157aa'),
(350, 'property_black_money', 0, 'd96ee4e4ee33d33d3ba43ebc36e1451e8c6783f6'),
(351, 'caution', 0, 'd96ee4e4ee33d33d3ba43ebc36e1451e8c6783f6'),
(352, 'bank_savings', 0, 'd96ee4e4ee33d33d3ba43ebc36e1451e8c6783f6'),
(353, 'bank_savings', 0, 'bacee5552e4dc9cabaa03b21ffa557b755bff36d'),
(354, 'caution', 0, 'bacee5552e4dc9cabaa03b21ffa557b755bff36d'),
(355, 'property_black_money', 0, 'bacee5552e4dc9cabaa03b21ffa557b755bff36d'),
(356, 'bank_savings', 0, '758589edcd8573a28957ba526ed94e6dc190f560'),
(357, 'caution', 0, '758589edcd8573a28957ba526ed94e6dc190f560'),
(358, 'property_black_money', 0, '758589edcd8573a28957ba526ed94e6dc190f560'),
(359, 'bank_savings', 0, '30faa63e9f9438d20cf20fa6bb8f966d40be27fb'),
(360, 'property_black_money', 0, '30faa63e9f9438d20cf20fa6bb8f966d40be27fb'),
(361, 'caution', 0, '30faa63e9f9438d20cf20fa6bb8f966d40be27fb'),
(362, 'bank_savings', 0, '481f3f3079c3f3aeb1a4fe185281196575f60940'),
(363, 'caution', 0, '481f3f3079c3f3aeb1a4fe185281196575f60940'),
(364, 'property_black_money', 0, '481f3f3079c3f3aeb1a4fe185281196575f60940'),
(365, 'bank_savings', 0, 'd730a7cc6abff51aecfcb9a2cd7bc5e29dbd16b0'),
(366, 'caution', 0, 'd730a7cc6abff51aecfcb9a2cd7bc5e29dbd16b0'),
(367, 'property_black_money', 0, 'd730a7cc6abff51aecfcb9a2cd7bc5e29dbd16b0'),
(368, 'bank_savings', 0, '3be6dc9c3353a885c9fdb724bf8ed1d904fa6432'),
(369, 'caution', 0, '3be6dc9c3353a885c9fdb724bf8ed1d904fa6432'),
(370, 'property_black_money', 0, '3be6dc9c3353a885c9fdb724bf8ed1d904fa6432'),
(371, 'property_black_money', 0, 'fbfc4a5be8a0631a1c7ef288c011082eebf6d5fc'),
(372, 'caution', 0, 'fbfc4a5be8a0631a1c7ef288c011082eebf6d5fc'),
(373, 'bank_savings', 0, 'fbfc4a5be8a0631a1c7ef288c011082eebf6d5fc'),
(374, 'caution', 0, '40d836bfa4f72c87eb0cb959fbc49e666344b77f'),
(375, 'property_black_money', 0, '40d836bfa4f72c87eb0cb959fbc49e666344b77f'),
(376, 'bank_savings', 0, '40d836bfa4f72c87eb0cb959fbc49e666344b77f'),
(377, 'bank_savings', 0, '91fccb7f9c806411ac7d3719d655699f7ca3bb0a'),
(378, 'caution', 0, '91fccb7f9c806411ac7d3719d655699f7ca3bb0a'),
(379, 'property_black_money', 0, '91fccb7f9c806411ac7d3719d655699f7ca3bb0a'),
(380, 'bank_savings', 0, '09547ea828c6597feb160439c04c5e43bd586602'),
(381, 'caution', 0, '09547ea828c6597feb160439c04c5e43bd586602'),
(382, 'property_black_money', 0, '09547ea828c6597feb160439c04c5e43bd586602'),
(383, 'bank_savings', 0, '019d663b456af7c16b8ac4f56f4a405cb0f0f67c'),
(384, 'caution', 0, '019d663b456af7c16b8ac4f56f4a405cb0f0f67c'),
(385, 'property_black_money', 0, '019d663b456af7c16b8ac4f56f4a405cb0f0f67c'),
(386, 'bank_savings', 0, '6d0ef8915ffa8cf4b03354208e1509555af8d018'),
(387, 'caution', 0, '6d0ef8915ffa8cf4b03354208e1509555af8d018'),
(388, 'property_black_money', 0, '6d0ef8915ffa8cf4b03354208e1509555af8d018'),
(389, 'property_black_money', 0, 'fe0ade28aff445845ddd37799553568e0c540041'),
(390, 'caution', 0, 'fe0ade28aff445845ddd37799553568e0c540041'),
(391, 'bank_savings', 0, 'fe0ade28aff445845ddd37799553568e0c540041'),
(392, 'bank_savings', 0, '9284a475e223ba44877a792a3e6216af0290bbb2'),
(393, 'caution', 0, '9284a475e223ba44877a792a3e6216af0290bbb2'),
(394, 'property_black_money', 0, '9284a475e223ba44877a792a3e6216af0290bbb2'),
(395, 'bank_savings', 0, 'bb27fd6d7024f42525cefc445b9695a41e601e34'),
(396, 'caution', 0, 'bb27fd6d7024f42525cefc445b9695a41e601e34'),
(397, 'property_black_money', 0, 'bb27fd6d7024f42525cefc445b9695a41e601e34'),
(398, 'bank_savings', 0, '5cb28090035dcd277e57c7c97211e018a573c7cb'),
(399, 'property_black_money', 0, '5cb28090035dcd277e57c7c97211e018a573c7cb'),
(400, 'caution', 0, '5cb28090035dcd277e57c7c97211e018a573c7cb'),
(401, 'bank_savings', 0, '3c9c5321ff0780cb587fef73b3713dd8cab2e041'),
(402, 'property_black_money', 0, '3c9c5321ff0780cb587fef73b3713dd8cab2e041'),
(403, 'caution', 0, '3c9c5321ff0780cb587fef73b3713dd8cab2e041'),
(404, 'bank_savings', 0, '9496f9dfed6a3656e9e00359eb9faf8f03efa138'),
(405, 'caution', 0, '9496f9dfed6a3656e9e00359eb9faf8f03efa138'),
(406, 'property_black_money', 0, '9496f9dfed6a3656e9e00359eb9faf8f03efa138'),
(407, 'property_black_money', 0, '426848f0f4f2ed17e60ae463b74e050e1641f6f3'),
(408, 'caution', 0, '426848f0f4f2ed17e60ae463b74e050e1641f6f3'),
(409, 'bank_savings', 0, '426848f0f4f2ed17e60ae463b74e050e1641f6f3'),
(410, 'bank_savings', 0, '9accfa8f3d76c0dda45a4822abfdef2feacb98ed'),
(411, 'caution', 0, '9accfa8f3d76c0dda45a4822abfdef2feacb98ed'),
(412, 'property_black_money', 0, '9accfa8f3d76c0dda45a4822abfdef2feacb98ed'),
(413, 'caution', 0, '06ccebef95e2eee85c9f2064a3d1ad37ec583eaa'),
(414, 'property_black_money', 0, '06ccebef95e2eee85c9f2064a3d1ad37ec583eaa'),
(415, 'bank_savings', 0, '06ccebef95e2eee85c9f2064a3d1ad37ec583eaa'),
(416, 'bank_savings', 0, '1bc58bf5f4a2c8e0271c619121cb6371535e255d'),
(417, 'caution', 0, '1bc58bf5f4a2c8e0271c619121cb6371535e255d'),
(418, 'property_black_money', 0, '1bc58bf5f4a2c8e0271c619121cb6371535e255d'),
(419, 'caution', 0, '0a23a85c11ec498911230a6bb9f07e5967ecbb4a'),
(420, 'property_black_money', 0, '0a23a85c11ec498911230a6bb9f07e5967ecbb4a'),
(421, 'bank_savings', 0, '0a23a85c11ec498911230a6bb9f07e5967ecbb4a'),
(422, 'bank_savings', 0, '1913a349bcf2864f723f39044b194edc96a51e1d'),
(423, 'property_black_money', 0, '1913a349bcf2864f723f39044b194edc96a51e1d'),
(424, 'caution', 0, '1913a349bcf2864f723f39044b194edc96a51e1d'),
(425, 'bank_savings', 0, '784acd9b3d326f87d0a2bde318c767904a4cb652'),
(426, 'caution', 0, '784acd9b3d326f87d0a2bde318c767904a4cb652'),
(427, 'property_black_money', 0, '784acd9b3d326f87d0a2bde318c767904a4cb652'),
(428, 'caution', 0, '5462e7981d17b937f8214eff4792c65715a4c05b'),
(429, 'property_black_money', 0, '5462e7981d17b937f8214eff4792c65715a4c05b'),
(430, 'bank_savings', 0, '5462e7981d17b937f8214eff4792c65715a4c05b'),
(431, 'property_black_money', 0, '1c949f9d15e2fe2f00b2479c14b69684a96f4012'),
(432, 'bank_savings', 0, '1c949f9d15e2fe2f00b2479c14b69684a96f4012'),
(433, 'caution', 0, '1c949f9d15e2fe2f00b2479c14b69684a96f4012'),
(434, 'caution', 0, 'cc432643337a6374a8b887cbf0301ac580add445'),
(435, 'bank_savings', 0, 'cc432643337a6374a8b887cbf0301ac580add445'),
(436, 'property_black_money', 0, 'cc432643337a6374a8b887cbf0301ac580add445'),
(437, 'caution', 0, 'd0f673de2ba20368df6508fe9c32b240e582a2ad'),
(438, 'property_black_money', 0, 'd0f673de2ba20368df6508fe9c32b240e582a2ad'),
(439, 'bank_savings', 0, 'd0f673de2ba20368df6508fe9c32b240e582a2ad'),
(440, 'bank_savings', 0, '045135fcdd30bfddef95dfb547cf8a92fc413a95'),
(441, 'property_black_money', 0, '045135fcdd30bfddef95dfb547cf8a92fc413a95'),
(442, 'caution', 0, '045135fcdd30bfddef95dfb547cf8a92fc413a95'),
(443, 'property_black_money', 0, '8db3268dfbccae34e00da1aa6a9b28ccd2e78c2b'),
(444, 'caution', 0, '8db3268dfbccae34e00da1aa6a9b28ccd2e78c2b'),
(445, 'bank_savings', 0, '8db3268dfbccae34e00da1aa6a9b28ccd2e78c2b'),
(446, 'bank_savings', 0, 'd6f50b210d170c32208c340fd5e7c60aa3644af8'),
(447, 'caution', 0, 'd6f50b210d170c32208c340fd5e7c60aa3644af8'),
(448, 'property_black_money', 0, 'd6f50b210d170c32208c340fd5e7c60aa3644af8'),
(449, 'caution', 0, '1c6e8dc6443e9547ea7ccf603371fab69435b0ed'),
(450, 'property_black_money', 0, '1c6e8dc6443e9547ea7ccf603371fab69435b0ed'),
(451, 'bank_savings', 0, '1c6e8dc6443e9547ea7ccf603371fab69435b0ed'),
(452, 'property_black_money', 0, 'cc1dac0e7bb433fa67c72125dafa654ac2c40934'),
(453, 'caution', 0, 'cc1dac0e7bb433fa67c72125dafa654ac2c40934'),
(454, 'bank_savings', 0, 'cc1dac0e7bb433fa67c72125dafa654ac2c40934'),
(455, 'caution', 0, '480e1680dfc535981e5a6ccf80746c8f342855ef'),
(456, 'property_black_money', 0, '480e1680dfc535981e5a6ccf80746c8f342855ef'),
(457, 'bank_savings', 0, '480e1680dfc535981e5a6ccf80746c8f342855ef'),
(458, 'property_black_money', 0, '653c73dc78822467eec84c5dff44fb8c541bc1b2'),
(459, 'caution', 0, '653c73dc78822467eec84c5dff44fb8c541bc1b2'),
(460, 'bank_savings', 0, '653c73dc78822467eec84c5dff44fb8c541bc1b2'),
(461, 'property_black_money', 0, 'f4cafbe6b2484bbb4ad02d50763e69d79ae69fe8'),
(462, 'bank_savings', 0, 'f4cafbe6b2484bbb4ad02d50763e69d79ae69fe8'),
(463, 'caution', 0, 'f4cafbe6b2484bbb4ad02d50763e69d79ae69fe8'),
(464, 'bank_savings', 0, 'd013c531a130282879d39b9c9661187120a05350'),
(465, 'caution', 0, 'd013c531a130282879d39b9c9661187120a05350'),
(466, 'property_black_money', 0, 'd013c531a130282879d39b9c9661187120a05350'),
(467, 'bank_savings', 0, 'b588c480c5a104cb9aa8c0c23201eed952201152'),
(468, 'caution', 0, 'b588c480c5a104cb9aa8c0c23201eed952201152'),
(469, 'property_black_money', 0, 'b588c480c5a104cb9aa8c0c23201eed952201152'),
(470, 'caution', 0, '58326086e921abef54989a65ee18d190306097fc'),
(471, 'property_black_money', 0, '58326086e921abef54989a65ee18d190306097fc'),
(472, 'bank_savings', 0, '58326086e921abef54989a65ee18d190306097fc'),
(473, 'caution', 0, 'e7339780db4a1722f3b1fba6a60b4a7fc8b1ab7d'),
(474, 'bank_savings', 0, 'e7339780db4a1722f3b1fba6a60b4a7fc8b1ab7d'),
(475, 'property_black_money', 0, 'e7339780db4a1722f3b1fba6a60b4a7fc8b1ab7d'),
(476, 'bank_savings', 0, '6e65b1d66f47f1361a49d76479b719e4d8841fbf'),
(477, 'property_black_money', 0, '6e65b1d66f47f1361a49d76479b719e4d8841fbf'),
(478, 'caution', 0, '6e65b1d66f47f1361a49d76479b719e4d8841fbf'),
(479, 'bank_savings', 0, '0ceba97e85916fb562cbf85cc92d59defd380af6'),
(480, 'caution', 0, '0ceba97e85916fb562cbf85cc92d59defd380af6'),
(481, 'property_black_money', 0, '0ceba97e85916fb562cbf85cc92d59defd380af6'),
(482, 'caution', 0, 'd013b9689010fcb07de2c295d83495ed59367fde'),
(483, 'property_black_money', 0, 'd013b9689010fcb07de2c295d83495ed59367fde'),
(484, 'bank_savings', 0, 'd013b9689010fcb07de2c295d83495ed59367fde'),
(485, 'bank_savings', 0, 'd68ea116085b9520cb16dcc21130e681f37eed89'),
(486, 'caution', 0, 'd68ea116085b9520cb16dcc21130e681f37eed89'),
(487, 'property_black_money', 0, 'd68ea116085b9520cb16dcc21130e681f37eed89'),
(488, 'bank_savings', 0, '54a8dc4ac0e9d0292e56258929887641cfd57c9a'),
(489, 'caution', 0, '54a8dc4ac0e9d0292e56258929887641cfd57c9a'),
(490, 'property_black_money', 0, '54a8dc4ac0e9d0292e56258929887641cfd57c9a'),
(491, 'bank_savings', 0, '9fd52acedcf388430b08bd134eed60d258e246ff'),
(492, 'caution', 0, '9fd52acedcf388430b08bd134eed60d258e246ff'),
(493, 'property_black_money', 0, '9fd52acedcf388430b08bd134eed60d258e246ff'),
(494, 'caution', 0, '0714fe505c49ac3eb1f2e8a33bf0009b3219c870'),
(495, 'property_black_money', 0, '0714fe505c49ac3eb1f2e8a33bf0009b3219c870'),
(496, 'bank_savings', 0, '0714fe505c49ac3eb1f2e8a33bf0009b3219c870'),
(497, 'bank_savings', 0, '96f612a9f63f24670a9b16c72204e0639bcf3e43'),
(498, 'property_black_money', 0, '96f612a9f63f24670a9b16c72204e0639bcf3e43'),
(499, 'caution', 0, '96f612a9f63f24670a9b16c72204e0639bcf3e43'),
(500, 'bank_savings', 0, '365df85d6097f045181ee0f2de2556c6ee5fbf71'),
(501, 'caution', 0, '365df85d6097f045181ee0f2de2556c6ee5fbf71'),
(502, 'property_black_money', 0, '365df85d6097f045181ee0f2de2556c6ee5fbf71'),
(503, 'caution', 0, '64bb0eaf3e141de0bbe31dd6262f888f2cf01c93'),
(504, 'bank_savings', 0, '64bb0eaf3e141de0bbe31dd6262f888f2cf01c93'),
(505, 'property_black_money', 0, '64bb0eaf3e141de0bbe31dd6262f888f2cf01c93'),
(506, 'bank_savings', 0, 'b6088922c3d1e3023d1d030c353160e4be5950c3'),
(507, 'caution', 0, 'b6088922c3d1e3023d1d030c353160e4be5950c3'),
(508, 'property_black_money', 0, 'b6088922c3d1e3023d1d030c353160e4be5950c3'),
(509, 'bank_savings', 0, '5f191156ad6ff002d5b20d83d79f2ef41c6ccb58'),
(510, 'caution', 0, '5f191156ad6ff002d5b20d83d79f2ef41c6ccb58'),
(511, 'property_black_money', 0, '5f191156ad6ff002d5b20d83d79f2ef41c6ccb58'),
(512, 'bank_savings', 0, 'd6a232a8c33d0fc323e563654a66f2355a11891d'),
(513, 'caution', 0, 'd6a232a8c33d0fc323e563654a66f2355a11891d'),
(514, 'property_black_money', 0, 'd6a232a8c33d0fc323e563654a66f2355a11891d'),
(515, 'caution', 0, '8416d5ce2dac8f6aa1b15ea3b7bdca8e27780872'),
(516, 'property_black_money', 0, '8416d5ce2dac8f6aa1b15ea3b7bdca8e27780872'),
(517, 'bank_savings', 0, '8416d5ce2dac8f6aa1b15ea3b7bdca8e27780872'),
(518, 'bank_savings', 0, '1572c2d73b73f4626aed7eab1d580c87c5259919'),
(519, 'caution', 0, '1572c2d73b73f4626aed7eab1d580c87c5259919'),
(520, 'property_black_money', 0, '1572c2d73b73f4626aed7eab1d580c87c5259919'),
(521, 'bank_savings', 0, '5eced0a293d2a2d8a59b361bb49e331cb19e6719'),
(522, 'caution', 0, '5eced0a293d2a2d8a59b361bb49e331cb19e6719'),
(523, 'property_black_money', 0, '5eced0a293d2a2d8a59b361bb49e331cb19e6719'),
(524, 'bank_savings', 0, '55c8eb28908c997d75f9e7003349b97e22f2f96c'),
(525, 'caution', 0, '55c8eb28908c997d75f9e7003349b97e22f2f96c'),
(526, 'property_black_money', 0, '55c8eb28908c997d75f9e7003349b97e22f2f96c');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'Property', 0),
('society_ambulance', 'EMS', 1),
('society_cardealer', 'Cardealer', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `sender` varchar(60) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car_parking`
--

CREATE TABLE `car_parking` (
  `id` int(10) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `plate` varchar(255) NOT NULL,
  `data` longtext DEFAULT NULL,
  `time` bigint(20) NOT NULL,
  `parking` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Property', 0),
('society_ambulance', 'EMS', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `datastores`
--

CREATE TABLE `datastores` (
  `name` varchar(255) NOT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_police', NULL, '{}'),
(2, 'society_ambulance', NULL, '{}'),
(3, 'society_mechanic', NULL, '{}'),
(4, 'society_taxi', NULL, '{}'),
(5, 'property', 'char1:9413027c5cbc3adc47537bc033b3dac46a1d0937', '{\"dressing\":[{\"skin\":{\"lip_thickness\":0,\"nose_2\":0,\"age_1\":0,\"arms_2\":0,\"eyebrows_3\":0,\"bodyb_3\":-1,\"sun_2\":0,\"eyebrows_4\":0,\"complexion_2\":0,\"bracelets_2\":0,\"lipstick_1\":0,\"chain_2\":0,\"pants_1\":0,\"glasses_2\":0,\"bags_1\":0,\"beard_4\":0,\"tshirt_1\":55,\"chest_1\":0,\"shoes_1\":0,\"cheeks_3\":0,\"lipstick_3\":0,\"chest_2\":0,\"bproof_2\":0,\"cheeks_1\":0,\"cheeks_2\":0,\"watches_1\":-1,\"eye_squint\":0,\"chin_3\":0,\"makeup_3\":0,\"moles_2\":0,\"tshirt_2\":0,\"helmet_2\":0,\"helmet_1\":-1,\"chain_1\":0,\"makeup_2\":0,\"chin_2\":0,\"bodyb_2\":0,\"blemishes_2\":0,\"bodyb_1\":-1,\"face_md_weight\":50,\"chest_3\":0,\"pants_2\":0,\"bproof_1\":0,\"complexion_1\":0,\"moles_1\":0,\"sex\":0,\"age_2\":0,\"arms\":0,\"neck_thickness\":0,\"mask_1\":0,\"hair_2\":0,\"dad\":0,\"lipstick_2\":0,\"nose_3\":0,\"chin_13\":0,\"ears_2\":0,\"lipstick_4\":0,\"eyebrows_2\":0,\"eyebrows_5\":0,\"blemishes_1\":0,\"skin_md_weight\":50,\"ears_1\":-1,\"blush_3\":0,\"chin_1\":0,\"jaw_2\":0,\"bags_2\":0,\"hair_color_2\":0,\"blush_2\":0,\"nose_4\":0,\"makeup_1\":0,\"eyebrows_1\":0,\"decals_2\":0,\"eye_color\":0,\"bodyb_4\":0,\"bracelets_1\":-1,\"nose_6\":0,\"beard_1\":0,\"beard_2\":0,\"nose_1\":0,\"mask_2\":0,\"decals_1\":0,\"torso_1\":0,\"makeup_4\":0,\"chin_4\":0,\"jaw_1\":0,\"nose_5\":0,\"shoes_2\":0,\"beard_3\":0,\"torso_2\":0,\"sun_1\":0,\"blush_1\":0,\"watches_2\":0,\"hair_color_1\":0,\"hair_1\":0,\"mom\":21,\"eyebrows_6\":0,\"glasses_1\":0},\"label\":\"sema rema\"}]}'),
(6, 'user_ears', 'char1:9413027c5cbc3adc47537bc033b3dac46a1d0937', '{}'),
(7, 'user_glasses', 'char1:9413027c5cbc3adc47537bc033b3dac46a1d0937', '{}'),
(8, 'user_helmet', 'char1:9413027c5cbc3adc47537bc033b3dac46a1d0937', '{}'),
(9, 'user_mask', 'char1:9413027c5cbc3adc47537bc033b3dac46a1d0937', '{}'),
(10, 'property', 'char1:a5d426133ae88964bdb7cee17487587b433acfc7', '{}'),
(11, 'user_ears', 'char1:a5d426133ae88964bdb7cee17487587b433acfc7', '{}'),
(12, 'user_glasses', 'char1:a5d426133ae88964bdb7cee17487587b433acfc7', '{}'),
(13, 'user_helmet', 'char1:a5d426133ae88964bdb7cee17487587b433acfc7', '{}'),
(14, 'user_mask', 'char1:a5d426133ae88964bdb7cee17487587b433acfc7', '{}'),
(15, 'property', 'char1:3b562366abf02128cbe9fa9ced6f2fc294def3c3', '{}'),
(16, 'user_ears', 'char1:3b562366abf02128cbe9fa9ced6f2fc294def3c3', '{}'),
(17, 'user_glasses', 'char1:3b562366abf02128cbe9fa9ced6f2fc294def3c3', '{}'),
(18, 'user_helmet', 'char1:3b562366abf02128cbe9fa9ced6f2fc294def3c3', '{}'),
(19, 'user_mask', 'char1:3b562366abf02128cbe9fa9ced6f2fc294def3c3', '{}'),
(20, 'property', 'char1:7b9871e3696d452ae3f7410b0b9bda329aa8acf7', '{}'),
(21, 'user_ears', 'char1:7b9871e3696d452ae3f7410b0b9bda329aa8acf7', '{}'),
(22, 'user_glasses', 'char1:7b9871e3696d452ae3f7410b0b9bda329aa8acf7', '{}'),
(23, 'user_helmet', 'char1:7b9871e3696d452ae3f7410b0b9bda329aa8acf7', '{}'),
(24, 'user_mask', 'char1:7b9871e3696d452ae3f7410b0b9bda329aa8acf7', '{}'),
(25, 'property', 'char1:130bb7eecb2a5ec9e898e1557d7ea532caa1ef0c', '{}'),
(26, 'user_ears', 'char1:130bb7eecb2a5ec9e898e1557d7ea532caa1ef0c', '{}'),
(27, 'user_glasses', 'char1:130bb7eecb2a5ec9e898e1557d7ea532caa1ef0c', '{}'),
(28, 'user_mask', 'char1:130bb7eecb2a5ec9e898e1557d7ea532caa1ef0c', '{}'),
(29, 'user_helmet', 'char1:130bb7eecb2a5ec9e898e1557d7ea532caa1ef0c', '{}'),
(30, 'property', 'char1:b70f5332d21a95102cbfa1ebd511ef99bb93ec4e', '{}'),
(31, 'user_ears', 'char1:b70f5332d21a95102cbfa1ebd511ef99bb93ec4e', '{}'),
(32, 'user_glasses', 'char1:b70f5332d21a95102cbfa1ebd511ef99bb93ec4e', '{}'),
(33, 'user_helmet', 'char1:b70f5332d21a95102cbfa1ebd511ef99bb93ec4e', '{}'),
(34, 'user_mask', 'char1:b70f5332d21a95102cbfa1ebd511ef99bb93ec4e', '{}'),
(35, 'property', 'char1:c817abb2ae907fabdbe44dbec221724a230c1ee9', '{}'),
(36, 'user_ears', 'char1:c817abb2ae907fabdbe44dbec221724a230c1ee9', '{}'),
(37, 'user_glasses', 'char1:c817abb2ae907fabdbe44dbec221724a230c1ee9', '{}'),
(38, 'user_mask', 'char1:c817abb2ae907fabdbe44dbec221724a230c1ee9', '{}'),
(39, 'user_helmet', 'char1:c817abb2ae907fabdbe44dbec221724a230c1ee9', '{}'),
(40, 'property', 'char1:7c5719ff4512d77d0ea1a08c78b1cb059d12a3ef', '{}'),
(41, 'user_ears', 'char1:7c5719ff4512d77d0ea1a08c78b1cb059d12a3ef', '{}'),
(42, 'user_glasses', 'char1:7c5719ff4512d77d0ea1a08c78b1cb059d12a3ef', '{}'),
(43, 'user_helmet', 'char1:7c5719ff4512d77d0ea1a08c78b1cb059d12a3ef', '{}'),
(44, 'user_mask', 'char1:7c5719ff4512d77d0ea1a08c78b1cb059d12a3ef', '{}'),
(45, 'property', 'char1:b4b701e43f68839b8a7c8f54a638d5742f3a5e18', '{}'),
(46, 'user_ears', 'char1:b4b701e43f68839b8a7c8f54a638d5742f3a5e18', '{}'),
(47, 'user_glasses', 'char1:b4b701e43f68839b8a7c8f54a638d5742f3a5e18', '{}'),
(48, 'user_helmet', 'char1:b4b701e43f68839b8a7c8f54a638d5742f3a5e18', '{}'),
(49, 'user_mask', 'char1:b4b701e43f68839b8a7c8f54a638d5742f3a5e18', '{}'),
(50, 'property', 'char1:fb42626fff840170cf4cf967a5672061ab8d6e68', '{}'),
(51, 'user_helmet', 'char1:fb42626fff840170cf4cf967a5672061ab8d6e68', '{}'),
(52, 'user_glasses', 'char1:fb42626fff840170cf4cf967a5672061ab8d6e68', '{}'),
(53, 'user_ears', 'char1:fb42626fff840170cf4cf967a5672061ab8d6e68', '{}'),
(54, 'user_mask', 'char1:fb42626fff840170cf4cf967a5672061ab8d6e68', '{}'),
(55, 'property', 'char1:9dd4606ba1ad9a477ae174f80da2e3bb72794cb6', '{}'),
(56, 'user_ears', 'char1:9dd4606ba1ad9a477ae174f80da2e3bb72794cb6', '{}'),
(57, 'user_glasses', 'char1:9dd4606ba1ad9a477ae174f80da2e3bb72794cb6', '{}'),
(58, 'user_mask', 'char1:9dd4606ba1ad9a477ae174f80da2e3bb72794cb6', '{}'),
(59, 'user_helmet', 'char1:9dd4606ba1ad9a477ae174f80da2e3bb72794cb6', '{}'),
(60, 'property', 'char1:6a015cf18978eda6728f48f7398514c0a2069843', '{}'),
(61, 'user_ears', 'char1:6a015cf18978eda6728f48f7398514c0a2069843', '{}'),
(62, 'user_glasses', 'char1:6a015cf18978eda6728f48f7398514c0a2069843', '{}'),
(63, 'user_mask', 'char1:6a015cf18978eda6728f48f7398514c0a2069843', '{}'),
(64, 'user_helmet', 'char1:6a015cf18978eda6728f48f7398514c0a2069843', '{}'),
(65, 'property', 'char1:d68ea116085b9520cb16dcc21130e681f37eed89', '{}'),
(66, 'user_ears', 'char1:d68ea116085b9520cb16dcc21130e681f37eed89', '{}'),
(67, 'user_glasses', 'char1:d68ea116085b9520cb16dcc21130e681f37eed89', '{}'),
(68, 'user_helmet', 'char1:d68ea116085b9520cb16dcc21130e681f37eed89', '{}'),
(69, 'user_mask', 'char1:d68ea116085b9520cb16dcc21130e681f37eed89', '{}'),
(70, 'property', 'char1:7ef1e287ae1a64dd457ef34795757f1e30732ab3', '{}'),
(71, 'user_ears', 'char1:7ef1e287ae1a64dd457ef34795757f1e30732ab3', '{}'),
(72, 'user_glasses', 'char1:7ef1e287ae1a64dd457ef34795757f1e30732ab3', '{}'),
(73, 'user_helmet', 'char1:7ef1e287ae1a64dd457ef34795757f1e30732ab3', '{}'),
(74, 'user_mask', 'char1:7ef1e287ae1a64dd457ef34795757f1e30732ab3', '{}'),
(75, 'property', 'char1:d073a019cb67f88dc1d54ee576ac8261a4db584c', '{}'),
(76, 'user_ears', 'char1:d073a019cb67f88dc1d54ee576ac8261a4db584c', '{}'),
(77, 'user_glasses', 'char1:d073a019cb67f88dc1d54ee576ac8261a4db584c', '{}'),
(78, 'user_helmet', 'char1:d073a019cb67f88dc1d54ee576ac8261a4db584c', '{}'),
(79, 'user_mask', 'char1:d073a019cb67f88dc1d54ee576ac8261a4db584c', '{}'),
(80, 'property', 'char1:a06541dd53c724605aa7cd96364175743304a676', '{}'),
(81, 'user_mask', 'char1:a06541dd53c724605aa7cd96364175743304a676', '{}'),
(82, 'user_ears', 'char1:a06541dd53c724605aa7cd96364175743304a676', '{}'),
(83, 'user_glasses', 'char1:a06541dd53c724605aa7cd96364175743304a676', '{}'),
(84, 'user_helmet', 'char1:a06541dd53c724605aa7cd96364175743304a676', '{}'),
(85, 'property', 'char1:ca55db6935e81c32166773a1e0d2ac0a79adf81b', '{}'),
(86, 'user_ears', 'char1:ca55db6935e81c32166773a1e0d2ac0a79adf81b', '{}'),
(87, 'user_glasses', 'char1:ca55db6935e81c32166773a1e0d2ac0a79adf81b', '{}'),
(88, 'user_helmet', 'char1:ca55db6935e81c32166773a1e0d2ac0a79adf81b', '{}'),
(89, 'user_mask', 'char1:ca55db6935e81c32166773a1e0d2ac0a79adf81b', '{}'),
(90, 'property', 'char1:d1c5d93e7edd84c428f5f100d8675ef80a062a1b', '{}'),
(91, 'user_mask', 'char1:d1c5d93e7edd84c428f5f100d8675ef80a062a1b', '{}'),
(92, 'user_ears', 'char1:d1c5d93e7edd84c428f5f100d8675ef80a062a1b', '{}'),
(93, 'user_glasses', 'char1:d1c5d93e7edd84c428f5f100d8675ef80a062a1b', '{}'),
(94, 'user_helmet', 'char1:d1c5d93e7edd84c428f5f100d8675ef80a062a1b', '{}'),
(95, 'property', 'char1:68b4893a2dc3781db88d6a0c8da9103b79149967', '{}'),
(96, 'user_ears', 'char1:68b4893a2dc3781db88d6a0c8da9103b79149967', '{}'),
(97, 'user_glasses', 'char1:68b4893a2dc3781db88d6a0c8da9103b79149967', '{}'),
(98, 'user_helmet', 'char1:68b4893a2dc3781db88d6a0c8da9103b79149967', '{}'),
(99, 'user_mask', 'char1:68b4893a2dc3781db88d6a0c8da9103b79149967', '{}'),
(100, 'property', 'char1:8c6f25469d600b8f6a0cce5585dbb95754cc91e1', '{}'),
(101, 'user_ears', 'char1:8c6f25469d600b8f6a0cce5585dbb95754cc91e1', '{}'),
(102, 'user_glasses', 'char1:8c6f25469d600b8f6a0cce5585dbb95754cc91e1', '{}'),
(103, 'user_helmet', 'char1:8c6f25469d600b8f6a0cce5585dbb95754cc91e1', '{}'),
(104, 'user_mask', 'char1:8c6f25469d600b8f6a0cce5585dbb95754cc91e1', '{}'),
(105, 'property', 'char1:baad492ec405ba622036da6ffd17135346550096', '{}'),
(106, 'user_ears', 'char1:baad492ec405ba622036da6ffd17135346550096', '{}'),
(107, 'user_glasses', 'char1:baad492ec405ba622036da6ffd17135346550096', '{}'),
(108, 'user_helmet', 'char1:baad492ec405ba622036da6ffd17135346550096', '{}'),
(109, 'user_mask', 'char1:baad492ec405ba622036da6ffd17135346550096', '{}'),
(110, 'property', 'char1:f490b5d16f416984871dc96230dbab0a9f5dec60', '{}'),
(111, 'user_ears', 'char1:f490b5d16f416984871dc96230dbab0a9f5dec60', '{}'),
(112, 'user_glasses', 'char1:f490b5d16f416984871dc96230dbab0a9f5dec60', '{}'),
(113, 'user_helmet', 'char1:f490b5d16f416984871dc96230dbab0a9f5dec60', '{}'),
(114, 'user_mask', 'char1:f490b5d16f416984871dc96230dbab0a9f5dec60', '{}'),
(115, 'property', 'char1:c859d83e5b52e9d8ee3ad2dd47fcee4a75370413', '{}'),
(116, 'user_ears', 'char1:c859d83e5b52e9d8ee3ad2dd47fcee4a75370413', '{}'),
(117, 'user_glasses', 'char1:c859d83e5b52e9d8ee3ad2dd47fcee4a75370413', '{}'),
(118, 'user_helmet', 'char1:c859d83e5b52e9d8ee3ad2dd47fcee4a75370413', '{}'),
(119, 'user_mask', 'char1:c859d83e5b52e9d8ee3ad2dd47fcee4a75370413', '{}'),
(120, 'property', 'char1:c38d91b02eee05447fb5754fd154c0ac9d9ded6b', '{}'),
(121, 'user_ears', 'char1:c38d91b02eee05447fb5754fd154c0ac9d9ded6b', '{}'),
(122, 'user_glasses', 'char1:c38d91b02eee05447fb5754fd154c0ac9d9ded6b', '{}'),
(123, 'user_helmet', 'char1:c38d91b02eee05447fb5754fd154c0ac9d9ded6b', '{}'),
(124, 'user_mask', 'char1:c38d91b02eee05447fb5754fd154c0ac9d9ded6b', '{}'),
(125, 'property', 'char1:731f593a141601cb0b0f3fdea45416804b834557', '{}'),
(126, 'user_ears', 'char1:731f593a141601cb0b0f3fdea45416804b834557', '{}'),
(127, 'user_glasses', 'char1:731f593a141601cb0b0f3fdea45416804b834557', '{}'),
(128, 'user_mask', 'char1:731f593a141601cb0b0f3fdea45416804b834557', '{}'),
(129, 'user_helmet', 'char1:731f593a141601cb0b0f3fdea45416804b834557', '{}'),
(130, 'property', 'char1:c271a7cf4a1c65048402a083b65fd7e3cb2d7787', '{}'),
(131, 'user_ears', 'char1:c271a7cf4a1c65048402a083b65fd7e3cb2d7787', '{}'),
(132, 'user_glasses', 'char1:c271a7cf4a1c65048402a083b65fd7e3cb2d7787', '{}'),
(133, 'user_helmet', 'char1:c271a7cf4a1c65048402a083b65fd7e3cb2d7787', '{}'),
(134, 'user_mask', 'char1:c271a7cf4a1c65048402a083b65fd7e3cb2d7787', '{}'),
(135, 'property', 'char1:7f6dde25d62cd241359f2ff463f1a4dd88524dd0', '{}'),
(136, 'user_ears', 'char1:7f6dde25d62cd241359f2ff463f1a4dd88524dd0', '{}'),
(137, 'user_glasses', 'char1:7f6dde25d62cd241359f2ff463f1a4dd88524dd0', '{}'),
(138, 'user_helmet', 'char1:7f6dde25d62cd241359f2ff463f1a4dd88524dd0', '{}'),
(139, 'user_mask', 'char1:7f6dde25d62cd241359f2ff463f1a4dd88524dd0', '{}'),
(140, 'property', 'char1:4343c0a396a7fbf23b44c3ef58c5c307b2d5efd0', '{}'),
(141, 'user_ears', 'char1:4343c0a396a7fbf23b44c3ef58c5c307b2d5efd0', '{}'),
(142, 'user_glasses', 'char1:4343c0a396a7fbf23b44c3ef58c5c307b2d5efd0', '{}'),
(143, 'user_helmet', 'char1:4343c0a396a7fbf23b44c3ef58c5c307b2d5efd0', '{}'),
(144, 'user_mask', 'char1:4343c0a396a7fbf23b44c3ef58c5c307b2d5efd0', '{}'),
(145, 'property', 'char1:c6f4e89e12a0eef2fe292ac28ac290d48ec281de', '{}'),
(146, 'user_ears', 'char1:c6f4e89e12a0eef2fe292ac28ac290d48ec281de', '{}'),
(147, 'user_helmet', 'char1:c6f4e89e12a0eef2fe292ac28ac290d48ec281de', '{}'),
(148, 'user_glasses', 'char1:c6f4e89e12a0eef2fe292ac28ac290d48ec281de', '{}'),
(149, 'user_mask', 'char1:c6f4e89e12a0eef2fe292ac28ac290d48ec281de', '{}'),
(150, 'property', 'char1:27ca92e6e804bd4de4d2451c46291c0a01c37085', '{}'),
(151, 'user_ears', 'char1:27ca92e6e804bd4de4d2451c46291c0a01c37085', '{}'),
(152, 'user_glasses', 'char1:27ca92e6e804bd4de4d2451c46291c0a01c37085', '{}'),
(153, 'user_helmet', 'char1:27ca92e6e804bd4de4d2451c46291c0a01c37085', '{}'),
(154, 'user_mask', 'char1:27ca92e6e804bd4de4d2451c46291c0a01c37085', '{}'),
(155, 'property', 'char1:2acde40ae15f3f6a5d4e5aba813ae2d7241ac786', '{}'),
(156, 'user_ears', 'char1:2acde40ae15f3f6a5d4e5aba813ae2d7241ac786', '{}'),
(157, 'user_glasses', 'char1:2acde40ae15f3f6a5d4e5aba813ae2d7241ac786', '{}'),
(158, 'user_helmet', 'char1:2acde40ae15f3f6a5d4e5aba813ae2d7241ac786', '{}'),
(159, 'user_mask', 'char1:2acde40ae15f3f6a5d4e5aba813ae2d7241ac786', '{}'),
(160, 'property', 'char1:c5d03420f5eb9bf352afb61ac54d83d4998194c9', '{}'),
(161, 'user_ears', 'char1:c5d03420f5eb9bf352afb61ac54d83d4998194c9', '{}'),
(162, 'user_glasses', 'char1:c5d03420f5eb9bf352afb61ac54d83d4998194c9', '{}'),
(163, 'user_helmet', 'char1:c5d03420f5eb9bf352afb61ac54d83d4998194c9', '{}'),
(164, 'user_mask', 'char1:c5d03420f5eb9bf352afb61ac54d83d4998194c9', '{}'),
(165, 'property', 'char1:a976ed3ebf0b24285879712e1e6aa1aa063f5420', '{}'),
(166, 'user_ears', 'char1:a976ed3ebf0b24285879712e1e6aa1aa063f5420', '{}'),
(167, 'user_glasses', 'char1:a976ed3ebf0b24285879712e1e6aa1aa063f5420', '{}'),
(168, 'user_helmet', 'char1:a976ed3ebf0b24285879712e1e6aa1aa063f5420', '{}'),
(169, 'user_mask', 'char1:a976ed3ebf0b24285879712e1e6aa1aa063f5420', '{}'),
(170, 'property', 'char1:e9c6d4d7d004327bc7c3522c030b8542d2d83223', '{}'),
(171, 'user_ears', 'char1:e9c6d4d7d004327bc7c3522c030b8542d2d83223', '{}'),
(172, 'user_glasses', 'char1:e9c6d4d7d004327bc7c3522c030b8542d2d83223', '{}'),
(173, 'user_helmet', 'char1:e9c6d4d7d004327bc7c3522c030b8542d2d83223', '{}'),
(174, 'user_mask', 'char1:e9c6d4d7d004327bc7c3522c030b8542d2d83223', '{}'),
(175, 'property', 'char1:e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4', '{}'),
(176, 'user_ears', 'char1:e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4', '{}'),
(177, 'user_glasses', 'char1:e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4', '{}'),
(178, 'user_helmet', 'char1:e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4', '{}'),
(179, 'user_mask', 'char1:e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4', '{}'),
(180, 'property', 'char1:46fabf57fd3cb4bfb927a04134be22ca2c59feab', '{}'),
(181, 'user_ears', 'char1:46fabf57fd3cb4bfb927a04134be22ca2c59feab', '{}'),
(182, 'user_glasses', 'char1:46fabf57fd3cb4bfb927a04134be22ca2c59feab', '{}'),
(183, 'user_helmet', 'char1:46fabf57fd3cb4bfb927a04134be22ca2c59feab', '{}'),
(184, 'user_mask', 'char1:46fabf57fd3cb4bfb927a04134be22ca2c59feab', '{}'),
(185, 'property', 'char1:30c9314a2f2bcea1f8fc50ddd7097b3f8af24f61', '{}'),
(186, 'user_ears', 'char1:30c9314a2f2bcea1f8fc50ddd7097b3f8af24f61', '{}'),
(187, 'user_glasses', 'char1:30c9314a2f2bcea1f8fc50ddd7097b3f8af24f61', '{}'),
(188, 'user_helmet', 'char1:30c9314a2f2bcea1f8fc50ddd7097b3f8af24f61', '{}'),
(189, 'user_mask', 'char1:30c9314a2f2bcea1f8fc50ddd7097b3f8af24f61', '{}'),
(190, 'property', 'char1:ec686432ac637aaaa422371014a1e08026133b3c', '{}'),
(191, 'user_ears', 'char1:ec686432ac637aaaa422371014a1e08026133b3c', '{}'),
(192, 'user_glasses', 'char1:ec686432ac637aaaa422371014a1e08026133b3c', '{}'),
(193, 'user_helmet', 'char1:ec686432ac637aaaa422371014a1e08026133b3c', '{}'),
(194, 'user_mask', 'char1:ec686432ac637aaaa422371014a1e08026133b3c', '{}'),
(195, 'property', 'char1:11cf4811816ea4b9a9b9be5982974a1ceacacc55', '{}'),
(196, 'user_ears', 'char1:11cf4811816ea4b9a9b9be5982974a1ceacacc55', '{}'),
(197, 'user_glasses', 'char1:11cf4811816ea4b9a9b9be5982974a1ceacacc55', '{}'),
(198, 'user_helmet', 'char1:11cf4811816ea4b9a9b9be5982974a1ceacacc55', '{}'),
(199, 'user_mask', 'char1:11cf4811816ea4b9a9b9be5982974a1ceacacc55', '{}'),
(200, 'property', 'char1:85ce8871d9979e8cb94c76f369557a2952a931a6', '{}'),
(201, 'user_ears', 'char1:85ce8871d9979e8cb94c76f369557a2952a931a6', '{}'),
(202, 'user_glasses', 'char1:85ce8871d9979e8cb94c76f369557a2952a931a6', '{}'),
(203, 'user_helmet', 'char1:85ce8871d9979e8cb94c76f369557a2952a931a6', '{}'),
(204, 'user_mask', 'char1:85ce8871d9979e8cb94c76f369557a2952a931a6', '{}'),
(205, 'property', 'char1:aa24fbd318a2f3c4ee45cbff944911c4361221e0', '{}'),
(206, 'user_ears', 'char1:aa24fbd318a2f3c4ee45cbff944911c4361221e0', '{}'),
(207, 'user_glasses', 'char1:aa24fbd318a2f3c4ee45cbff944911c4361221e0', '{}'),
(208, 'user_helmet', 'char1:aa24fbd318a2f3c4ee45cbff944911c4361221e0', '{}'),
(209, 'user_mask', 'char1:aa24fbd318a2f3c4ee45cbff944911c4361221e0', '{}'),
(210, 'property', 'char1:9df7ecd455c8ec9885a7b110a90e161744dabdbd', '{}'),
(211, 'user_ears', 'char1:9df7ecd455c8ec9885a7b110a90e161744dabdbd', '{}'),
(212, 'user_glasses', 'char1:9df7ecd455c8ec9885a7b110a90e161744dabdbd', '{}'),
(213, 'user_helmet', 'char1:9df7ecd455c8ec9885a7b110a90e161744dabdbd', '{}'),
(214, 'user_mask', 'char1:9df7ecd455c8ec9885a7b110a90e161744dabdbd', '{}'),
(215, 'property', 'char1:57e1136f1845df6b2b4e2514bd7ab02fbe3a0bd5', '{}'),
(216, 'user_ears', 'char1:57e1136f1845df6b2b4e2514bd7ab02fbe3a0bd5', '{}'),
(217, 'user_glasses', 'char1:57e1136f1845df6b2b4e2514bd7ab02fbe3a0bd5', '{}'),
(218, 'user_helmet', 'char1:57e1136f1845df6b2b4e2514bd7ab02fbe3a0bd5', '{}'),
(219, 'user_mask', 'char1:57e1136f1845df6b2b4e2514bd7ab02fbe3a0bd5', '{}'),
(220, 'property', 'char1:d5c2e10e2de1b6ff080cac442eabe55fffcacf4e', '{}'),
(221, 'user_helmet', 'char1:d5c2e10e2de1b6ff080cac442eabe55fffcacf4e', '{}'),
(222, 'user_mask', 'char1:d5c2e10e2de1b6ff080cac442eabe55fffcacf4e', '{}'),
(223, 'user_ears', 'char1:d5c2e10e2de1b6ff080cac442eabe55fffcacf4e', '{}'),
(224, 'user_glasses', 'char1:d5c2e10e2de1b6ff080cac442eabe55fffcacf4e', '{}'),
(225, 'property', 'char1:3c55d8c953f8f27bbf776ad8bad9cd07c4aa62c1', '{}'),
(226, 'user_ears', 'char1:3c55d8c953f8f27bbf776ad8bad9cd07c4aa62c1', '{}'),
(227, 'user_glasses', 'char1:3c55d8c953f8f27bbf776ad8bad9cd07c4aa62c1', '{}'),
(228, 'user_helmet', 'char1:3c55d8c953f8f27bbf776ad8bad9cd07c4aa62c1', '{}'),
(229, 'user_mask', 'char1:3c55d8c953f8f27bbf776ad8bad9cd07c4aa62c1', '{}'),
(230, 'property', 'char1:ce894a6491086e487df19c9a28575c7fe53e2564', '{}'),
(231, 'user_ears', 'char1:ce894a6491086e487df19c9a28575c7fe53e2564', '{}'),
(232, 'user_helmet', 'char1:ce894a6491086e487df19c9a28575c7fe53e2564', '{}'),
(233, 'user_glasses', 'char1:ce894a6491086e487df19c9a28575c7fe53e2564', '{}'),
(234, 'user_mask', 'char1:ce894a6491086e487df19c9a28575c7fe53e2564', '{}'),
(235, 'property', 'char1:d72e1074bba4b1904de963a78d6b9a0629651670', '{}'),
(236, 'user_ears', 'char1:d72e1074bba4b1904de963a78d6b9a0629651670', '{}'),
(237, 'user_glasses', 'char1:d72e1074bba4b1904de963a78d6b9a0629651670', '{}'),
(238, 'user_helmet', 'char1:d72e1074bba4b1904de963a78d6b9a0629651670', '{}'),
(239, 'user_mask', 'char1:d72e1074bba4b1904de963a78d6b9a0629651670', '{}'),
(240, 'property', 'char1:740635149b504024f0398f6c05522fc554dcb5ec', '{}'),
(241, 'user_ears', 'char1:740635149b504024f0398f6c05522fc554dcb5ec', '{}'),
(242, 'user_helmet', 'char1:740635149b504024f0398f6c05522fc554dcb5ec', '{}'),
(243, 'user_glasses', 'char1:740635149b504024f0398f6c05522fc554dcb5ec', '{}'),
(244, 'user_mask', 'char1:740635149b504024f0398f6c05522fc554dcb5ec', '{}'),
(245, 'property', '9413027c5cbc3adc47537bc033b3dac46a1d0937', '{}'),
(246, 'user_ears', '9413027c5cbc3adc47537bc033b3dac46a1d0937', '{}'),
(247, 'user_glasses', '9413027c5cbc3adc47537bc033b3dac46a1d0937', '{}'),
(248, 'user_helmet', '9413027c5cbc3adc47537bc033b3dac46a1d0937', '{}'),
(249, 'user_mask', '9413027c5cbc3adc47537bc033b3dac46a1d0937', '{}'),
(250, 'property', '60e7f61c12e41dcd4230790d4c36a862a50683e8', '{}'),
(251, 'user_ears', '60e7f61c12e41dcd4230790d4c36a862a50683e8', '{}'),
(252, 'user_glasses', '60e7f61c12e41dcd4230790d4c36a862a50683e8', '{}'),
(253, 'user_helmet', '60e7f61c12e41dcd4230790d4c36a862a50683e8', '{}'),
(254, 'user_mask', '60e7f61c12e41dcd4230790d4c36a862a50683e8', '{}'),
(255, 'property', '8a479b8c0e92ed24b173fbe87bdda1f62f2c9dba', '{}'),
(256, 'user_ears', '8a479b8c0e92ed24b173fbe87bdda1f62f2c9dba', '{}'),
(257, 'user_glasses', '8a479b8c0e92ed24b173fbe87bdda1f62f2c9dba', '{}'),
(258, 'user_helmet', '8a479b8c0e92ed24b173fbe87bdda1f62f2c9dba', '{}'),
(259, 'user_mask', '8a479b8c0e92ed24b173fbe87bdda1f62f2c9dba', '{}'),
(260, 'property', 'a61491ae07585fa1f5ad4bd117b207479ace3696', '{}'),
(261, 'user_ears', 'a61491ae07585fa1f5ad4bd117b207479ace3696', '{}'),
(262, 'user_glasses', 'a61491ae07585fa1f5ad4bd117b207479ace3696', '{}'),
(263, 'user_helmet', 'a61491ae07585fa1f5ad4bd117b207479ace3696', '{}'),
(264, 'user_mask', 'a61491ae07585fa1f5ad4bd117b207479ace3696', '{}'),
(265, 'property', '8de6c811aa10b7ec2f2b23ab9c4d4a154bb9d74e', '{}'),
(266, 'user_ears', '8de6c811aa10b7ec2f2b23ab9c4d4a154bb9d74e', '{}'),
(267, 'user_glasses', '8de6c811aa10b7ec2f2b23ab9c4d4a154bb9d74e', '{}'),
(268, 'user_mask', '8de6c811aa10b7ec2f2b23ab9c4d4a154bb9d74e', '{}'),
(269, 'user_helmet', '8de6c811aa10b7ec2f2b23ab9c4d4a154bb9d74e', '{}'),
(270, 'property', 'ce894a6491086e487df19c9a28575c7fe53e2564', '{}'),
(271, 'user_ears', 'ce894a6491086e487df19c9a28575c7fe53e2564', '{}'),
(272, 'user_helmet', 'ce894a6491086e487df19c9a28575c7fe53e2564', '{}'),
(273, 'user_glasses', 'ce894a6491086e487df19c9a28575c7fe53e2564', '{}'),
(274, 'user_mask', 'ce894a6491086e487df19c9a28575c7fe53e2564', '{}'),
(275, 'property', 'aa24fbd318a2f3c4ee45cbff944911c4361221e0', '{}'),
(276, 'user_ears', 'aa24fbd318a2f3c4ee45cbff944911c4361221e0', '{}'),
(277, 'user_mask', 'aa24fbd318a2f3c4ee45cbff944911c4361221e0', '{}'),
(278, 'user_helmet', 'aa24fbd318a2f3c4ee45cbff944911c4361221e0', '{}'),
(279, 'user_glasses', 'aa24fbd318a2f3c4ee45cbff944911c4361221e0', '{}'),
(280, 'property', 'ab295ffb82dbb6774d9bab950d54389ff4035d25', '{}'),
(281, 'user_ears', 'ab295ffb82dbb6774d9bab950d54389ff4035d25', '{}'),
(282, 'user_helmet', 'ab295ffb82dbb6774d9bab950d54389ff4035d25', '{}'),
(283, 'user_glasses', 'ab295ffb82dbb6774d9bab950d54389ff4035d25', '{}'),
(284, 'user_mask', 'ab295ffb82dbb6774d9bab950d54389ff4035d25', '{}'),
(285, 'property', '1a820a95f8703b0ae9569765dd02be48f72bfd9e', '{}'),
(286, 'user_glasses', '1a820a95f8703b0ae9569765dd02be48f72bfd9e', '{}'),
(287, 'user_ears', '1a820a95f8703b0ae9569765dd02be48f72bfd9e', '{}'),
(288, 'user_helmet', '1a820a95f8703b0ae9569765dd02be48f72bfd9e', '{}'),
(289, 'user_mask', '1a820a95f8703b0ae9569765dd02be48f72bfd9e', '{}'),
(290, 'property', '3c4f01d92bf183b4003f6e62552fa48aeea2988b', '{}'),
(291, 'user_ears', '3c4f01d92bf183b4003f6e62552fa48aeea2988b', '{}'),
(292, 'user_glasses', '3c4f01d92bf183b4003f6e62552fa48aeea2988b', '{}'),
(293, 'user_helmet', '3c4f01d92bf183b4003f6e62552fa48aeea2988b', '{}'),
(294, 'user_mask', '3c4f01d92bf183b4003f6e62552fa48aeea2988b', '{}'),
(295, 'property', '539da34fec223d723fb1a1d888c8d0ad850ccd43', '{}'),
(296, 'user_ears', '539da34fec223d723fb1a1d888c8d0ad850ccd43', '{}'),
(297, 'user_glasses', '539da34fec223d723fb1a1d888c8d0ad850ccd43', '{}'),
(298, 'user_helmet', '539da34fec223d723fb1a1d888c8d0ad850ccd43', '{}'),
(299, 'user_mask', '539da34fec223d723fb1a1d888c8d0ad850ccd43', '{}'),
(300, 'property', 'f8217067e95de9e11c6b96cf3066087dca6caee4', '{}'),
(301, 'user_ears', 'f8217067e95de9e11c6b96cf3066087dca6caee4', '{}'),
(302, 'user_glasses', 'f8217067e95de9e11c6b96cf3066087dca6caee4', '{}'),
(303, 'user_helmet', 'f8217067e95de9e11c6b96cf3066087dca6caee4', '{}'),
(304, 'user_mask', 'f8217067e95de9e11c6b96cf3066087dca6caee4', '{}'),
(305, 'property', '34b17620248cf688eaafced1b4f89da770471352', '{}'),
(306, 'user_ears', '34b17620248cf688eaafced1b4f89da770471352', '{}'),
(307, 'user_glasses', '34b17620248cf688eaafced1b4f89da770471352', '{}'),
(308, 'user_helmet', '34b17620248cf688eaafced1b4f89da770471352', '{}'),
(309, 'user_mask', '34b17620248cf688eaafced1b4f89da770471352', '{}'),
(310, 'property', 'a0810ce592c53b1f3d3244f1c178f668bff4796a', '{}'),
(311, 'user_ears', 'a0810ce592c53b1f3d3244f1c178f668bff4796a', '{}'),
(312, 'user_glasses', 'a0810ce592c53b1f3d3244f1c178f668bff4796a', '{}'),
(313, 'user_helmet', 'a0810ce592c53b1f3d3244f1c178f668bff4796a', '{}'),
(314, 'user_mask', 'a0810ce592c53b1f3d3244f1c178f668bff4796a', '{}'),
(315, 'user_glasses', 'dacb18f377bd7d22f66cf6934d780f345c875292', '{}'),
(316, 'property', 'dacb18f377bd7d22f66cf6934d780f345c875292', '{}'),
(317, 'user_helmet', 'dacb18f377bd7d22f66cf6934d780f345c875292', '{}'),
(318, 'user_mask', 'dacb18f377bd7d22f66cf6934d780f345c875292', '{}'),
(319, 'user_ears', 'dacb18f377bd7d22f66cf6934d780f345c875292', '{}'),
(320, 'property', '232a2b1a956fe857a308a8dadc5ef04baa861c48', '{}'),
(321, 'user_ears', '232a2b1a956fe857a308a8dadc5ef04baa861c48', '{}'),
(322, 'user_glasses', '232a2b1a956fe857a308a8dadc5ef04baa861c48', '{}'),
(323, 'user_helmet', '232a2b1a956fe857a308a8dadc5ef04baa861c48', '{}'),
(324, 'user_mask', '232a2b1a956fe857a308a8dadc5ef04baa861c48', '{}'),
(325, 'user_mask', 'c6f4e89e12a0eef2fe292ac28ac290d48ec281de', '{}'),
(326, 'user_helmet', 'c6f4e89e12a0eef2fe292ac28ac290d48ec281de', '{}'),
(327, 'property', 'c6f4e89e12a0eef2fe292ac28ac290d48ec281de', '{}'),
(328, 'user_glasses', 'c6f4e89e12a0eef2fe292ac28ac290d48ec281de', '{}'),
(329, 'user_ears', 'c6f4e89e12a0eef2fe292ac28ac290d48ec281de', '{}'),
(330, 'property', 'c437f8ddd69c88c6fea943e86bef903a5e5bdc67', '{}'),
(331, 'user_glasses', 'c437f8ddd69c88c6fea943e86bef903a5e5bdc67', '{}'),
(332, 'user_mask', 'c437f8ddd69c88c6fea943e86bef903a5e5bdc67', '{}'),
(333, 'user_helmet', 'c437f8ddd69c88c6fea943e86bef903a5e5bdc67', '{}'),
(334, 'user_ears', 'c437f8ddd69c88c6fea943e86bef903a5e5bdc67', '{}'),
(335, 'property', '089e7d45c6adc3d7f64d3ec91c7929b218e08c31', '{}'),
(336, 'user_ears', '089e7d45c6adc3d7f64d3ec91c7929b218e08c31', '{}'),
(337, 'user_glasses', '089e7d45c6adc3d7f64d3ec91c7929b218e08c31', '{}'),
(338, 'user_helmet', '089e7d45c6adc3d7f64d3ec91c7929b218e08c31', '{}'),
(339, 'user_mask', '089e7d45c6adc3d7f64d3ec91c7929b218e08c31', '{}'),
(340, 'property', '299e148f682e96c6e7703baf5dda7ed79412b8ba', '{}'),
(341, 'user_ears', '299e148f682e96c6e7703baf5dda7ed79412b8ba', '{}'),
(342, 'user_glasses', '299e148f682e96c6e7703baf5dda7ed79412b8ba', '{}'),
(343, 'user_helmet', '299e148f682e96c6e7703baf5dda7ed79412b8ba', '{}'),
(344, 'user_mask', '299e148f682e96c6e7703baf5dda7ed79412b8ba', '{}'),
(345, 'property', '8416c251e8f67dd018426503f5de61c4c1868d73', '{}'),
(346, 'user_ears', '8416c251e8f67dd018426503f5de61c4c1868d73', '{}'),
(347, 'user_glasses', '8416c251e8f67dd018426503f5de61c4c1868d73', '{}'),
(348, 'user_helmet', '8416c251e8f67dd018426503f5de61c4c1868d73', '{}'),
(349, 'user_mask', '8416c251e8f67dd018426503f5de61c4c1868d73', '{}'),
(350, 'property', '99ca2d4307397eb9376893e4abd8177484960021', '{}'),
(351, 'user_ears', '99ca2d4307397eb9376893e4abd8177484960021', '{}'),
(352, 'user_glasses', '99ca2d4307397eb9376893e4abd8177484960021', '{}'),
(353, 'user_helmet', '99ca2d4307397eb9376893e4abd8177484960021', '{}'),
(354, 'user_mask', '99ca2d4307397eb9376893e4abd8177484960021', '{}'),
(355, 'property', 'ac1b6b9662467e4bf7481e6803e8ff5cc45b611e', '{}'),
(356, 'user_ears', 'ac1b6b9662467e4bf7481e6803e8ff5cc45b611e', '{}'),
(357, 'user_glasses', 'ac1b6b9662467e4bf7481e6803e8ff5cc45b611e', '{}'),
(358, 'user_helmet', 'ac1b6b9662467e4bf7481e6803e8ff5cc45b611e', '{}'),
(359, 'user_mask', 'ac1b6b9662467e4bf7481e6803e8ff5cc45b611e', '{}'),
(360, 'property', 'fc609d8d47441141ca22890817271ffe3167b4c7', '{}'),
(361, 'user_ears', 'fc609d8d47441141ca22890817271ffe3167b4c7', '{}'),
(362, 'user_glasses', 'fc609d8d47441141ca22890817271ffe3167b4c7', '{}'),
(363, 'user_helmet', 'fc609d8d47441141ca22890817271ffe3167b4c7', '{}'),
(364, 'user_mask', 'fc609d8d47441141ca22890817271ffe3167b4c7', '{}'),
(365, 'property', 'c456115be1ef55f3b4d16eeac0dc61b2d400a53c', '{}'),
(366, 'user_ears', 'c456115be1ef55f3b4d16eeac0dc61b2d400a53c', '{}'),
(367, 'user_glasses', 'c456115be1ef55f3b4d16eeac0dc61b2d400a53c', '{}'),
(368, 'user_helmet', 'c456115be1ef55f3b4d16eeac0dc61b2d400a53c', '{}'),
(369, 'user_mask', 'c456115be1ef55f3b4d16eeac0dc61b2d400a53c', '{}'),
(370, 'property', 'd948cba614d5490e6f27d3849b613d0c2a87fabe', '{}'),
(371, 'user_ears', 'd948cba614d5490e6f27d3849b613d0c2a87fabe', '{}'),
(372, 'user_helmet', 'd948cba614d5490e6f27d3849b613d0c2a87fabe', '{}'),
(373, 'user_glasses', 'd948cba614d5490e6f27d3849b613d0c2a87fabe', '{}'),
(374, 'user_mask', 'd948cba614d5490e6f27d3849b613d0c2a87fabe', '{}'),
(375, 'property', '4389442038c53722ac288f1b5d2a3834bef50dca', '{}'),
(376, 'user_ears', '4389442038c53722ac288f1b5d2a3834bef50dca', '{}'),
(377, 'user_glasses', '4389442038c53722ac288f1b5d2a3834bef50dca', '{}'),
(378, 'user_helmet', '4389442038c53722ac288f1b5d2a3834bef50dca', '{}'),
(379, 'user_mask', '4389442038c53722ac288f1b5d2a3834bef50dca', '{}'),
(380, 'property', 'f7701b63b33025acfa02e6d97ad246a8032aa4c8', '{}'),
(381, 'user_ears', 'f7701b63b33025acfa02e6d97ad246a8032aa4c8', '{}'),
(382, 'user_glasses', 'f7701b63b33025acfa02e6d97ad246a8032aa4c8', '{}'),
(383, 'user_helmet', 'f7701b63b33025acfa02e6d97ad246a8032aa4c8', '{}'),
(384, 'user_mask', 'f7701b63b33025acfa02e6d97ad246a8032aa4c8', '{}'),
(385, 'property', 'abf397e909b79abc8e6b73994789f5872a158042', '{}'),
(386, 'user_ears', 'abf397e909b79abc8e6b73994789f5872a158042', '{}'),
(387, 'user_glasses', 'abf397e909b79abc8e6b73994789f5872a158042', '{}'),
(388, 'user_mask', 'abf397e909b79abc8e6b73994789f5872a158042', '{}'),
(389, 'user_helmet', 'abf397e909b79abc8e6b73994789f5872a158042', '{}'),
(390, 'property', '92658cf4333f9987846e03eb8757bbe91d128790', '{}'),
(391, 'user_ears', '92658cf4333f9987846e03eb8757bbe91d128790', '{}'),
(392, 'user_glasses', '92658cf4333f9987846e03eb8757bbe91d128790', '{}'),
(393, 'user_helmet', '92658cf4333f9987846e03eb8757bbe91d128790', '{}'),
(394, 'user_mask', '92658cf4333f9987846e03eb8757bbe91d128790', '{}'),
(395, 'property', '8ae7e1af79b3d8e72196029385499df5745361dd', '{}'),
(396, 'user_ears', '8ae7e1af79b3d8e72196029385499df5745361dd', '{}'),
(397, 'user_glasses', '8ae7e1af79b3d8e72196029385499df5745361dd', '{}'),
(398, 'user_helmet', '8ae7e1af79b3d8e72196029385499df5745361dd', '{}'),
(399, 'user_mask', '8ae7e1af79b3d8e72196029385499df5745361dd', '{}'),
(400, 'property', '863cbabe1d3cd5e0bad48656b949d762032d3640', '{}'),
(401, 'user_ears', '863cbabe1d3cd5e0bad48656b949d762032d3640', '{}'),
(402, 'user_glasses', '863cbabe1d3cd5e0bad48656b949d762032d3640', '{}'),
(403, 'user_helmet', '863cbabe1d3cd5e0bad48656b949d762032d3640', '{}'),
(404, 'user_mask', '863cbabe1d3cd5e0bad48656b949d762032d3640', '{}'),
(405, 'user_ears', 'e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4', '{}'),
(406, 'property', 'e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4', '{}'),
(407, 'user_glasses', 'e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4', '{}'),
(408, 'user_helmet', 'e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4', '{}'),
(409, 'user_mask', 'e1de13e3e6fc3fc3dca82d3e29ca8152c68cb8a4', '{}'),
(410, 'property', 'e9c6d4d7d004327bc7c3522c030b8542d2d83223', '{}'),
(411, 'user_ears', 'e9c6d4d7d004327bc7c3522c030b8542d2d83223', '{}'),
(412, 'user_glasses', 'e9c6d4d7d004327bc7c3522c030b8542d2d83223', '{}'),
(413, 'user_helmet', 'e9c6d4d7d004327bc7c3522c030b8542d2d83223', '{}'),
(414, 'user_mask', 'e9c6d4d7d004327bc7c3522c030b8542d2d83223', '{}'),
(415, 'property', 'eda902d2bb97eb5bddd5c2ec4d4cf6ec5cee50d9', '{}'),
(416, 'user_ears', 'eda902d2bb97eb5bddd5c2ec4d4cf6ec5cee50d9', '{}'),
(417, 'user_glasses', 'eda902d2bb97eb5bddd5c2ec4d4cf6ec5cee50d9', '{}'),
(418, 'user_helmet', 'eda902d2bb97eb5bddd5c2ec4d4cf6ec5cee50d9', '{}'),
(419, 'user_mask', 'eda902d2bb97eb5bddd5c2ec4d4cf6ec5cee50d9', '{}'),
(420, 'property', 'd47df2793834fb6c4d2a7dca22454c169eb316e8', '{}'),
(421, 'user_ears', 'd47df2793834fb6c4d2a7dca22454c169eb316e8', '{}'),
(422, 'user_glasses', 'd47df2793834fb6c4d2a7dca22454c169eb316e8', '{}'),
(423, 'user_helmet', 'd47df2793834fb6c4d2a7dca22454c169eb316e8', '{}'),
(424, 'user_mask', 'd47df2793834fb6c4d2a7dca22454c169eb316e8', '{}'),
(425, 'user_helmet', '9dd4606ba1ad9a477ae174f80da2e3bb72794cb6', '{}'),
(426, 'property', '9dd4606ba1ad9a477ae174f80da2e3bb72794cb6', '{}'),
(427, 'user_mask', '9dd4606ba1ad9a477ae174f80da2e3bb72794cb6', '{}'),
(428, 'user_glasses', '9dd4606ba1ad9a477ae174f80da2e3bb72794cb6', '{}'),
(429, 'user_ears', '9dd4606ba1ad9a477ae174f80da2e3bb72794cb6', '{}'),
(430, 'property', '4347b762f484ce02f3b09d02e33f5f14a19c8fd8', '{}'),
(431, 'user_helmet', '4347b762f484ce02f3b09d02e33f5f14a19c8fd8', '{}'),
(432, 'user_glasses', '4347b762f484ce02f3b09d02e33f5f14a19c8fd8', '{}'),
(433, 'user_mask', '4347b762f484ce02f3b09d02e33f5f14a19c8fd8', '{}'),
(434, 'user_ears', '4347b762f484ce02f3b09d02e33f5f14a19c8fd8', '{}'),
(435, 'property', '00747cf4acddaf6dfead08134c7ca03897f54925', '{}'),
(436, 'user_ears', '00747cf4acddaf6dfead08134c7ca03897f54925', '{}'),
(437, 'user_helmet', '00747cf4acddaf6dfead08134c7ca03897f54925', '{}'),
(438, 'user_glasses', '00747cf4acddaf6dfead08134c7ca03897f54925', '{}'),
(439, 'user_mask', '00747cf4acddaf6dfead08134c7ca03897f54925', '{}'),
(440, 'property', '122adf648e8bc88e27db8e2380dbbc94b2efef91', '{}'),
(441, 'user_ears', '122adf648e8bc88e27db8e2380dbbc94b2efef91', '{}'),
(442, 'user_glasses', '122adf648e8bc88e27db8e2380dbbc94b2efef91', '{}'),
(443, 'user_helmet', '122adf648e8bc88e27db8e2380dbbc94b2efef91', '{}'),
(444, 'user_mask', '122adf648e8bc88e27db8e2380dbbc94b2efef91', '{}'),
(445, 'property', '2fc0a833986471bf80b1465c634827c592a84784', '{}'),
(446, 'user_ears', '2fc0a833986471bf80b1465c634827c592a84784', '{}'),
(447, 'user_glasses', '2fc0a833986471bf80b1465c634827c592a84784', '{}'),
(448, 'user_helmet', '2fc0a833986471bf80b1465c634827c592a84784', '{}'),
(449, 'user_mask', '2fc0a833986471bf80b1465c634827c592a84784', '{}'),
(450, 'property', '54e42157cf2af377b106735bceba2594f6588c5f', '{}'),
(451, 'user_ears', '54e42157cf2af377b106735bceba2594f6588c5f', '{}'),
(452, 'user_glasses', '54e42157cf2af377b106735bceba2594f6588c5f', '{}'),
(453, 'user_helmet', '54e42157cf2af377b106735bceba2594f6588c5f', '{}'),
(454, 'user_mask', '54e42157cf2af377b106735bceba2594f6588c5f', '{}'),
(455, 'property', 'c5cc128dadc475193bbf07bf91dbd7a8f3d2d177', '{}'),
(456, 'user_ears', 'c5cc128dadc475193bbf07bf91dbd7a8f3d2d177', '{}'),
(457, 'user_glasses', 'c5cc128dadc475193bbf07bf91dbd7a8f3d2d177', '{}'),
(458, 'user_helmet', 'c5cc128dadc475193bbf07bf91dbd7a8f3d2d177', '{}'),
(459, 'user_mask', 'c5cc128dadc475193bbf07bf91dbd7a8f3d2d177', '{}'),
(460, 'property', '6cc5f367bc66f1b43ba124d2fb4cea876bb3599b', '{}'),
(461, 'user_ears', '6cc5f367bc66f1b43ba124d2fb4cea876bb3599b', '{}'),
(462, 'user_glasses', '6cc5f367bc66f1b43ba124d2fb4cea876bb3599b', '{}'),
(463, 'user_helmet', '6cc5f367bc66f1b43ba124d2fb4cea876bb3599b', '{}'),
(464, 'user_mask', '6cc5f367bc66f1b43ba124d2fb4cea876bb3599b', '{}'),
(465, 'property', 'fb7691ba94bde18b8ea03d50a8d18c4230c34a9c', '{}'),
(466, 'user_ears', 'fb7691ba94bde18b8ea03d50a8d18c4230c34a9c', '{}'),
(467, 'user_glasses', 'fb7691ba94bde18b8ea03d50a8d18c4230c34a9c', '{}'),
(468, 'user_helmet', 'fb7691ba94bde18b8ea03d50a8d18c4230c34a9c', '{}'),
(469, 'user_mask', 'fb7691ba94bde18b8ea03d50a8d18c4230c34a9c', '{}'),
(470, 'property', '6121d6980e964e478449336c022a989ef0e02cfe', '{}'),
(471, 'user_mask', '6121d6980e964e478449336c022a989ef0e02cfe', '{}'),
(472, 'user_helmet', '6121d6980e964e478449336c022a989ef0e02cfe', '{}'),
(473, 'user_ears', '6121d6980e964e478449336c022a989ef0e02cfe', '{}'),
(474, 'user_glasses', '6121d6980e964e478449336c022a989ef0e02cfe', '{}'),
(475, 'property', '5cf91c7c0cf842e1d51716474601d6f92e9019eb', '{}'),
(476, 'user_ears', '5cf91c7c0cf842e1d51716474601d6f92e9019eb', '{}'),
(477, 'user_mask', '5cf91c7c0cf842e1d51716474601d6f92e9019eb', '{}'),
(478, 'user_glasses', '5cf91c7c0cf842e1d51716474601d6f92e9019eb', '{}'),
(479, 'user_helmet', '5cf91c7c0cf842e1d51716474601d6f92e9019eb', '{}'),
(480, 'property', '2027540b47886d2e7b8f43a4e59eafb80d678c7f', '{}'),
(481, 'user_ears', '2027540b47886d2e7b8f43a4e59eafb80d678c7f', '{}'),
(482, 'user_glasses', '2027540b47886d2e7b8f43a4e59eafb80d678c7f', '{}'),
(483, 'user_helmet', '2027540b47886d2e7b8f43a4e59eafb80d678c7f', '{}'),
(484, 'user_mask', '2027540b47886d2e7b8f43a4e59eafb80d678c7f', '{}'),
(485, 'user_mask', 'fa851e9fe6399643acd2696f16ca2c6569379120', '{}'),
(486, 'user_helmet', 'fa851e9fe6399643acd2696f16ca2c6569379120', '{}'),
(487, 'property', 'fa851e9fe6399643acd2696f16ca2c6569379120', '{}'),
(488, 'user_ears', 'fa851e9fe6399643acd2696f16ca2c6569379120', '{}'),
(489, 'user_glasses', 'fa851e9fe6399643acd2696f16ca2c6569379120', '{}'),
(490, 'property', '3cfb07a6b99a4782c26dacc94514b6d76ac34f11', '{}'),
(491, 'user_ears', '3cfb07a6b99a4782c26dacc94514b6d76ac34f11', '{}'),
(492, 'user_glasses', '3cfb07a6b99a4782c26dacc94514b6d76ac34f11', '{}'),
(493, 'user_helmet', '3cfb07a6b99a4782c26dacc94514b6d76ac34f11', '{}'),
(494, 'user_mask', '3cfb07a6b99a4782c26dacc94514b6d76ac34f11', '{}'),
(495, 'property', '8f6f7c40ef26457257ae2a53dd1115a2881c4e91', '{}'),
(496, 'user_ears', '8f6f7c40ef26457257ae2a53dd1115a2881c4e91', '{}'),
(497, 'user_glasses', '8f6f7c40ef26457257ae2a53dd1115a2881c4e91', '{}'),
(498, 'user_helmet', '8f6f7c40ef26457257ae2a53dd1115a2881c4e91', '{}'),
(499, 'user_mask', '8f6f7c40ef26457257ae2a53dd1115a2881c4e91', '{}'),
(500, 'property', '740635149b504024f0398f6c05522fc554dcb5ec', '{}'),
(501, 'user_ears', '740635149b504024f0398f6c05522fc554dcb5ec', '{}'),
(502, 'user_glasses', '740635149b504024f0398f6c05522fc554dcb5ec', '{}'),
(503, 'user_helmet', '740635149b504024f0398f6c05522fc554dcb5ec', '{}'),
(504, 'user_mask', '740635149b504024f0398f6c05522fc554dcb5ec', '{}'),
(505, 'property', '47f1e524266279e3c6c4eaf911f67c9980b66568', '{}'),
(506, 'user_mask', '47f1e524266279e3c6c4eaf911f67c9980b66568', '{}'),
(507, 'user_glasses', '47f1e524266279e3c6c4eaf911f67c9980b66568', '{}'),
(508, 'user_ears', '47f1e524266279e3c6c4eaf911f67c9980b66568', '{}'),
(509, 'user_helmet', '47f1e524266279e3c6c4eaf911f67c9980b66568', '{}'),
(510, 'property', '812f930685f939747b5527d26b3e97f675ea86d9', '{}'),
(511, 'user_ears', '812f930685f939747b5527d26b3e97f675ea86d9', '{}'),
(512, 'user_glasses', '812f930685f939747b5527d26b3e97f675ea86d9', '{}'),
(513, 'user_helmet', '812f930685f939747b5527d26b3e97f675ea86d9', '{}'),
(514, 'user_mask', '812f930685f939747b5527d26b3e97f675ea86d9', '{}'),
(515, 'property', 'cd05ef4cf64f6cda716f84768f0db8280c07763e', '{}'),
(516, 'user_ears', 'cd05ef4cf64f6cda716f84768f0db8280c07763e', '{}'),
(517, 'user_glasses', 'cd05ef4cf64f6cda716f84768f0db8280c07763e', '{}'),
(518, 'user_helmet', 'cd05ef4cf64f6cda716f84768f0db8280c07763e', '{}'),
(519, 'user_mask', 'cd05ef4cf64f6cda716f84768f0db8280c07763e', '{}'),
(520, 'property', '71796f076ab2054f7248846de51148871a628218', '{}'),
(521, 'user_ears', '71796f076ab2054f7248846de51148871a628218', '{}'),
(522, 'user_glasses', '71796f076ab2054f7248846de51148871a628218', '{}'),
(523, 'user_helmet', '71796f076ab2054f7248846de51148871a628218', '{}'),
(524, 'user_mask', '71796f076ab2054f7248846de51148871a628218', '{}'),
(525, 'property', 'a48e967ecc7794609cbc2424d8dcb123e172b057', '{}'),
(526, 'user_ears', 'a48e967ecc7794609cbc2424d8dcb123e172b057', '{}'),
(527, 'user_glasses', 'a48e967ecc7794609cbc2424d8dcb123e172b057', '{}'),
(528, 'user_helmet', 'a48e967ecc7794609cbc2424d8dcb123e172b057', '{}'),
(529, 'user_mask', 'a48e967ecc7794609cbc2424d8dcb123e172b057', '{}'),
(530, 'property', 'c2ee0d63bed593472531eb1aaea9080b634199da', '{}'),
(531, 'user_ears', 'c2ee0d63bed593472531eb1aaea9080b634199da', '{}'),
(532, 'user_glasses', 'c2ee0d63bed593472531eb1aaea9080b634199da', '{}'),
(533, 'user_helmet', 'c2ee0d63bed593472531eb1aaea9080b634199da', '{}'),
(534, 'user_mask', 'c2ee0d63bed593472531eb1aaea9080b634199da', '{}'),
(535, 'property', '2b0ceaeddafbdc9d1a2e07d9053284dda71ab790', '{}'),
(536, 'user_ears', '2b0ceaeddafbdc9d1a2e07d9053284dda71ab790', '{}'),
(537, 'user_glasses', '2b0ceaeddafbdc9d1a2e07d9053284dda71ab790', '{}'),
(538, 'user_mask', '2b0ceaeddafbdc9d1a2e07d9053284dda71ab790', '{}'),
(539, 'user_helmet', '2b0ceaeddafbdc9d1a2e07d9053284dda71ab790', '{}'),
(540, 'property', 'b299ea7ae38aa538abcbbbaf087da1589ebfeecb', '{}'),
(541, 'user_ears', 'b299ea7ae38aa538abcbbbaf087da1589ebfeecb', '{}'),
(542, 'user_glasses', 'b299ea7ae38aa538abcbbbaf087da1589ebfeecb', '{}'),
(543, 'user_helmet', 'b299ea7ae38aa538abcbbbaf087da1589ebfeecb', '{}'),
(544, 'user_mask', 'b299ea7ae38aa538abcbbbaf087da1589ebfeecb', '{}'),
(545, 'property', 'e18bf423c4fc6cbc68334f155d3c4e2fcf1593e5', '{}'),
(546, 'user_ears', 'e18bf423c4fc6cbc68334f155d3c4e2fcf1593e5', '{}'),
(547, 'user_glasses', 'e18bf423c4fc6cbc68334f155d3c4e2fcf1593e5', '{}'),
(548, 'user_helmet', 'e18bf423c4fc6cbc68334f155d3c4e2fcf1593e5', '{}'),
(549, 'user_mask', 'e18bf423c4fc6cbc68334f155d3c4e2fcf1593e5', '{}'),
(550, 'property', '973785d12d7416a1f34b77bf7ad23a5bbfc4cd4d', '{}'),
(551, 'user_ears', '973785d12d7416a1f34b77bf7ad23a5bbfc4cd4d', '{}'),
(552, 'user_glasses', '973785d12d7416a1f34b77bf7ad23a5bbfc4cd4d', '{}'),
(553, 'user_helmet', '973785d12d7416a1f34b77bf7ad23a5bbfc4cd4d', '{}'),
(554, 'user_mask', '973785d12d7416a1f34b77bf7ad23a5bbfc4cd4d', '{}'),
(555, 'property', 'fa0a3d2cf5b909102136a156147e33a8bd54c73a', '{}'),
(556, 'user_ears', 'fa0a3d2cf5b909102136a156147e33a8bd54c73a', '{}'),
(557, 'user_glasses', 'fa0a3d2cf5b909102136a156147e33a8bd54c73a', '{}'),
(558, 'user_mask', 'fa0a3d2cf5b909102136a156147e33a8bd54c73a', '{}'),
(559, 'user_helmet', 'fa0a3d2cf5b909102136a156147e33a8bd54c73a', '{}'),
(560, 'user_ears', '9713617b5f3668e10d847bf1762e47692a72bf62', '{}'),
(561, 'user_helmet', '9713617b5f3668e10d847bf1762e47692a72bf62', '{}'),
(562, 'user_glasses', '9713617b5f3668e10d847bf1762e47692a72bf62', '{}'),
(563, 'user_mask', '9713617b5f3668e10d847bf1762e47692a72bf62', '{}'),
(564, 'property', '9713617b5f3668e10d847bf1762e47692a72bf62', '{}'),
(565, 'user_mask', '3da379d34a90d37a3b86ad3a1350992f267ab9d8', '{}'),
(566, 'property', '3da379d34a90d37a3b86ad3a1350992f267ab9d8', '{}'),
(567, 'user_ears', '3da379d34a90d37a3b86ad3a1350992f267ab9d8', '{}'),
(568, 'user_helmet', '3da379d34a90d37a3b86ad3a1350992f267ab9d8', '{}'),
(569, 'user_glasses', '3da379d34a90d37a3b86ad3a1350992f267ab9d8', '{}'),
(570, 'property', 'c10de0bb2a24ce07e1a64644028b2808a63157aa', '{}'),
(571, 'user_ears', 'c10de0bb2a24ce07e1a64644028b2808a63157aa', '{}'),
(572, 'user_helmet', 'c10de0bb2a24ce07e1a64644028b2808a63157aa', '{}'),
(573, 'user_mask', 'c10de0bb2a24ce07e1a64644028b2808a63157aa', '{}'),
(574, 'user_glasses', 'c10de0bb2a24ce07e1a64644028b2808a63157aa', '{}'),
(575, 'property', 'd96ee4e4ee33d33d3ba43ebc36e1451e8c6783f6', '{}'),
(576, 'user_ears', 'd96ee4e4ee33d33d3ba43ebc36e1451e8c6783f6', '{}'),
(577, 'user_glasses', 'd96ee4e4ee33d33d3ba43ebc36e1451e8c6783f6', '{}'),
(578, 'user_helmet', 'd96ee4e4ee33d33d3ba43ebc36e1451e8c6783f6', '{}'),
(579, 'user_mask', 'd96ee4e4ee33d33d3ba43ebc36e1451e8c6783f6', '{}'),
(580, 'property', 'bacee5552e4dc9cabaa03b21ffa557b755bff36d', '{}'),
(581, 'user_ears', 'bacee5552e4dc9cabaa03b21ffa557b755bff36d', '{}'),
(582, 'user_glasses', 'bacee5552e4dc9cabaa03b21ffa557b755bff36d', '{}'),
(583, 'user_helmet', 'bacee5552e4dc9cabaa03b21ffa557b755bff36d', '{}'),
(584, 'user_mask', 'bacee5552e4dc9cabaa03b21ffa557b755bff36d', '{}'),
(585, 'user_ears', '758589edcd8573a28957ba526ed94e6dc190f560', '{}'),
(586, 'user_glasses', '758589edcd8573a28957ba526ed94e6dc190f560', '{}'),
(587, 'user_helmet', '758589edcd8573a28957ba526ed94e6dc190f560', '{}'),
(588, 'user_mask', '758589edcd8573a28957ba526ed94e6dc190f560', '{}'),
(589, 'property', '758589edcd8573a28957ba526ed94e6dc190f560', '{}'),
(590, 'property', '30faa63e9f9438d20cf20fa6bb8f966d40be27fb', '{}'),
(591, 'user_glasses', '30faa63e9f9438d20cf20fa6bb8f966d40be27fb', '{}'),
(592, 'user_ears', '30faa63e9f9438d20cf20fa6bb8f966d40be27fb', '{}'),
(593, 'user_helmet', '30faa63e9f9438d20cf20fa6bb8f966d40be27fb', '{}'),
(594, 'user_mask', '30faa63e9f9438d20cf20fa6bb8f966d40be27fb', '{}'),
(595, 'property', '481f3f3079c3f3aeb1a4fe185281196575f60940', '{}'),
(596, 'user_ears', '481f3f3079c3f3aeb1a4fe185281196575f60940', '{}'),
(597, 'user_glasses', '481f3f3079c3f3aeb1a4fe185281196575f60940', '{}'),
(598, 'user_helmet', '481f3f3079c3f3aeb1a4fe185281196575f60940', '{}'),
(599, 'user_mask', '481f3f3079c3f3aeb1a4fe185281196575f60940', '{}'),
(600, 'property', 'd730a7cc6abff51aecfcb9a2cd7bc5e29dbd16b0', '{}'),
(601, 'user_ears', 'd730a7cc6abff51aecfcb9a2cd7bc5e29dbd16b0', '{}'),
(602, 'user_glasses', 'd730a7cc6abff51aecfcb9a2cd7bc5e29dbd16b0', '{}'),
(603, 'user_helmet', 'd730a7cc6abff51aecfcb9a2cd7bc5e29dbd16b0', '{}'),
(604, 'user_mask', 'd730a7cc6abff51aecfcb9a2cd7bc5e29dbd16b0', '{}'),
(605, 'property', '3be6dc9c3353a885c9fdb724bf8ed1d904fa6432', '{}'),
(606, 'user_ears', '3be6dc9c3353a885c9fdb724bf8ed1d904fa6432', '{}'),
(607, 'user_glasses', '3be6dc9c3353a885c9fdb724bf8ed1d904fa6432', '{}'),
(608, 'user_helmet', '3be6dc9c3353a885c9fdb724bf8ed1d904fa6432', '{}'),
(609, 'user_mask', '3be6dc9c3353a885c9fdb724bf8ed1d904fa6432', '{}'),
(610, 'property', 'fbfc4a5be8a0631a1c7ef288c011082eebf6d5fc', '{}'),
(611, 'user_ears', 'fbfc4a5be8a0631a1c7ef288c011082eebf6d5fc', '{}'),
(612, 'user_glasses', 'fbfc4a5be8a0631a1c7ef288c011082eebf6d5fc', '{}'),
(613, 'user_helmet', 'fbfc4a5be8a0631a1c7ef288c011082eebf6d5fc', '{}'),
(614, 'user_mask', 'fbfc4a5be8a0631a1c7ef288c011082eebf6d5fc', '{}'),
(615, 'property', '40d836bfa4f72c87eb0cb959fbc49e666344b77f', '{}'),
(616, 'user_ears', '40d836bfa4f72c87eb0cb959fbc49e666344b77f', '{}'),
(617, 'user_glasses', '40d836bfa4f72c87eb0cb959fbc49e666344b77f', '{}'),
(618, 'user_helmet', '40d836bfa4f72c87eb0cb959fbc49e666344b77f', '{}'),
(619, 'user_mask', '40d836bfa4f72c87eb0cb959fbc49e666344b77f', '{}'),
(620, 'property', '91fccb7f9c806411ac7d3719d655699f7ca3bb0a', '{}'),
(621, 'user_ears', '91fccb7f9c806411ac7d3719d655699f7ca3bb0a', '{}'),
(622, 'user_glasses', '91fccb7f9c806411ac7d3719d655699f7ca3bb0a', '{}'),
(623, 'user_helmet', '91fccb7f9c806411ac7d3719d655699f7ca3bb0a', '{}'),
(624, 'user_mask', '91fccb7f9c806411ac7d3719d655699f7ca3bb0a', '{}'),
(625, 'property', '09547ea828c6597feb160439c04c5e43bd586602', '{}'),
(626, 'user_ears', '09547ea828c6597feb160439c04c5e43bd586602', '{}'),
(627, 'user_glasses', '09547ea828c6597feb160439c04c5e43bd586602', '{}'),
(628, 'user_helmet', '09547ea828c6597feb160439c04c5e43bd586602', '{}'),
(629, 'user_mask', '09547ea828c6597feb160439c04c5e43bd586602', '{}'),
(630, 'property', '019d663b456af7c16b8ac4f56f4a405cb0f0f67c', '{}'),
(631, 'user_ears', '019d663b456af7c16b8ac4f56f4a405cb0f0f67c', '{}'),
(632, 'user_glasses', '019d663b456af7c16b8ac4f56f4a405cb0f0f67c', '{}'),
(633, 'user_helmet', '019d663b456af7c16b8ac4f56f4a405cb0f0f67c', '{}'),
(634, 'user_mask', '019d663b456af7c16b8ac4f56f4a405cb0f0f67c', '{}'),
(635, 'property', '6d0ef8915ffa8cf4b03354208e1509555af8d018', '{}'),
(636, 'user_ears', '6d0ef8915ffa8cf4b03354208e1509555af8d018', '{}'),
(637, 'user_glasses', '6d0ef8915ffa8cf4b03354208e1509555af8d018', '{}'),
(638, 'user_helmet', '6d0ef8915ffa8cf4b03354208e1509555af8d018', '{}'),
(639, 'user_mask', '6d0ef8915ffa8cf4b03354208e1509555af8d018', '{}'),
(640, 'property', 'fe0ade28aff445845ddd37799553568e0c540041', '{}'),
(641, 'user_ears', 'fe0ade28aff445845ddd37799553568e0c540041', '{}'),
(642, 'user_glasses', 'fe0ade28aff445845ddd37799553568e0c540041', '{}'),
(643, 'user_helmet', 'fe0ade28aff445845ddd37799553568e0c540041', '{}'),
(644, 'user_mask', 'fe0ade28aff445845ddd37799553568e0c540041', '{}'),
(645, 'property', '9284a475e223ba44877a792a3e6216af0290bbb2', '{}'),
(646, 'user_ears', '9284a475e223ba44877a792a3e6216af0290bbb2', '{}'),
(647, 'user_glasses', '9284a475e223ba44877a792a3e6216af0290bbb2', '{}'),
(648, 'user_mask', '9284a475e223ba44877a792a3e6216af0290bbb2', '{}'),
(649, 'user_helmet', '9284a475e223ba44877a792a3e6216af0290bbb2', '{}'),
(650, 'property', 'bb27fd6d7024f42525cefc445b9695a41e601e34', '{}'),
(651, 'user_ears', 'bb27fd6d7024f42525cefc445b9695a41e601e34', '{}'),
(652, 'user_glasses', 'bb27fd6d7024f42525cefc445b9695a41e601e34', '{}'),
(653, 'user_helmet', 'bb27fd6d7024f42525cefc445b9695a41e601e34', '{}'),
(654, 'user_mask', 'bb27fd6d7024f42525cefc445b9695a41e601e34', '{}'),
(655, 'property', '5cb28090035dcd277e57c7c97211e018a573c7cb', '{}'),
(656, 'user_ears', '5cb28090035dcd277e57c7c97211e018a573c7cb', '{}'),
(657, 'user_glasses', '5cb28090035dcd277e57c7c97211e018a573c7cb', '{}'),
(658, 'user_helmet', '5cb28090035dcd277e57c7c97211e018a573c7cb', '{}'),
(659, 'user_mask', '5cb28090035dcd277e57c7c97211e018a573c7cb', '{}'),
(660, 'property', '3c9c5321ff0780cb587fef73b3713dd8cab2e041', '{}'),
(661, 'user_ears', '3c9c5321ff0780cb587fef73b3713dd8cab2e041', '{}'),
(662, 'user_glasses', '3c9c5321ff0780cb587fef73b3713dd8cab2e041', '{}'),
(663, 'user_helmet', '3c9c5321ff0780cb587fef73b3713dd8cab2e041', '{}'),
(664, 'user_mask', '3c9c5321ff0780cb587fef73b3713dd8cab2e041', '{}'),
(665, 'property', '9496f9dfed6a3656e9e00359eb9faf8f03efa138', '{}'),
(666, 'user_ears', '9496f9dfed6a3656e9e00359eb9faf8f03efa138', '{}'),
(667, 'user_glasses', '9496f9dfed6a3656e9e00359eb9faf8f03efa138', '{}'),
(668, 'user_helmet', '9496f9dfed6a3656e9e00359eb9faf8f03efa138', '{}'),
(669, 'user_mask', '9496f9dfed6a3656e9e00359eb9faf8f03efa138', '{}'),
(670, 'property', '426848f0f4f2ed17e60ae463b74e050e1641f6f3', '{}'),
(671, 'user_ears', '426848f0f4f2ed17e60ae463b74e050e1641f6f3', '{}'),
(672, 'user_glasses', '426848f0f4f2ed17e60ae463b74e050e1641f6f3', '{}'),
(673, 'user_helmet', '426848f0f4f2ed17e60ae463b74e050e1641f6f3', '{}'),
(674, 'user_mask', '426848f0f4f2ed17e60ae463b74e050e1641f6f3', '{}'),
(675, 'property', '9accfa8f3d76c0dda45a4822abfdef2feacb98ed', '{}'),
(676, 'user_ears', '9accfa8f3d76c0dda45a4822abfdef2feacb98ed', '{}'),
(677, 'user_glasses', '9accfa8f3d76c0dda45a4822abfdef2feacb98ed', '{}'),
(678, 'user_helmet', '9accfa8f3d76c0dda45a4822abfdef2feacb98ed', '{}'),
(679, 'user_mask', '9accfa8f3d76c0dda45a4822abfdef2feacb98ed', '{}'),
(680, 'property', '06ccebef95e2eee85c9f2064a3d1ad37ec583eaa', '{}'),
(681, 'user_ears', '06ccebef95e2eee85c9f2064a3d1ad37ec583eaa', '{}'),
(682, 'user_glasses', '06ccebef95e2eee85c9f2064a3d1ad37ec583eaa', '{}'),
(683, 'user_helmet', '06ccebef95e2eee85c9f2064a3d1ad37ec583eaa', '{}'),
(684, 'user_mask', '06ccebef95e2eee85c9f2064a3d1ad37ec583eaa', '{}'),
(685, 'property', '1bc58bf5f4a2c8e0271c619121cb6371535e255d', '{}'),
(686, 'user_ears', '1bc58bf5f4a2c8e0271c619121cb6371535e255d', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(687, 'user_glasses', '1bc58bf5f4a2c8e0271c619121cb6371535e255d', '{}'),
(688, 'user_helmet', '1bc58bf5f4a2c8e0271c619121cb6371535e255d', '{}'),
(689, 'user_mask', '1bc58bf5f4a2c8e0271c619121cb6371535e255d', '{}'),
(690, 'property', '0a23a85c11ec498911230a6bb9f07e5967ecbb4a', '{}'),
(691, 'user_ears', '0a23a85c11ec498911230a6bb9f07e5967ecbb4a', '{}'),
(692, 'user_glasses', '0a23a85c11ec498911230a6bb9f07e5967ecbb4a', '{}'),
(693, 'user_helmet', '0a23a85c11ec498911230a6bb9f07e5967ecbb4a', '{}'),
(694, 'user_mask', '0a23a85c11ec498911230a6bb9f07e5967ecbb4a', '{}'),
(695, 'property', '1913a349bcf2864f723f39044b194edc96a51e1d', '{}'),
(696, 'user_ears', '1913a349bcf2864f723f39044b194edc96a51e1d', '{}'),
(697, 'user_glasses', '1913a349bcf2864f723f39044b194edc96a51e1d', '{}'),
(698, 'user_helmet', '1913a349bcf2864f723f39044b194edc96a51e1d', '{}'),
(699, 'user_mask', '1913a349bcf2864f723f39044b194edc96a51e1d', '{}'),
(700, 'property', '784acd9b3d326f87d0a2bde318c767904a4cb652', '{}'),
(701, 'user_ears', '784acd9b3d326f87d0a2bde318c767904a4cb652', '{}'),
(702, 'user_glasses', '784acd9b3d326f87d0a2bde318c767904a4cb652', '{}'),
(703, 'user_helmet', '784acd9b3d326f87d0a2bde318c767904a4cb652', '{}'),
(704, 'user_mask', '784acd9b3d326f87d0a2bde318c767904a4cb652', '{}'),
(705, 'property', '5462e7981d17b937f8214eff4792c65715a4c05b', '{}'),
(706, 'user_ears', '5462e7981d17b937f8214eff4792c65715a4c05b', '{}'),
(707, 'user_glasses', '5462e7981d17b937f8214eff4792c65715a4c05b', '{}'),
(708, 'user_helmet', '5462e7981d17b937f8214eff4792c65715a4c05b', '{}'),
(709, 'user_mask', '5462e7981d17b937f8214eff4792c65715a4c05b', '{}'),
(710, 'property', '1c949f9d15e2fe2f00b2479c14b69684a96f4012', '{}'),
(711, 'user_ears', '1c949f9d15e2fe2f00b2479c14b69684a96f4012', '{}'),
(712, 'user_glasses', '1c949f9d15e2fe2f00b2479c14b69684a96f4012', '{}'),
(713, 'user_helmet', '1c949f9d15e2fe2f00b2479c14b69684a96f4012', '{}'),
(714, 'user_mask', '1c949f9d15e2fe2f00b2479c14b69684a96f4012', '{}'),
(715, 'property', 'cc432643337a6374a8b887cbf0301ac580add445', '{}'),
(716, 'user_ears', 'cc432643337a6374a8b887cbf0301ac580add445', '{}'),
(717, 'user_glasses', 'cc432643337a6374a8b887cbf0301ac580add445', '{}'),
(718, 'user_helmet', 'cc432643337a6374a8b887cbf0301ac580add445', '{}'),
(719, 'user_mask', 'cc432643337a6374a8b887cbf0301ac580add445', '{}'),
(720, 'property', 'd0f673de2ba20368df6508fe9c32b240e582a2ad', '{}'),
(721, 'user_ears', 'd0f673de2ba20368df6508fe9c32b240e582a2ad', '{}'),
(722, 'user_glasses', 'd0f673de2ba20368df6508fe9c32b240e582a2ad', '{}'),
(723, 'user_helmet', 'd0f673de2ba20368df6508fe9c32b240e582a2ad', '{}'),
(724, 'user_mask', 'd0f673de2ba20368df6508fe9c32b240e582a2ad', '{}'),
(725, 'property', '045135fcdd30bfddef95dfb547cf8a92fc413a95', '{}'),
(726, 'user_ears', '045135fcdd30bfddef95dfb547cf8a92fc413a95', '{}'),
(727, 'user_glasses', '045135fcdd30bfddef95dfb547cf8a92fc413a95', '{}'),
(728, 'user_helmet', '045135fcdd30bfddef95dfb547cf8a92fc413a95', '{}'),
(729, 'user_mask', '045135fcdd30bfddef95dfb547cf8a92fc413a95', '{}'),
(730, 'property', '8db3268dfbccae34e00da1aa6a9b28ccd2e78c2b', '{}'),
(731, 'user_ears', '8db3268dfbccae34e00da1aa6a9b28ccd2e78c2b', '{}'),
(732, 'user_glasses', '8db3268dfbccae34e00da1aa6a9b28ccd2e78c2b', '{}'),
(733, 'user_helmet', '8db3268dfbccae34e00da1aa6a9b28ccd2e78c2b', '{}'),
(734, 'user_mask', '8db3268dfbccae34e00da1aa6a9b28ccd2e78c2b', '{}'),
(735, 'property', 'd6f50b210d170c32208c340fd5e7c60aa3644af8', '{}'),
(736, 'user_ears', 'd6f50b210d170c32208c340fd5e7c60aa3644af8', '{}'),
(737, 'user_glasses', 'd6f50b210d170c32208c340fd5e7c60aa3644af8', '{}'),
(738, 'user_helmet', 'd6f50b210d170c32208c340fd5e7c60aa3644af8', '{}'),
(739, 'user_mask', 'd6f50b210d170c32208c340fd5e7c60aa3644af8', '{}'),
(740, 'property', '1c6e8dc6443e9547ea7ccf603371fab69435b0ed', '{}'),
(741, 'user_ears', '1c6e8dc6443e9547ea7ccf603371fab69435b0ed', '{}'),
(742, 'user_glasses', '1c6e8dc6443e9547ea7ccf603371fab69435b0ed', '{}'),
(743, 'user_helmet', '1c6e8dc6443e9547ea7ccf603371fab69435b0ed', '{}'),
(744, 'user_mask', '1c6e8dc6443e9547ea7ccf603371fab69435b0ed', '{}'),
(745, 'property', 'cc1dac0e7bb433fa67c72125dafa654ac2c40934', '{}'),
(746, 'user_ears', 'cc1dac0e7bb433fa67c72125dafa654ac2c40934', '{}'),
(747, 'user_glasses', 'cc1dac0e7bb433fa67c72125dafa654ac2c40934', '{}'),
(748, 'user_helmet', 'cc1dac0e7bb433fa67c72125dafa654ac2c40934', '{}'),
(749, 'user_mask', 'cc1dac0e7bb433fa67c72125dafa654ac2c40934', '{}'),
(750, 'property', '480e1680dfc535981e5a6ccf80746c8f342855ef', '{}'),
(751, 'user_ears', '480e1680dfc535981e5a6ccf80746c8f342855ef', '{}'),
(752, 'user_glasses', '480e1680dfc535981e5a6ccf80746c8f342855ef', '{}'),
(753, 'user_helmet', '480e1680dfc535981e5a6ccf80746c8f342855ef', '{}'),
(754, 'user_mask', '480e1680dfc535981e5a6ccf80746c8f342855ef', '{}'),
(755, 'property', '653c73dc78822467eec84c5dff44fb8c541bc1b2', '{}'),
(756, 'user_ears', '653c73dc78822467eec84c5dff44fb8c541bc1b2', '{}'),
(757, 'user_glasses', '653c73dc78822467eec84c5dff44fb8c541bc1b2', '{}'),
(758, 'user_helmet', '653c73dc78822467eec84c5dff44fb8c541bc1b2', '{}'),
(759, 'user_mask', '653c73dc78822467eec84c5dff44fb8c541bc1b2', '{}'),
(760, 'property', 'f4cafbe6b2484bbb4ad02d50763e69d79ae69fe8', '{}'),
(761, 'user_ears', 'f4cafbe6b2484bbb4ad02d50763e69d79ae69fe8', '{}'),
(762, 'user_glasses', 'f4cafbe6b2484bbb4ad02d50763e69d79ae69fe8', '{}'),
(763, 'user_helmet', 'f4cafbe6b2484bbb4ad02d50763e69d79ae69fe8', '{}'),
(764, 'user_mask', 'f4cafbe6b2484bbb4ad02d50763e69d79ae69fe8', '{}'),
(765, 'property', 'd013c531a130282879d39b9c9661187120a05350', '{}'),
(766, 'user_ears', 'd013c531a130282879d39b9c9661187120a05350', '{}'),
(767, 'user_glasses', 'd013c531a130282879d39b9c9661187120a05350', '{}'),
(768, 'user_helmet', 'd013c531a130282879d39b9c9661187120a05350', '{}'),
(769, 'user_mask', 'd013c531a130282879d39b9c9661187120a05350', '{}'),
(770, 'property', 'b588c480c5a104cb9aa8c0c23201eed952201152', '{}'),
(771, 'user_ears', 'b588c480c5a104cb9aa8c0c23201eed952201152', '{}'),
(772, 'user_helmet', 'b588c480c5a104cb9aa8c0c23201eed952201152', '{}'),
(773, 'user_glasses', 'b588c480c5a104cb9aa8c0c23201eed952201152', '{}'),
(774, 'user_mask', 'b588c480c5a104cb9aa8c0c23201eed952201152', '{}'),
(775, 'property', '58326086e921abef54989a65ee18d190306097fc', '{}'),
(776, 'user_ears', '58326086e921abef54989a65ee18d190306097fc', '{}'),
(777, 'user_glasses', '58326086e921abef54989a65ee18d190306097fc', '{}'),
(778, 'user_helmet', '58326086e921abef54989a65ee18d190306097fc', '{}'),
(779, 'user_mask', '58326086e921abef54989a65ee18d190306097fc', '{}'),
(780, 'property', 'e7339780db4a1722f3b1fba6a60b4a7fc8b1ab7d', '{}'),
(781, 'user_ears', 'e7339780db4a1722f3b1fba6a60b4a7fc8b1ab7d', '{}'),
(782, 'user_glasses', 'e7339780db4a1722f3b1fba6a60b4a7fc8b1ab7d', '{}'),
(783, 'user_helmet', 'e7339780db4a1722f3b1fba6a60b4a7fc8b1ab7d', '{}'),
(784, 'user_mask', 'e7339780db4a1722f3b1fba6a60b4a7fc8b1ab7d', '{}'),
(785, 'user_helmet', '6e65b1d66f47f1361a49d76479b719e4d8841fbf', '{}'),
(786, 'user_mask', '6e65b1d66f47f1361a49d76479b719e4d8841fbf', '{}'),
(787, 'property', '6e65b1d66f47f1361a49d76479b719e4d8841fbf', '{}'),
(788, 'user_ears', '6e65b1d66f47f1361a49d76479b719e4d8841fbf', '{}'),
(789, 'user_glasses', '6e65b1d66f47f1361a49d76479b719e4d8841fbf', '{}'),
(790, 'property', '0ceba97e85916fb562cbf85cc92d59defd380af6', '{}'),
(791, 'user_ears', '0ceba97e85916fb562cbf85cc92d59defd380af6', '{}'),
(792, 'user_glasses', '0ceba97e85916fb562cbf85cc92d59defd380af6', '{}'),
(793, 'user_helmet', '0ceba97e85916fb562cbf85cc92d59defd380af6', '{}'),
(794, 'user_mask', '0ceba97e85916fb562cbf85cc92d59defd380af6', '{}'),
(795, 'property', 'd013b9689010fcb07de2c295d83495ed59367fde', '{}'),
(796, 'user_ears', 'd013b9689010fcb07de2c295d83495ed59367fde', '{}'),
(797, 'user_glasses', 'd013b9689010fcb07de2c295d83495ed59367fde', '{}'),
(798, 'user_helmet', 'd013b9689010fcb07de2c295d83495ed59367fde', '{}'),
(799, 'user_mask', 'd013b9689010fcb07de2c295d83495ed59367fde', '{}'),
(800, 'property', 'd68ea116085b9520cb16dcc21130e681f37eed89', '{}'),
(801, 'user_ears', 'd68ea116085b9520cb16dcc21130e681f37eed89', '{}'),
(802, 'user_glasses', 'd68ea116085b9520cb16dcc21130e681f37eed89', '{}'),
(803, 'user_helmet', 'd68ea116085b9520cb16dcc21130e681f37eed89', '{}'),
(804, 'user_mask', 'd68ea116085b9520cb16dcc21130e681f37eed89', '{}'),
(805, 'property', '54a8dc4ac0e9d0292e56258929887641cfd57c9a', '{}'),
(806, 'user_ears', '54a8dc4ac0e9d0292e56258929887641cfd57c9a', '{}'),
(807, 'user_glasses', '54a8dc4ac0e9d0292e56258929887641cfd57c9a', '{}'),
(808, 'user_helmet', '54a8dc4ac0e9d0292e56258929887641cfd57c9a', '{}'),
(809, 'user_mask', '54a8dc4ac0e9d0292e56258929887641cfd57c9a', '{}'),
(810, 'property', '9fd52acedcf388430b08bd134eed60d258e246ff', '{}'),
(811, 'user_ears', '9fd52acedcf388430b08bd134eed60d258e246ff', '{}'),
(812, 'user_glasses', '9fd52acedcf388430b08bd134eed60d258e246ff', '{}'),
(813, 'user_helmet', '9fd52acedcf388430b08bd134eed60d258e246ff', '{}'),
(814, 'user_mask', '9fd52acedcf388430b08bd134eed60d258e246ff', '{}'),
(815, 'property', '0714fe505c49ac3eb1f2e8a33bf0009b3219c870', '{}'),
(816, 'user_ears', '0714fe505c49ac3eb1f2e8a33bf0009b3219c870', '{}'),
(817, 'user_glasses', '0714fe505c49ac3eb1f2e8a33bf0009b3219c870', '{}'),
(818, 'user_helmet', '0714fe505c49ac3eb1f2e8a33bf0009b3219c870', '{}'),
(819, 'user_mask', '0714fe505c49ac3eb1f2e8a33bf0009b3219c870', '{}'),
(820, 'property', '96f612a9f63f24670a9b16c72204e0639bcf3e43', '{}'),
(821, 'user_ears', '96f612a9f63f24670a9b16c72204e0639bcf3e43', '{}'),
(822, 'user_glasses', '96f612a9f63f24670a9b16c72204e0639bcf3e43', '{}'),
(823, 'user_helmet', '96f612a9f63f24670a9b16c72204e0639bcf3e43', '{}'),
(824, 'user_mask', '96f612a9f63f24670a9b16c72204e0639bcf3e43', '{}'),
(825, 'property', '365df85d6097f045181ee0f2de2556c6ee5fbf71', '{}'),
(826, 'user_ears', '365df85d6097f045181ee0f2de2556c6ee5fbf71', '{}'),
(827, 'user_glasses', '365df85d6097f045181ee0f2de2556c6ee5fbf71', '{}'),
(828, 'user_helmet', '365df85d6097f045181ee0f2de2556c6ee5fbf71', '{}'),
(829, 'user_mask', '365df85d6097f045181ee0f2de2556c6ee5fbf71', '{}'),
(830, 'property', '64bb0eaf3e141de0bbe31dd6262f888f2cf01c93', '{}'),
(831, 'user_ears', '64bb0eaf3e141de0bbe31dd6262f888f2cf01c93', '{}'),
(832, 'user_glasses', '64bb0eaf3e141de0bbe31dd6262f888f2cf01c93', '{}'),
(833, 'user_helmet', '64bb0eaf3e141de0bbe31dd6262f888f2cf01c93', '{}'),
(834, 'user_mask', '64bb0eaf3e141de0bbe31dd6262f888f2cf01c93', '{}'),
(835, 'property', 'b6088922c3d1e3023d1d030c353160e4be5950c3', '{}'),
(836, 'user_ears', 'b6088922c3d1e3023d1d030c353160e4be5950c3', '{}'),
(837, 'user_glasses', 'b6088922c3d1e3023d1d030c353160e4be5950c3', '{}'),
(838, 'user_helmet', 'b6088922c3d1e3023d1d030c353160e4be5950c3', '{}'),
(839, 'user_mask', 'b6088922c3d1e3023d1d030c353160e4be5950c3', '{}'),
(840, 'property', '5f191156ad6ff002d5b20d83d79f2ef41c6ccb58', '{}'),
(841, 'user_ears', '5f191156ad6ff002d5b20d83d79f2ef41c6ccb58', '{}'),
(842, 'user_glasses', '5f191156ad6ff002d5b20d83d79f2ef41c6ccb58', '{}'),
(843, 'user_helmet', '5f191156ad6ff002d5b20d83d79f2ef41c6ccb58', '{}'),
(844, 'user_mask', '5f191156ad6ff002d5b20d83d79f2ef41c6ccb58', '{}'),
(845, 'property', 'd6a232a8c33d0fc323e563654a66f2355a11891d', '{}'),
(846, 'user_ears', 'd6a232a8c33d0fc323e563654a66f2355a11891d', '{}'),
(847, 'user_glasses', 'd6a232a8c33d0fc323e563654a66f2355a11891d', '{}'),
(848, 'user_helmet', 'd6a232a8c33d0fc323e563654a66f2355a11891d', '{}'),
(849, 'user_mask', 'd6a232a8c33d0fc323e563654a66f2355a11891d', '{}'),
(850, 'property', '8416d5ce2dac8f6aa1b15ea3b7bdca8e27780872', '{}'),
(851, 'user_ears', '8416d5ce2dac8f6aa1b15ea3b7bdca8e27780872', '{}'),
(852, 'user_glasses', '8416d5ce2dac8f6aa1b15ea3b7bdca8e27780872', '{}'),
(853, 'user_helmet', '8416d5ce2dac8f6aa1b15ea3b7bdca8e27780872', '{}'),
(854, 'user_mask', '8416d5ce2dac8f6aa1b15ea3b7bdca8e27780872', '{}'),
(855, 'property', '1572c2d73b73f4626aed7eab1d580c87c5259919', '{}'),
(856, 'user_ears', '1572c2d73b73f4626aed7eab1d580c87c5259919', '{}'),
(857, 'user_glasses', '1572c2d73b73f4626aed7eab1d580c87c5259919', '{}'),
(858, 'user_mask', '1572c2d73b73f4626aed7eab1d580c87c5259919', '{}'),
(859, 'user_helmet', '1572c2d73b73f4626aed7eab1d580c87c5259919', '{}'),
(860, 'user_helmet', '5eced0a293d2a2d8a59b361bb49e331cb19e6719', '{}'),
(861, 'user_mask', '5eced0a293d2a2d8a59b361bb49e331cb19e6719', '{}'),
(862, 'user_glasses', '5eced0a293d2a2d8a59b361bb49e331cb19e6719', '{}'),
(863, 'user_ears', '5eced0a293d2a2d8a59b361bb49e331cb19e6719', '{}'),
(864, 'property', '5eced0a293d2a2d8a59b361bb49e331cb19e6719', '{}'),
(865, 'property', '55c8eb28908c997d75f9e7003349b97e22f2f96c', '{}'),
(866, 'user_ears', '55c8eb28908c997d75f9e7003349b97e22f2f96c', '{}'),
(867, 'user_glasses', '55c8eb28908c997d75f9e7003349b97e22f2f96c', '{}'),
(868, 'user_mask', '55c8eb28908c997d75f9e7003349b97e22f2f96c', '{}'),
(869, 'user_helmet', '55c8eb28908c997d75f9e7003349b97e22f2f96c', '{}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(53, 'Misuse of a horn', 30, 0),
(54, 'Illegally Crossing a continuous Line', 40, 0),
(55, 'Driving on the wrong side of the road', 250, 0),
(56, 'Illegal U-Turn', 250, 0),
(57, 'Illegally Driving Off-road', 170, 0),
(58, 'Refusing a Lawful Command', 30, 0),
(59, 'Illegally Stopping a Vehicle', 150, 0),
(60, 'Illegal Parking', 70, 0),
(61, 'Failing to Yield to the right', 70, 0),
(62, 'Failure to comply with Vehicle Information', 90, 0),
(63, 'Failing to stop at a Stop Sign ', 105, 0),
(64, 'Failing to stop at a Red Light', 130, 0),
(65, 'Illegal Passing', 100, 0),
(66, 'Driving an illegal Vehicle', 100, 0),
(67, 'Driving without a License', 1500, 0),
(68, 'Hit and Run', 800, 0),
(69, 'Exceeding Speeds Over < 5 mph', 90, 0),
(70, 'Exceeding Speeds Over 5-15 mph', 120, 0),
(71, 'Exceeding Speeds Over 15-30 mph', 180, 0),
(72, 'Exceeding Speeds Over > 30 mph', 300, 0),
(73, 'Impeding traffic flow', 110, 1),
(74, 'Public Intoxication', 90, 1),
(75, 'Disorderly conduct', 90, 1),
(76, 'Obstruction of Justice', 130, 1),
(77, 'Insults towards Civilans', 75, 1),
(78, 'Disrespecting of an LEO', 110, 1),
(79, 'Verbal Threat towards a Civilan', 90, 1),
(80, 'Verbal Threat towards an LEO', 150, 1),
(81, 'Providing False Information', 250, 1),
(82, 'Attempt of Corruption', 1500, 1),
(83, 'Brandishing a weapon in city Limits', 120, 2),
(84, 'Brandishing a Lethal Weapon in city Limits', 300, 2),
(85, 'No Firearms License', 600, 2),
(86, 'Possession of an Illegal Weapon', 700, 2),
(87, 'Possession of Burglary Tools', 300, 2),
(88, 'Grand Theft Auto', 1800, 2),
(89, 'Intent to Sell/Distrube of an illegal Substance', 1500, 2),
(90, 'Frabrication of an Illegal Substance', 1500, 2),
(91, 'Possession of an Illegal Substance ', 650, 2),
(92, 'Kidnapping of a Civilan', 1500, 2),
(93, 'Kidnapping of an LEO', 2000, 2),
(94, 'Robbery', 650, 2),
(95, 'Armed Robbery of a Store', 650, 2),
(96, 'Armed Robbery of a Bank', 1500, 2),
(97, 'Assault on a Civilian', 2000, 3),
(98, 'Assault of an LEO', 2500, 3),
(99, 'Attempt of Murder of a Civilian', 3000, 3),
(100, 'Attempt of Murder of an LEO', 5000, 3),
(101, 'Murder of a Civilian', 10000, 3),
(102, 'Murder of an LEO', 30000, 3),
(103, 'Involuntary manslaughter', 1800, 3),
(104, 'Fraud', 2000, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fnx_kd`
--

CREATE TABLE `fnx_kd` (
  `identifier` varchar(255) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `inventories`
--

CREATE TABLE `inventories` (
  `name` varchar(255) NOT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `items` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `inventories`
--

INSERT INTO `inventories` (`name`, `owner`, `items`) VALUES
('test', NULL, '\"something\"');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `items`
--

CREATE TABLE `items` (
  `name` varchar(64) NOT NULL,
  `label` varchar(64) NOT NULL,
  `weight` int(11) NOT NULL,
  `rare` int(11) NOT NULL,
  `can_remove` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('alive_chicken', 'Living chicken', 1, 0, 1),
('bandage', 'Bandage', 2, 0, 1),
('beer', 'Beer', 1, 0, 0),
('blowpipe', 'Blowtorch', 2, 0, 1),
('bread', 'Bread', 1, 0, 1),
('cannabis', 'Cannabis', 3, 0, 1),
('carokit', 'Body Kit', 3, 0, 1),
('carotool', 'Tools', 2, 0, 1),
('clothe', 'Cloth', 1, 0, 1),
('copper', 'Copper', 1, 0, 1),
('cutted_wood', 'Cut wood', 1, 0, 1),
('diamond', 'Diamond', 1, 0, 1),
('essence', 'Gas', 1, 0, 1),
('fabric', 'Fabric', 1, 0, 1),
('fish', 'Fish', 1, 0, 1),
('fixkit', 'Repair Kit', 3, 0, 1),
('fixtool', 'Repair Tools', 2, 0, 1),
('gazbottle', 'Gas Bottle', 2, 0, 1),
('gold', 'Gold', 1, 0, 1),
('iron', 'Iron', 1, 0, 1),
('marijuana', 'Marijuana', 2, 0, 1),
('medikit', 'Medikit', 2, 0, 1),
('packaged_chicken', 'Chicken fillet', 1, 0, 1),
('packaged_plank', 'Packaged wood', 1, 0, 1),
('parkingcard', 'Parking Card', 0, 0, 0),
('petrol', 'Oil', 1, 0, 1),
('petrol_raffin', 'Processed oil', 1, 0, 1),
('phone', 'Phone', 1, 0, 1),
('slaughtered_chicken', 'Slaughtered chicken', 1, 0, 1),
('stone', 'Stone', 1, 0, 1),
('washed_stone', 'Washed stone', 1, 0, 1),
('water', 'Water', 1, 0, 1),
('wood', 'Wood', 1, 0, 1),
('wool', 'Wool', 1, 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(64) NOT NULL,
  `label` varchar(64) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'EMS', 0),
('banker', 'Banker', 0),
('cardealer', 'Cardealer', 0),
('fisherman', 'Fisherman', 0),
('fueler', 'Fueler', 0),
('lumberjack', 'Lumberjack', 0),
('mechanic', 'Mechanic', 0),
('miner', 'Miner', 0),
('police', 'LSPD', 0),
('realestateagent', 'Real Estate Agent', 0),
('reporter', 'Reporter', 0),
('slaughterer', 'Butcher', 0),
('tailor', 'Tailor', 0),
('taxi', 'Taxi', 0),
('unemployed', 'Unemployed', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(32) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `label` varchar(64) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 0, '{}', '{}'),
(2, 'ambulance', 0, 'ambulance', 'Paramedic', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(3, 'ambulance', 1, 'doctor', 'Doctor', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(4, 'ambulance', 2, 'chief_doctor', 'Chief doctor', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(5, 'ambulance', 3, 'boss', 'Surgeon', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(6, 'banker', 0, 'advisor', 'Advisor', 10, '{}', '{}'),
(7, 'banker', 1, 'banker', 'Banker', 20, '{}', '{}'),
(8, 'banker', 2, 'business_banker', 'Investment banker', 30, '{}', '{}'),
(9, 'banker', 3, 'trader', 'Trader', 40, '{}', '{}'),
(10, 'banker', 4, 'boss', 'Boss', 0, '{}', '{}'),
(11, 'lumberjack', 0, 'employee', 'Employee', 0, '{}', '{}'),
(12, 'fisherman', 0, 'employee', 'Employee', 0, '{}', '{}'),
(13, 'fueler', 0, 'employee', 'Employee', 0, '{}', '{}'),
(14, 'reporter', 0, 'employee', 'Employee', 0, '{}', '{}'),
(15, 'tailor', 0, 'employee', 'Employee', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(16, 'miner', 0, 'employee', 'Employee', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(17, 'slaughterer', 0, 'employee', 'Employee', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(18, 'mechanic', 0, 'recrue', 'Recruit', 12, '{}', '{}'),
(19, 'mechanic', 1, 'novice', 'beginner', 24, '{}', '{}'),
(20, 'mechanic', 2, 'experimente', 'experienced', 36, '{}', '{}'),
(21, 'mechanic', 3, 'chief', 'Leader', 48, '{}', '{}'),
(22, 'mechanic', 4, 'boss', 'Boss', 0, '{}', '{}'),
(23, 'police', 0, 'recruit', 'Recruit', 20, '{}', '{}'),
(24, 'police', 1, 'officer', 'Officier', 40, '{}', '{}'),
(25, 'police', 2, 'sergeant', 'Sergent', 60, '{}', '{}'),
(26, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
(27, 'police', 4, 'boss', 'Commandant', 100, '{}', '{}'),
(28, 'realestateagent', 0, 'location', 'Employee', 10, '{}', '{}'),
(29, 'realestateagent', 1, 'vendeur', 'Seller', 25, '{}', '{}'),
(30, 'realestateagent', 2, 'gestion', 'Management', 40, '{}', '{}'),
(31, 'realestateagent', 3, 'boss', 'Boss', 0, '{}', '{}'),
(32, 'taxi', 0, 'recrue', 'Recruit', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(33, 'taxi', 1, 'novice', 'Novice', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(34, 'taxi', 2, 'experimente', 'Experienced', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(35, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(36, 'taxi', 4, 'boss', 'Boss', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(37, 'cardealer', 0, 'recruit', 'Recruit', 10, '{}', '{}'),
(38, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(39, 'cardealer', 2, 'experienced', 'Experienced', 40, '{}', '{}'),
(40, 'cardealer', 3, 'boss', 'Boss', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('boat', 'Boat License'),
('dmv', 'Traffic Laws'),
('drive', 'Drivers license'),
('drive_bike', 'Motorcycle licence'),
('drive_truck', 'Truck license'),
('weapon', 'Weapon License'),
('weed_processing', 'Weed Processing License');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `module` varchar(64) DEFAULT NULL,
  `last` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `migrations`
--

INSERT INTO `migrations` (`id`, `module`, `last`) VALUES
(1, 'skin', 0),
(2, 'society', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `multicharacter_slots`
--

CREATE TABLE `multicharacter_slots` (
  `identifier` varchar(60) NOT NULL,
  `slots` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907}', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 30),
(2, 'TwentyFourSeven', 'water', 15),
(3, 'RobsLiquor', 'bread', 30),
(4, 'RobsLiquor', 'water', 15),
(5, 'LTDgasoline', 'bread', 30),
(6, 'LTDgasoline', 'water', 15),
(7, 'TwentyFourSeven', 'beer', 45),
(8, 'RobsLiquor', 'beer', 45),
(9, 'LTDgasoline', 'beer', 45);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `password` varchar(64) NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) DEFAULT NULL,
  `message` varchar(256) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `identifier` varchar(120) NOT NULL,
  `name` longtext DEFAULT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(64) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(32) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT '{"x":-1038.342, "y":-2736.5, "z":13.76124, "heading":325.9842}',
  `is_dead` tinyint(1) DEFAULT 0,
  `dob` varchar(10) DEFAULT NULL,
  `is_male` int(11) DEFAULT 1,
  `accessories` longtext DEFAULT NULL,
  `firstname` varchar(16) DEFAULT 'firstname',
  `lastname` varchar(16) DEFAULT 'lastname',
  `dateofbirth` varchar(10) DEFAULT '01-01-1999',
  `sex` varchar(1) DEFAULT 'm',
  `height` int(11) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `last_property` varchar(255) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `disabled` tinyint(1) DEFAULT 0,
  `jbg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`identifier`, `name`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `position`, `is_dead`, `dob`, `is_male`, `accessories`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `phone_number`, `last_property`, `skin`, `status`, `jail`, `disabled`, `jbg`) VALUES
('2b0ceaeddafbdc9d1a2e07d9053284dda71ab790', NULL, '{\"bank\":55200,\"money\":0,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":363.9,\"y\":1295.7,\"x\":819.6,\"heading\":145.4}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"mask_2\":0,\"beard_4\":0,\"face_md_weight\":50,\"arms_2\":0,\"hair_2\":1,\"glasses_2\":0,\"tshirt_2\":0,\"nose_5\":0,\"torso_2\":3,\"watches_2\":0,\"sun_2\":0,\"chain_2\":0,\"blush_2\":0,\"lipstick_4\":0,\"eyebrows_4\":0,\"cheeks_2\":0,\"cheeks_1\":0,\"chin_4\":0,\"age_1\":0,\"glasses_1\":0,\"bodyb_2\":0,\"bodyb_1\":-1,\"pants_1\":24,\"chest_3\":0,\"chest_1\":0,\"jaw_1\":0,\"bodyb_3\":-1,\"watches_1\":-1,\"blush_3\":0,\"makeup_1\":0,\"blemishes_2\":0,\"moles_2\":0,\"cheeks_3\":0,\"mom\":45,\"chest_2\":0,\"nose_2\":0,\"mask_1\":0,\"ears_2\":0,\"helmet_2\":1,\"neck_thickness\":0,\"eyebrows_5\":0,\"eyebrows_6\":0,\"chin_3\":0,\"shoes_2\":0,\"chain_1\":0,\"dad\":21,\"beard_2\":0,\"nose_4\":0,\"lipstick_3\":0,\"jaw_2\":0,\"bproof_1\":0,\"lipstick_2\":0,\"ears_1\":-1,\"eye_color\":0,\"hair_color_1\":29,\"nose_1\":0,\"beard_1\":0,\"shoes_1\":0,\"blemishes_1\":0,\"makeup_4\":0,\"beard_3\":0,\"moles_1\":0,\"helmet_1\":44,\"bags_1\":0,\"makeup_2\":0,\"bproof_2\":0,\"bodyb_4\":0,\"lip_thickness\":0,\"bracelets_2\":0,\"tshirt_1\":6,\"age_2\":0,\"hair_color_2\":0,\"pants_2\":0,\"nose_6\":0,\"eyebrows_3\":0,\"blush_1\":0,\"makeup_3\":0,\"bags_2\":0,\"eyebrows_1\":0,\"lipstick_1\":0,\"arms\":0,\"decals_1\":0,\"chin_1\":0,\"hair_1\":13,\"sex\":0,\"complexion_2\":0,\"chin_2\":0,\"nose_3\":0,\"decals_2\":0,\"sun_1\":0,\"torso_1\":120,\"eye_squint\":0,\"eyebrows_2\":0,\"skin_md_weight\":50,\"bracelets_1\":-1,\"complexion_1\":0}', '[{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, 0, 1),
('30faa63e9f9438d20cf20fa6bb8f966d40be27fb', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":167.3,\"x\":242.9,\"y\":-839.3,\"z\":29.9}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 2),
('3da379d34a90d37a3b86ad3a1350992f267ab9d8', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"y\":-2736.4,\"x\":-1038.3,\"heading\":325.5,\"z\":15.0}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[]', 0, 0, 3),
('60e7f61c12e41dcd4230790d4c36a862a50683e8', NULL, '{\"bank\":63600,\"money\":0,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":38.1,\"y\":-228.5,\"x\":-617.5,\"heading\":35.1}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"mask_2\":0,\"beard_4\":0,\"face_md_weight\":50,\"arms_2\":0,\"eyebrows_3\":0,\"glasses_2\":0,\"tshirt_2\":2,\"nose_5\":0,\"torso_2\":2,\"watches_2\":0,\"bags_1\":0,\"chain_2\":0,\"bproof_1\":0,\"lipstick_4\":0,\"lipstick_2\":0,\"cheeks_2\":0,\"cheeks_1\":0,\"chin_4\":0,\"age_1\":0,\"glasses_1\":0,\"bodyb_2\":0,\"bodyb_1\":-1,\"pants_1\":24,\"chest_3\":0,\"chest_1\":0,\"jaw_1\":0,\"bodyb_3\":-1,\"watches_1\":-1,\"blush_3\":0,\"hair_color_1\":0,\"blemishes_2\":0,\"moles_2\":0,\"cheeks_3\":0,\"blush_2\":0,\"chest_2\":0,\"helmet_1\":-1,\"eye_squint\":0,\"torso_1\":72,\"eyebrows_1\":0,\"neck_thickness\":0,\"makeup_4\":0,\"nose_2\":0,\"makeup_3\":0,\"beard_2\":0,\"eye_color\":0,\"chain_1\":0,\"sex\":0,\"nose_4\":0,\"makeup_2\":0,\"jaw_2\":0,\"lipstick_1\":0,\"complexion_2\":0,\"blemishes_1\":0,\"ears_1\":-1,\"dad\":0,\"chin_3\":0,\"beard_1\":0,\"shoes_1\":7,\"hair_color_2\":0,\"skin_md_weight\":50,\"makeup_1\":0,\"ears_2\":0,\"hair_1\":21,\"shoes_2\":2,\"lip_thickness\":0,\"bproof_2\":0,\"bodyb_4\":0,\"mask_1\":169,\"bracelets_2\":0,\"tshirt_1\":13,\"hair_2\":0,\"age_2\":0,\"pants_2\":0,\"nose_6\":0,\"sun_2\":0,\"blush_1\":0,\"nose_3\":0,\"bags_2\":0,\"moles_1\":0,\"nose_1\":0,\"arms\":17,\"decals_1\":0,\"chin_1\":0,\"eyebrows_6\":0,\"eyebrows_5\":0,\"eyebrows_4\":0,\"chin_2\":0,\"lipstick_3\":0,\"decals_2\":0,\"sun_1\":0,\"mom\":21,\"helmet_2\":0,\"eyebrows_2\":0,\"beard_3\":0,\"bracelets_1\":-1,\"complexion_1\":0}', '[{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, 0, 4),
('71796f076ab2054f7248846de51148871a628218', NULL, '{\"money\":0,\"bank\":62800,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":36.5,\"heading\":279.5,\"x\":-663.6,\"y\":-212.0}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"mask_2\":0,\"beard_2\":0,\"face_md_weight\":50,\"arms_2\":0,\"hair_2\":0,\"glasses_2\":0,\"tshirt_2\":0,\"nose_5\":0,\"torso_2\":0,\"watches_2\":0,\"sun_2\":0,\"chain_2\":0,\"blush_2\":0,\"lipstick_4\":0,\"lip_thickness\":0,\"cheeks_2\":0,\"cheeks_1\":0,\"chin_4\":0,\"lipstick_3\":0,\"glasses_1\":0,\"ears_1\":-1,\"bodyb_1\":-1,\"pants_1\":0,\"chest_3\":0,\"chest_1\":0,\"jaw_1\":0,\"bodyb_3\":-1,\"watches_1\":-1,\"blush_3\":0,\"hair_color_1\":0,\"blemishes_2\":0,\"moles_2\":0,\"cheeks_3\":0,\"lipstick_1\":0,\"chest_2\":0,\"helmet_1\":-1,\"nose_2\":0,\"sex\":0,\"mom\":21,\"neck_thickness\":0,\"makeup_4\":0,\"eyebrows_6\":0,\"makeup_3\":0,\"bags_1\":0,\"complexion_1\":0,\"eyebrows_3\":0,\"eyebrows_4\":0,\"eye_color\":0,\"bproof_1\":0,\"jaw_2\":0,\"beard_4\":0,\"hair_color_2\":0,\"chain_1\":0,\"blemishes_1\":0,\"lipstick_2\":0,\"makeup_1\":0,\"beard_1\":0,\"shoes_1\":0,\"helmet_2\":0,\"skin_md_weight\":50,\"bproof_2\":0,\"moles_1\":0,\"nose_3\":0,\"bodyb_2\":0,\"nose_4\":0,\"mask_1\":0,\"bodyb_4\":0,\"age_1\":0,\"bracelets_2\":0,\"tshirt_1\":0,\"eyebrows_1\":0,\"age_2\":0,\"pants_2\":0,\"nose_6\":0,\"chin_3\":0,\"blush_1\":0,\"ears_2\":0,\"bags_2\":0,\"beard_3\":0,\"nose_1\":0,\"arms\":0,\"decals_1\":0,\"chin_1\":0,\"hair_1\":0,\"eyebrows_5\":0,\"shoes_2\":0,\"chin_2\":0,\"decals_2\":0,\"dad\":0,\"sun_1\":0,\"torso_1\":0,\"eye_squint\":0,\"eyebrows_2\":0,\"complexion_2\":0,\"bracelets_1\":-1,\"makeup_2\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 5),
('758589edcd8573a28957ba526ed94e6dc190f560', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":211.9,\"x\":3060.7,\"y\":-4708.3,\"z\":15.3}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"chain_1\":0,\"watches_2\":0,\"chain_2\":0,\"blush_1\":0,\"eyebrows_4\":0,\"nose_5\":0,\"bodyb_3\":-1,\"makeup_4\":0,\"complexion_2\":0,\"helmet_1\":-1,\"eyebrows_1\":0,\"decals_1\":0,\"lipstick_2\":0,\"age_1\":0,\"eyebrows_3\":0,\"nose_6\":0,\"makeup_1\":0,\"face_md_weight\":50,\"hair_2\":0,\"makeup_2\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_1\":0,\"arms\":0,\"ears_1\":-1,\"chin_4\":0,\"ears_2\":0,\"hair_color_1\":0,\"moles_2\":0,\"chest_1\":0,\"beard_4\":0,\"mom\":21,\"chin_2\":0,\"eye_squint\":0,\"watches_1\":-1,\"cheeks_2\":0,\"torso_1\":0,\"blush_2\":0,\"glasses_1\":0,\"hair_1\":0,\"mask_1\":0,\"neck_thickness\":0,\"tshirt_2\":0,\"nose_1\":0,\"lipstick_4\":0,\"bodyb_2\":0,\"eyebrows_2\":0,\"helmet_2\":0,\"nose_3\":0,\"chin_1\":0,\"sun_1\":0,\"chest_2\":0,\"nose_2\":0,\"beard_1\":0,\"lip_thickness\":0,\"shoes_2\":0,\"pants_2\":0,\"arms_2\":0,\"lipstick_3\":0,\"blemishes_2\":0,\"eyebrows_5\":0,\"jaw_1\":0,\"eye_color\":0,\"sex\":0,\"dad\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"chin_3\":0,\"pants_1\":0,\"blush_3\":0,\"hair_color_2\":0,\"beard_2\":0,\"bags_1\":0,\"tshirt_1\":0,\"bodyb_4\":0,\"decals_2\":0,\"complexion_1\":0,\"shoes_1\":0,\"moles_1\":0,\"cheeks_3\":0,\"eyebrows_6\":0,\"bags_2\":0,\"skin_md_weight\":50,\"bracelets_2\":0,\"blemishes_1\":0,\"makeup_3\":0,\"chest_3\":0,\"nose_4\":0,\"glasses_2\":0,\"bodyb_1\":-1,\"jaw_2\":0,\"cheeks_1\":0,\"beard_3\":0,\"sun_2\":0,\"age_2\":0,\"torso_2\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 6),
('8a479b8c0e92ed24b173fbe87bdda1f62f2c9dba', NULL, '{\"black_money\":0,\"money\":0,\"bank\":56200}', 'user', '[]', 'unemployed', 0, '{\"WEAPON_MOLOTOV\":{\"ammo\":1}}', '{\"heading\":345.0,\"z\":82.5,\"y\":-83.4,\"x\":1019.0}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"mask_2\":0,\"beard_2\":0,\"face_md_weight\":50,\"arms_2\":0,\"hair_2\":0,\"glasses_2\":0,\"tshirt_2\":0,\"nose_5\":0,\"torso_2\":0,\"watches_2\":0,\"sun_2\":0,\"chain_2\":0,\"blush_2\":0,\"lipstick_4\":0,\"lip_thickness\":0,\"cheeks_2\":0,\"cheeks_1\":0,\"chin_4\":0,\"lipstick_3\":0,\"glasses_1\":0,\"bodyb_2\":0,\"bodyb_1\":-1,\"pants_1\":0,\"chest_3\":0,\"chest_1\":0,\"jaw_1\":0,\"bodyb_3\":-1,\"watches_1\":-1,\"blush_3\":0,\"hair_color_1\":0,\"blemishes_2\":0,\"moles_2\":0,\"cheeks_3\":0,\"bags_1\":0,\"chest_2\":0,\"helmet_1\":-1,\"age_1\":0,\"lipstick_1\":0,\"chin_3\":0,\"neck_thickness\":0,\"eyebrows_6\":0,\"nose_4\":0,\"makeup_3\":0,\"blemishes_1\":0,\"sun_1\":0,\"eyebrows_3\":0,\"complexion_2\":0,\"eye_color\":0,\"eye_squint\":0,\"jaw_2\":0,\"beard_4\":0,\"lipstick_2\":0,\"ears_1\":-1,\"hair_color_2\":0,\"eyebrows_1\":0,\"beard_3\":0,\"beard_1\":0,\"shoes_1\":0,\"bproof_2\":0,\"makeup_4\":0,\"nose_2\":0,\"moles_1\":0,\"makeup_1\":0,\"complexion_1\":0,\"skin_md_weight\":50,\"mask_1\":0,\"bodyb_4\":0,\"nose_3\":0,\"bracelets_2\":0,\"tshirt_1\":0,\"sex\":0,\"age_2\":0,\"pants_2\":0,\"nose_6\":0,\"eyebrows_4\":0,\"blush_1\":0,\"shoes_2\":0,\"bags_2\":0,\"decals_2\":0,\"nose_1\":0,\"arms\":0,\"decals_1\":0,\"chin_1\":0,\"hair_1\":0,\"eyebrows_5\":0,\"bproof_1\":0,\"chin_2\":0,\"ears_2\":0,\"dad\":0,\"chain_1\":0,\"mom\":21,\"helmet_2\":0,\"eyebrows_2\":0,\"torso_1\":0,\"bracelets_1\":-1,\"makeup_2\":0}', '[{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, 0, 7),
('9413027c5cbc3adc47537bc033b3dac46a1d0937', NULL, '{\"bank\":61200,\"black_money\":0,\"money\":0}', 'admin', '[]', 'unemployed', 0, '{\"WEAPON_CROWBAR\":{\"ammo\":10},\"WEAPON_MINIGUN\":{\"ammo\":250},\"WEAPON_RPG\":{\"ammo\":250},\"WEAPON_MOLOTOV\":{\"ammo\":250}}', '{\"heading\":96.5,\"x\":-83.0,\"y\":-810.5,\"z\":321.8}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"mask_2\":0,\"beard_4\":0,\"face_md_weight\":50,\"arms_2\":0,\"eyebrows_3\":0,\"glasses_2\":0,\"tshirt_2\":0,\"nose_5\":0,\"torso_2\":0,\"watches_2\":0,\"sun_2\":0,\"chain_2\":0,\"bproof_1\":0,\"lipstick_4\":0,\"eyebrows_4\":0,\"cheeks_2\":0,\"cheeks_1\":0,\"chin_4\":0,\"age_1\":0,\"glasses_1\":0,\"bodyb_2\":0,\"bodyb_1\":-1,\"pants_1\":1,\"chest_3\":0,\"chest_1\":0,\"jaw_1\":0,\"bodyb_3\":-1,\"watches_1\":-1,\"blush_3\":0,\"hair_color_1\":0,\"blemishes_2\":0,\"moles_2\":0,\"cheeks_3\":0,\"hair_1\":0,\"chest_2\":0,\"helmet_1\":-1,\"nose_1\":0,\"nose_2\":0,\"hair_color_2\":0,\"neck_thickness\":0,\"makeup_3\":0,\"hair_2\":0,\"chin_3\":0,\"makeup_1\":0,\"nose_3\":0,\"lip_thickness\":0,\"eyebrows_5\":0,\"nose_4\":0,\"ears_1\":-1,\"shoes_2\":0,\"bproof_2\":0,\"jaw_2\":0,\"blush_2\":0,\"lipstick_2\":0,\"eyebrows_1\":0,\"chain_1\":0,\"beard_1\":10,\"shoes_1\":3,\"makeup_2\":0,\"makeup_4\":0,\"ears_2\":0,\"moles_1\":0,\"decals_2\":0,\"torso_1\":7,\"skin_md_weight\":50,\"mask_1\":0,\"bodyb_4\":0,\"pants_2\":0,\"bracelets_2\":0,\"tshirt_1\":0,\"blemishes_1\":0,\"age_2\":0,\"beard_3\":0,\"nose_6\":0,\"beard_2\":10,\"blush_1\":0,\"eye_color\":0,\"bags_2\":0,\"bags_1\":0,\"lipstick_1\":0,\"arms\":0,\"decals_1\":0,\"chin_1\":0,\"eyebrows_6\":0,\"sex\":0,\"complexion_2\":0,\"chin_2\":0,\"lipstick_3\":0,\"dad\":0,\"sun_1\":0,\"mom\":21,\"helmet_2\":0,\"eyebrows_2\":0,\"eye_squint\":0,\"bracelets_1\":-1,\"complexion_1\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 8),
('9713617b5f3668e10d847bf1762e47692a72bf62', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"y\":6511.7,\"x\":-256.8,\"heading\":263.8,\"z\":3.4}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"shoes_1\":0,\"nose_2\":0,\"sun_1\":0,\"glasses_2\":0,\"beard_2\":0,\"makeup_3\":0,\"tshirt_2\":0,\"lipstick_1\":0,\"makeup_2\":0,\"moles_2\":0,\"chain_1\":0,\"chin_4\":0,\"hair_1\":0,\"chin_1\":0,\"eyebrows_1\":0,\"bodyb_3\":-1,\"bodyb_1\":-1,\"sex\":0,\"skin_md_weight\":50,\"mask_1\":0,\"complexion_2\":0,\"blemishes_1\":0,\"bags_2\":0,\"neck_thickness\":0,\"helmet_2\":0,\"eyebrows_6\":0,\"beard_3\":0,\"nose_3\":0,\"chin_2\":0,\"age_2\":0,\"cheeks_3\":0,\"hair_color_2\":0,\"bracelets_1\":-1,\"eyebrows_2\":0,\"chin_3\":0,\"lipstick_4\":0,\"tshirt_1\":0,\"bodyb_4\":0,\"pants_1\":0,\"eyebrows_4\":0,\"ears_2\":0,\"makeup_4\":0,\"watches_2\":0,\"blush_1\":0,\"blush_3\":0,\"moles_1\":0,\"bracelets_2\":0,\"ears_1\":-1,\"watches_1\":-1,\"torso_2\":0,\"eyebrows_3\":0,\"cheeks_1\":0,\"mom\":21,\"torso_1\":0,\"age_1\":0,\"eyebrows_5\":0,\"blush_2\":0,\"arms\":0,\"nose_5\":0,\"bodyb_2\":0,\"bags_1\":0,\"arms_2\":0,\"shoes_2\":0,\"bproof_2\":0,\"jaw_2\":0,\"mask_2\":0,\"chest_2\":0,\"bproof_1\":0,\"decals_2\":0,\"nose_6\":0,\"dad\":0,\"lipstick_2\":0,\"makeup_1\":0,\"nose_1\":0,\"eye_squint\":0,\"chest_1\":0,\"nose_4\":0,\"helmet_1\":-1,\"eye_color\":0,\"chest_3\":0,\"complexion_1\":0,\"sun_2\":0,\"beard_1\":0,\"glasses_1\":0,\"lip_thickness\":0,\"cheeks_2\":0,\"lipstick_3\":0,\"jaw_1\":0,\"blemishes_2\":0,\"face_md_weight\":50,\"hair_color_1\":0,\"chain_2\":0,\"decals_1\":0,\"hair_2\":0,\"pants_2\":0,\"beard_4\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 9),
('973785d12d7416a1f34b77bf7ad23a5bbfc4cd4d', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":323.4,\"z\":13.8,\"y\":-2728.9,\"x\":-1032.7}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[]', 0, 0, 10),
('b299ea7ae38aa538abcbbbaf087da1589ebfeecb', NULL, '{\"bank\":54800,\"money\":0,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":361.8,\"y\":1318.7,\"x\":815.7,\"heading\":65.2}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"mask_2\":0,\"beard_4\":0,\"face_md_weight\":50,\"arms_2\":0,\"hair_2\":2,\"glasses_2\":0,\"tshirt_2\":0,\"nose_5\":0,\"torso_2\":0,\"watches_2\":0,\"sun_2\":0,\"chain_2\":0,\"blush_2\":0,\"lipstick_4\":0,\"eyebrows_4\":0,\"cheeks_2\":0,\"cheeks_1\":0,\"chin_4\":0,\"age_1\":0,\"glasses_1\":0,\"ears_1\":-1,\"bodyb_1\":-1,\"pants_1\":24,\"chest_3\":0,\"chest_1\":0,\"jaw_1\":0,\"bodyb_3\":-1,\"nose_3\":0,\"blush_3\":0,\"makeup_1\":0,\"blemishes_2\":0,\"moles_2\":0,\"cheeks_3\":0,\"nose_2\":0,\"chest_2\":0,\"helmet_1\":66,\"bodyb_2\":0,\"eye_squint\":0,\"hair_color_1\":29,\"neck_thickness\":0,\"lip_thickness\":0,\"blemishes_1\":0,\"makeup_3\":0,\"pants_2\":0,\"lipstick_1\":0,\"makeup_4\":0,\"beard_2\":0,\"nose_4\":0,\"dad\":0,\"jaw_2\":0,\"eyebrows_3\":0,\"torso_1\":25,\"lipstick_2\":0,\"eyebrows_5\":0,\"decals_1\":0,\"shoes_2\":0,\"beard_1\":0,\"shoes_1\":67,\"watches_1\":-1,\"skin_md_weight\":50,\"bproof_1\":0,\"moles_1\":0,\"lipstick_3\":0,\"chin_3\":0,\"bproof_2\":0,\"mask_1\":0,\"bodyb_4\":0,\"eye_color\":0,\"bracelets_2\":0,\"tshirt_1\":6,\"makeup_2\":0,\"hair_color_2\":0,\"beard_3\":0,\"nose_6\":0,\"hair_1\":13,\"blush_1\":0,\"bags_1\":0,\"bags_2\":0,\"sun_1\":0,\"nose_1\":0,\"arms\":0,\"complexion_2\":0,\"chin_1\":0,\"eyebrows_6\":0,\"sex\":0,\"ears_2\":0,\"chin_2\":0,\"eyebrows_1\":0,\"decals_2\":0,\"chain_1\":0,\"mom\":21,\"helmet_2\":0,\"eyebrows_2\":0,\"age_2\":0,\"bracelets_1\":-1,\"complexion_1\":0}', '[{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, 0, 11),
('bacee5552e4dc9cabaa03b21ffa557b755bff36d', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":318.6,\"z\":13.8,\"y\":-2628.6,\"x\":-1067.0}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"pants_1\":0,\"moles_2\":0,\"beard_4\":0,\"lipstick_3\":0,\"blemishes_1\":0,\"sun_1\":0,\"chin_3\":0,\"moles_1\":0,\"chain_1\":0,\"watches_2\":0,\"mask_1\":0,\"cheeks_2\":0,\"mom\":21,\"nose_5\":0,\"glasses_2\":0,\"hair_color_1\":0,\"glasses_1\":0,\"eyebrows_4\":0,\"neck_thickness\":0,\"complexion_2\":0,\"chest_3\":0,\"blush_3\":0,\"bodyb_4\":0,\"face_md_weight\":50,\"beard_3\":0,\"decals_2\":0,\"bracelets_1\":-1,\"sex\":0,\"chest_2\":0,\"chin_4\":0,\"eyebrows_2\":0,\"cheeks_3\":0,\"hair_color_2\":0,\"bags_2\":0,\"complexion_1\":0,\"nose_3\":0,\"nose_1\":0,\"tshirt_1\":0,\"bodyb_2\":0,\"decals_1\":0,\"helmet_2\":0,\"ears_2\":0,\"bproof_2\":0,\"eyebrows_6\":0,\"makeup_2\":0,\"blush_2\":0,\"bracelets_2\":0,\"blush_1\":0,\"chain_2\":0,\"eyebrows_5\":0,\"jaw_2\":0,\"pants_2\":0,\"blemishes_2\":0,\"lipstick_2\":0,\"dad\":0,\"eye_color\":0,\"jaw_1\":0,\"bproof_1\":0,\"age_1\":0,\"chest_1\":0,\"bodyb_3\":-1,\"chin_2\":0,\"makeup_4\":0,\"eyebrows_1\":0,\"shoes_1\":0,\"hair_2\":0,\"makeup_1\":0,\"makeup_3\":0,\"cheeks_1\":0,\"sun_2\":0,\"ears_1\":-1,\"shoes_2\":0,\"eye_squint\":0,\"nose_4\":0,\"chin_1\":0,\"torso_1\":0,\"bags_1\":0,\"eyebrows_3\":0,\"arms\":0,\"skin_md_weight\":50,\"lipstick_4\":0,\"watches_1\":-1,\"age_2\":0,\"torso_2\":0,\"arms_2\":0,\"hair_1\":0,\"beard_2\":0,\"mask_2\":0,\"lipstick_1\":0,\"bodyb_1\":-1,\"lip_thickness\":0,\"helmet_1\":-1,\"beard_1\":0,\"nose_6\":0,\"nose_2\":0,\"tshirt_2\":0}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, 0, 12),
('c10de0bb2a24ce07e1a64644028b2808a63157aa', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"y\":-2037.8,\"x\":549.8,\"heading\":85.1,\"z\":28.2}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', 0, 0, 13),
('c6f4e89e12a0eef2fe292ac28ac290d48ec281de', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":298.0,\"x\":-1087.7,\"y\":-262.2,\"z\":19.0}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"chain_1\":4,\"watches_2\":0,\"chain_2\":0,\"cheeks_1\":0,\"eyebrows_4\":0,\"nose_5\":0,\"bodyb_3\":-1,\"bracelets_2\":0,\"blush_3\":0,\"helmet_1\":20,\"eyebrows_1\":0,\"chin_2\":0,\"lipstick_2\":0,\"age_1\":0,\"eyebrows_3\":0,\"nose_6\":0,\"makeup_1\":0,\"face_md_weight\":50,\"hair_2\":0,\"makeup_2\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_1\":0,\"arms\":0,\"ears_1\":-1,\"chin_4\":0,\"ears_2\":0,\"torso_2\":5,\"moles_2\":0,\"chest_1\":0,\"eyebrows_6\":0,\"bodyb_2\":0,\"nose_1\":0,\"eye_squint\":0,\"makeup_4\":0,\"chin_1\":0,\"torso_1\":222,\"blush_2\":0,\"glasses_1\":15,\"decals_1\":0,\"mask_1\":35,\"neck_thickness\":0,\"tshirt_2\":0,\"helmet_2\":3,\"shoes_2\":0,\"beard_4\":0,\"complexion_2\":0,\"blush_1\":0,\"nose_3\":0,\"watches_1\":-1,\"chest_3\":0,\"chest_2\":0,\"age_2\":0,\"beard_1\":0,\"mom\":21,\"sex\":0,\"pants_2\":5,\"arms_2\":0,\"lipstick_3\":0,\"blemishes_2\":0,\"jaw_2\":0,\"jaw_1\":0,\"eye_color\":0,\"lipstick_4\":0,\"sun_2\":0,\"bracelets_1\":-1,\"bproof_1\":16,\"chin_3\":0,\"pants_1\":87,\"bodyb_1\":-1,\"hair_1\":8,\"beard_2\":0,\"bags_1\":0,\"tshirt_1\":15,\"bodyb_4\":0,\"decals_2\":0,\"complexion_1\":0,\"shoes_1\":27,\"moles_1\":0,\"cheeks_3\":0,\"lip_thickness\":0,\"bags_2\":0,\"skin_md_weight\":50,\"nose_2\":0,\"blemishes_1\":0,\"makeup_3\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"glasses_2\":7,\"cheeks_2\":0,\"eyebrows_2\":0,\"eyebrows_5\":0,\"beard_3\":0,\"nose_4\":0,\"dad\":0,\"sun_1\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 14),
('d96ee4e4ee33d33d3ba43ebc36e1451e8c6783f6', NULL, '{\"black_money\":0,\"money\":0,\"bank\":50000}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":38.1,\"y\":-241.1,\"x\":-632.5,\"heading\":174.5}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"chin_3\":0,\"torso_1\":111,\"pants_2\":1,\"mask_2\":0,\"cheeks_1\":0,\"moles_1\":0,\"bags_1\":0,\"chin_2\":0,\"bproof_2\":2,\"bracelets_2\":0,\"ears_2\":0,\"nose_4\":0,\"moles_2\":0,\"jaw_1\":0,\"ears_1\":-1,\"hair_2\":4,\"nose_1\":0,\"mom\":21,\"mask_1\":169,\"blush_2\":0,\"nose_5\":0,\"chain_2\":0,\"sex\":0,\"dad\":0,\"arms_2\":2,\"bproof_1\":15,\"torso_2\":0,\"bodyb_4\":0,\"arms\":18,\"complexion_2\":0,\"tshirt_2\":0,\"nose_3\":0,\"bodyb_1\":-1,\"chin_4\":0,\"watches_1\":-1,\"jaw_2\":0,\"neck_thickness\":0,\"pants_1\":98,\"chest_3\":0,\"age_1\":0,\"makeup_4\":0,\"blush_1\":0,\"eye_color\":0,\"bags_2\":0,\"blemishes_2\":0,\"hair_color_2\":0,\"lipstick_1\":0,\"eyebrows_4\":0,\"glasses_2\":1,\"eyebrows_2\":0,\"sun_1\":0,\"skin_md_weight\":50,\"glasses_1\":5,\"eyebrows_1\":0,\"complexion_1\":0,\"makeup_2\":0,\"makeup_3\":0,\"tshirt_1\":15,\"cheeks_3\":0,\"nose_6\":0,\"chest_2\":0,\"shoes_1\":12,\"age_2\":0,\"face_md_weight\":50,\"beard_3\":0,\"eyebrows_3\":0,\"makeup_1\":0,\"helmet_1\":117,\"cheeks_2\":0,\"blush_3\":0,\"beard_1\":0,\"lip_thickness\":0,\"lipstick_2\":0,\"bodyb_2\":0,\"decals_1\":0,\"helmet_2\":0,\"eyebrows_5\":0,\"eye_squint\":0,\"chest_1\":0,\"lipstick_3\":0,\"shoes_2\":6,\"chain_1\":146,\"beard_2\":0,\"bracelets_1\":-1,\"chin_1\":0,\"eyebrows_6\":0,\"watches_2\":0,\"blemishes_1\":0,\"hair_color_1\":11,\"beard_4\":0,\"lipstick_4\":0,\"bodyb_3\":-1,\"hair_1\":21,\"sun_2\":0,\"nose_2\":0,\"decals_2\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 15),
('e18bf423c4fc6cbc68334f155d3c4e2fcf1593e5', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":211.8,\"x\":-703.6,\"y\":-244.6,\"z\":36.4}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"chain_1\":0,\"watches_2\":0,\"chain_2\":0,\"decals_2\":0,\"eyebrows_4\":0,\"nose_5\":0,\"bodyb_3\":-1,\"makeup_4\":0,\"complexion_2\":0,\"helmet_1\":147,\"eyebrows_1\":0,\"decals_1\":0,\"lipstick_2\":0,\"age_1\":0,\"eyebrows_3\":0,\"nose_6\":0,\"nose_4\":0,\"face_md_weight\":50,\"hair_2\":0,\"makeup_2\":0,\"bproof_2\":0,\"mask_2\":11,\"lipstick_1\":0,\"eyebrows_2\":0,\"ears_1\":-1,\"chin_4\":0,\"ears_2\":0,\"torso_2\":3,\"moles_2\":0,\"chest_1\":0,\"arms\":77,\"bracelets_2\":0,\"lip_thickness\":0,\"eye_squint\":0,\"makeup_1\":0,\"bodyb_2\":0,\"torso_1\":111,\"blush_2\":0,\"nose_2\":0,\"watches_1\":-1,\"mask_1\":129,\"neck_thickness\":0,\"tshirt_2\":0,\"bodyb_1\":-1,\"lipstick_4\":0,\"chin_2\":0,\"age_2\":0,\"cheeks_2\":0,\"nose_3\":0,\"chin_1\":0,\"beard_4\":0,\"chest_3\":0,\"hair_color_1\":22,\"helmet_2\":0,\"mom\":21,\"jaw_2\":0,\"pants_2\":2,\"sex\":0,\"lipstick_3\":0,\"blemishes_2\":0,\"eyebrows_5\":0,\"jaw_1\":0,\"eye_color\":0,\"hair_color_2\":22,\"dad\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"chin_3\":0,\"pants_1\":5,\"beard_1\":0,\"hair_1\":34,\"beard_2\":0,\"bags_1\":0,\"tshirt_1\":15,\"bodyb_4\":0,\"cheeks_1\":0,\"complexion_1\":0,\"shoes_1\":6,\"moles_1\":0,\"cheeks_3\":0,\"eyebrows_6\":0,\"bags_2\":0,\"skin_md_weight\":50,\"chest_2\":0,\"blemishes_1\":0,\"makeup_3\":0,\"beard_3\":0,\"nose_1\":0,\"glasses_2\":0,\"blush_1\":0,\"sun_2\":0,\"shoes_2\":0,\"sun_1\":0,\"glasses_1\":0,\"arms_2\":0,\"blush_3\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 16),
('fa0a3d2cf5b909102136a156147e33a8bd54c73a', NULL, '{\"black_money\":0,\"money\":0,\"bank\":50000}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":354.8,\"z\":6.2,\"y\":-2222.2,\"x\":-877.3}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"sun_2\":0,\"beard_2\":0,\"makeup_4\":0,\"cheeks_1\":0,\"bodyb_2\":0,\"bags_2\":0,\"makeup_3\":0,\"glasses_1\":0,\"ears_2\":0,\"helmet_2\":0,\"moles_1\":0,\"tshirt_2\":0,\"bracelets_2\":0,\"hair_color_2\":0,\"complexion_1\":0,\"makeup_2\":0,\"chest_3\":0,\"skin_md_weight\":50,\"chin_2\":0,\"chin_1\":0,\"complexion_2\":0,\"nose_1\":0,\"eye_squint\":0,\"eye_color\":0,\"nose_4\":0,\"decals_2\":0,\"eyebrows_3\":0,\"bodyb_3\":-1,\"pants_2\":0,\"bags_1\":0,\"jaw_2\":0,\"blush_2\":0,\"glasses_2\":0,\"bodyb_4\":0,\"watches_1\":-1,\"blush_1\":0,\"eyebrows_2\":0,\"neck_thickness\":0,\"mom\":21,\"lipstick_3\":0,\"eyebrows_4\":0,\"mask_1\":0,\"bproof_1\":0,\"dad\":0,\"chin_4\":0,\"chain_1\":0,\"moles_2\":0,\"hair_2\":0,\"beard_4\":0,\"nose_2\":0,\"eyebrows_5\":0,\"arms\":0,\"shoes_2\":0,\"lip_thickness\":0,\"cheeks_3\":0,\"ears_1\":-1,\"hair_color_1\":0,\"mask_2\":0,\"age_2\":0,\"jaw_1\":0,\"chain_2\":0,\"beard_3\":0,\"sun_1\":0,\"beard_1\":0,\"torso_1\":0,\"age_1\":0,\"makeup_1\":0,\"chin_3\":0,\"eyebrows_6\":0,\"bproof_2\":0,\"sex\":1,\"lipstick_4\":0,\"blush_3\":0,\"pants_1\":0,\"blemishes_2\":0,\"eyebrows_1\":0,\"cheeks_2\":0,\"face_md_weight\":50,\"helmet_1\":-1,\"chest_1\":0,\"shoes_1\":0,\"lipstick_1\":0,\"tshirt_1\":0,\"bracelets_1\":-1,\"nose_6\":0,\"watches_2\":0,\"lipstick_2\":0,\"bodyb_1\":-1,\"chest_2\":0,\"nose_3\":0,\"nose_5\":0,\"hair_1\":0,\"torso_2\":0,\"decals_1\":0,\"blemishes_1\":0,\"arms_2\":0}', '[{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, 0, 17),
('481f3f3079c3f3aeb1a4fe185281196575f60940', NULL, '{\"black_money\":0,\"money\":0,\"bank\":50000}', 'user', '[]', 'unemployed', 0, '{\"WEAPON_CROWBAR\":{\"ammo\":10}}', '{\"z\":38.1,\"y\":-226.3,\"x\":-622.2,\"heading\":290.7}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"chin_3\":0,\"torso_1\":50,\"bodyb_2\":0,\"mask_2\":0,\"cheeks_1\":0,\"moles_1\":0,\"bags_1\":47,\"chin_2\":0,\"bproof_2\":0,\"bracelets_2\":0,\"ears_2\":0,\"nose_4\":0,\"moles_2\":0,\"jaw_1\":0,\"ears_1\":-1,\"hair_2\":0,\"bags_2\":0,\"mom\":21,\"mask_1\":0,\"blush_2\":0,\"nose_5\":0,\"chain_2\":0,\"sex\":0,\"dad\":0,\"arms_2\":0,\"bproof_1\":0,\"torso_2\":0,\"bodyb_4\":0,\"arms\":17,\"hair_1\":43,\"complexion_2\":0,\"watches_2\":0,\"beard_2\":10,\"pants_1\":143,\"watches_1\":-1,\"jaw_2\":0,\"neck_thickness\":0,\"lipstick_4\":0,\"decals_1\":0,\"age_1\":0,\"nose_6\":0,\"blush_1\":0,\"glasses_1\":0,\"nose_1\":0,\"blemishes_2\":0,\"hair_color_2\":0,\"helmet_2\":20,\"eyebrows_4\":0,\"glasses_2\":0,\"cheeks_2\":0,\"chest_3\":0,\"chin_4\":0,\"bodyb_3\":-1,\"tshirt_2\":0,\"beard_3\":0,\"makeup_2\":0,\"bodyb_1\":-1,\"tshirt_1\":15,\"lipstick_3\":0,\"beard_4\":0,\"lip_thickness\":0,\"shoes_1\":60,\"nose_3\":0,\"face_md_weight\":50,\"complexion_1\":0,\"makeup_4\":0,\"makeup_1\":0,\"pants_2\":0,\"lipstick_2\":0,\"blush_3\":0,\"makeup_3\":0,\"sun_1\":0,\"chest_2\":0,\"skin_md_weight\":50,\"eyebrows_3\":0,\"eye_squint\":0,\"eyebrows_5\":0,\"cheeks_3\":0,\"chest_1\":0,\"bracelets_1\":-1,\"shoes_2\":0,\"chain_1\":26,\"age_2\":0,\"lipstick_1\":0,\"chin_1\":0,\"eyebrows_6\":0,\"beard_1\":13,\"blemishes_1\":0,\"hair_color_1\":0,\"eyebrows_1\":0,\"helmet_1\":106,\"eyebrows_2\":0,\"eye_color\":0,\"sun_2\":0,\"nose_2\":0,\"decals_2\":0}', '[{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, 0, 18),
('d730a7cc6abff51aecfcb9a2cd7bc5e29dbd16b0', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":210.1,\"x\":741.8,\"y\":1270.8,\"z\":383.2}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"chain_1\":0,\"watches_2\":0,\"chain_2\":0,\"blush_1\":0,\"eyebrows_4\":0,\"nose_5\":0,\"bodyb_3\":-1,\"age_2\":0,\"complexion_2\":0,\"helmet_1\":50,\"eyebrows_1\":0,\"decals_1\":0,\"lipstick_2\":0,\"watches_1\":-1,\"eyebrows_3\":0,\"nose_6\":0,\"makeup_1\":0,\"face_md_weight\":50,\"hair_2\":0,\"shoes_2\":0,\"bproof_2\":2,\"mask_2\":0,\"lipstick_1\":0,\"arms\":17,\"ears_1\":-1,\"chin_4\":0,\"ears_2\":0,\"torso_2\":0,\"moles_2\":0,\"chest_1\":0,\"beard_3\":0,\"chin_1\":0,\"cheeks_1\":0,\"eye_squint\":0,\"cheeks_3\":0,\"lip_thickness\":0,\"torso_1\":53,\"blush_2\":0,\"glasses_1\":0,\"jaw_2\":0,\"mask_1\":35,\"neck_thickness\":0,\"tshirt_2\":0,\"sun_2\":0,\"hair_color_1\":0,\"eyebrows_5\":0,\"nose_1\":0,\"age_1\":0,\"nose_3\":0,\"mom\":21,\"pants_1\":4,\"chest_3\":0,\"blush_3\":0,\"helmet_2\":0,\"hair_color_2\":0,\"nose_2\":0,\"pants_2\":0,\"sex\":0,\"lipstick_3\":0,\"blemishes_2\":0,\"beard_4\":0,\"jaw_1\":0,\"eye_color\":0,\"decals_2\":0,\"dad\":0,\"bracelets_1\":-1,\"bproof_1\":16,\"chin_3\":0,\"bodyb_1\":-1,\"chest_2\":0,\"hair_1\":3,\"beard_2\":0,\"bags_1\":0,\"tshirt_1\":15,\"bodyb_4\":0,\"bodyb_2\":0,\"complexion_1\":0,\"shoes_1\":1,\"moles_1\":0,\"lipstick_4\":0,\"eyebrows_6\":0,\"bags_2\":0,\"skin_md_weight\":50,\"arms_2\":0,\"blemishes_1\":0,\"makeup_3\":0,\"makeup_4\":0,\"chin_2\":0,\"glasses_2\":0,\"beard_1\":0,\"bracelets_2\":0,\"eyebrows_2\":0,\"sun_1\":0,\"cheeks_2\":0,\"nose_4\":0,\"makeup_2\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 19),
('3be6dc9c3353a885c9fdb724bf8ed1d904fa6432', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":0.0,\"x\":663.4,\"y\":1217.2,\"z\":182.5}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"chain_1\":0,\"watches_2\":0,\"chain_2\":0,\"decals_2\":0,\"eyebrows_4\":0,\"mom\":21,\"bodyb_3\":-1,\"bracelets_2\":0,\"blush_3\":0,\"helmet_1\":50,\"eyebrows_1\":0,\"chin_2\":0,\"lipstick_2\":0,\"watches_1\":-1,\"eyebrows_3\":0,\"nose_6\":0,\"nose_4\":0,\"face_md_weight\":50,\"hair_2\":0,\"nose_2\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_1\":0,\"arms\":0,\"ears_1\":-1,\"chin_4\":0,\"ears_2\":0,\"hair_color_1\":0,\"moles_2\":0,\"chest_1\":0,\"jaw_2\":0,\"pants_1\":0,\"nose_1\":0,\"eye_squint\":0,\"hair_color_2\":0,\"cheeks_1\":0,\"torso_1\":0,\"blush_2\":0,\"sun_1\":0,\"pants_2\":0,\"mask_1\":0,\"neck_thickness\":0,\"tshirt_2\":0,\"chin_1\":0,\"blush_1\":0,\"cheeks_3\":0,\"eyebrows_5\":0,\"makeup_1\":0,\"nose_3\":0,\"makeup_2\":0,\"complexion_2\":0,\"chest_3\":0,\"torso_2\":0,\"beard_1\":0,\"bodyb_2\":0,\"glasses_1\":0,\"cheeks_2\":0,\"sex\":0,\"lipstick_3\":0,\"blemishes_2\":0,\"beard_4\":0,\"jaw_1\":0,\"eye_color\":0,\"chest_2\":0,\"dad\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"chin_3\":0,\"bodyb_1\":-1,\"eyebrows_6\":0,\"hair_1\":0,\"beard_2\":0,\"bags_1\":0,\"tshirt_1\":0,\"bodyb_4\":0,\"eyebrows_2\":0,\"complexion_1\":0,\"shoes_1\":0,\"moles_1\":0,\"lipstick_4\":0,\"lip_thickness\":0,\"bags_2\":0,\"skin_md_weight\":50,\"nose_5\":0,\"blemishes_1\":0,\"makeup_3\":0,\"age_2\":0,\"makeup_4\":0,\"glasses_2\":0,\"helmet_2\":0,\"age_1\":0,\"arms_2\":0,\"beard_3\":0,\"shoes_2\":0,\"sun_2\":0,\"decals_1\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 20),
('fbfc4a5be8a0631a1c7ef288c011082eebf6d5fc', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":127.4,\"x\":-70.5,\"y\":-815.6,\"z\":326.2}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"chain_1\":0,\"watches_2\":0,\"chain_2\":0,\"decals_2\":0,\"eyebrows_4\":0,\"nose_5\":0,\"bodyb_3\":-1,\"makeup_4\":0,\"chin_1\":0,\"helmet_1\":-1,\"eyebrows_1\":0,\"decals_1\":0,\"lipstick_2\":0,\"watches_1\":-1,\"eyebrows_3\":0,\"nose_6\":0,\"nose_4\":0,\"face_md_weight\":50,\"hair_2\":0,\"makeup_2\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_1\":0,\"eyebrows_2\":0,\"ears_1\":-1,\"chin_4\":0,\"ears_2\":0,\"hair_color_1\":0,\"moles_2\":0,\"chest_1\":0,\"bracelets_2\":0,\"sun_1\":0,\"arms\":0,\"eye_squint\":0,\"beard_4\":0,\"age_2\":0,\"torso_1\":50,\"blush_2\":0,\"pants_1\":5,\"chest_2\":0,\"mask_1\":0,\"neck_thickness\":0,\"tshirt_2\":0,\"makeup_1\":0,\"cheeks_3\":0,\"eyebrows_5\":0,\"hair_1\":47,\"complexion_2\":0,\"nose_3\":0,\"bodyb_2\":0,\"sun_2\":0,\"chest_3\":0,\"blush_3\":0,\"helmet_2\":0,\"blush_1\":0,\"mom\":21,\"pants_2\":0,\"sex\":0,\"lipstick_3\":0,\"blemishes_2\":0,\"jaw_2\":0,\"jaw_1\":0,\"eye_color\":0,\"nose_2\":0,\"dad\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"chin_3\":0,\"bodyb_1\":-1,\"beard_1\":0,\"hair_color_2\":0,\"beard_2\":0,\"bags_1\":0,\"tshirt_1\":15,\"bodyb_4\":0,\"cheeks_1\":0,\"complexion_1\":0,\"shoes_1\":0,\"moles_1\":0,\"lipstick_4\":0,\"eyebrows_6\":0,\"bags_2\":0,\"skin_md_weight\":50,\"glasses_1\":0,\"blemishes_1\":0,\"makeup_3\":0,\"cheeks_2\":0,\"arms_2\":0,\"glasses_2\":0,\"shoes_2\":0,\"chin_2\":0,\"torso_2\":0,\"beard_3\":0,\"nose_1\":0,\"lip_thickness\":0,\"age_1\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 21),
('40d836bfa4f72c87eb0cb959fbc49e666344b77f', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":13.8,\"heading\":30.9,\"x\":-1050.6,\"y\":-2597.2}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"chain_1\":0,\"watches_2\":0,\"bodyb_2\":0,\"blush_1\":0,\"eyebrows_4\":0,\"mom\":21,\"bodyb_3\":-1,\"makeup_4\":0,\"chin_1\":0,\"helmet_1\":-1,\"eyebrows_1\":0,\"decals_1\":0,\"lipstick_2\":0,\"watches_1\":-1,\"eyebrows_3\":0,\"nose_6\":0,\"makeup_1\":0,\"face_md_weight\":50,\"hair_2\":0,\"shoes_2\":0,\"glasses_1\":0,\"mask_2\":0,\"lipstick_1\":0,\"arms\":0,\"ears_1\":-1,\"chin_4\":0,\"ears_2\":0,\"hair_color_1\":0,\"moles_2\":0,\"chest_1\":0,\"nose_2\":0,\"hair_color_2\":0,\"nose_4\":0,\"eye_squint\":0,\"chest_3\":0,\"sun_2\":0,\"torso_1\":0,\"blush_2\":0,\"makeup_2\":0,\"cheeks_2\":0,\"mask_1\":0,\"neck_thickness\":0,\"tshirt_2\":0,\"chain_2\":0,\"torso_2\":0,\"nose_5\":0,\"lip_thickness\":0,\"eyebrows_2\":0,\"nose_3\":0,\"nose_1\":0,\"arms_2\":0,\"chest_2\":0,\"complexion_2\":0,\"helmet_2\":0,\"age_2\":0,\"age_1\":0,\"pants_2\":0,\"sex\":0,\"lipstick_3\":0,\"blemishes_2\":0,\"eyebrows_5\":0,\"jaw_1\":0,\"eye_color\":0,\"bodyb_1\":-1,\"dad\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"chin_3\":0,\"pants_1\":0,\"jaw_2\":0,\"hair_1\":0,\"beard_2\":0,\"bags_1\":0,\"tshirt_1\":0,\"bodyb_4\":0,\"cheeks_1\":0,\"complexion_1\":0,\"shoes_1\":0,\"moles_1\":0,\"lipstick_4\":0,\"eyebrows_6\":0,\"bags_2\":0,\"skin_md_weight\":50,\"bracelets_2\":0,\"blemishes_1\":0,\"makeup_3\":0,\"blush_3\":0,\"decals_2\":0,\"glasses_2\":0,\"bproof_2\":0,\"beard_1\":0,\"cheeks_3\":0,\"sun_1\":0,\"beard_4\":0,\"chin_2\":0,\"beard_3\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 22),
('91fccb7f9c806411ac7d3719d655699f7ca3bb0a', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":245.3,\"x\":-642.7,\"y\":-231.7,\"z\":37.8}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 23),
('09547ea828c6597feb160439c04c5e43bd586602', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":123.7,\"x\":-632.3,\"y\":-237.8,\"z\":38.1}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"chain_1\":0,\"watches_2\":0,\"bodyb_2\":0,\"cheeks_1\":0,\"eyebrows_4\":0,\"nose_5\":0,\"bodyb_3\":-1,\"age_2\":0,\"blush_3\":0,\"helmet_1\":-1,\"eyebrows_1\":0,\"decals_1\":0,\"lipstick_2\":0,\"watches_1\":-1,\"eyebrows_3\":0,\"nose_6\":0,\"nose_4\":0,\"face_md_weight\":50,\"hair_2\":0,\"shoes_2\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_1\":0,\"arms\":0,\"ears_1\":-1,\"chin_4\":0,\"ears_2\":0,\"torso_2\":0,\"moles_2\":0,\"chest_1\":0,\"makeup_2\":0,\"pants_2\":0,\"jaw_2\":0,\"eye_squint\":0,\"bodyb_1\":-1,\"nose_1\":0,\"torso_1\":25,\"blush_2\":0,\"hair_1\":4,\"makeup_4\":0,\"mask_1\":0,\"neck_thickness\":0,\"tshirt_2\":2,\"glasses_1\":0,\"chin_2\":0,\"mom\":21,\"helmet_2\":0,\"sun_2\":0,\"nose_3\":0,\"eyebrows_2\":0,\"lipstick_4\":0,\"chest_2\":0,\"age_1\":0,\"beard_1\":0,\"chain_2\":0,\"lip_thickness\":0,\"cheeks_2\":0,\"arms_2\":0,\"lipstick_3\":0,\"blemishes_2\":0,\"beard_4\":0,\"jaw_1\":0,\"eye_color\":0,\"nose_2\":0,\"dad\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"chin_3\":0,\"pants_1\":17,\"makeup_1\":0,\"hair_color_2\":0,\"beard_2\":0,\"bags_1\":0,\"tshirt_1\":6,\"bodyb_4\":0,\"blush_1\":0,\"complexion_1\":0,\"shoes_1\":1,\"moles_1\":0,\"cheeks_3\":0,\"eyebrows_6\":0,\"bags_2\":0,\"skin_md_weight\":50,\"sun_1\":0,\"blemishes_1\":0,\"makeup_3\":0,\"bracelets_2\":0,\"chin_1\":0,\"glasses_2\":0,\"chest_3\":0,\"sex\":0,\"eyebrows_5\":0,\"beard_3\":0,\"hair_color_1\":0,\"decals_2\":0,\"complexion_2\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 24),
('019d663b456af7c16b8ac4f56f4a405cb0f0f67c', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":175.0,\"heading\":66.5,\"z\":141.9,\"y\":228.8}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"blemishes_1\":0,\"nose_1\":0,\"chain_2\":0,\"torso_2\":0,\"pants_1\":0,\"hair_color_1\":0,\"pants_2\":0,\"arms\":0,\"hair_color_2\":0,\"beard_4\":0,\"glasses_2\":0,\"chest_2\":0,\"lipstick_2\":0,\"nose_4\":0,\"hair_1\":0,\"lip_thickness\":0,\"sun_1\":0,\"blush_3\":0,\"bracelets_2\":0,\"eyebrows_6\":0,\"decals_2\":0,\"eyebrows_1\":0,\"watches_2\":0,\"makeup_4\":0,\"ears_2\":0,\"watches_1\":-1,\"jaw_2\":0,\"helmet_1\":-1,\"lipstick_3\":0,\"makeup_2\":0,\"makeup_3\":0,\"lipstick_4\":0,\"cheeks_1\":0,\"blemishes_2\":0,\"makeup_1\":0,\"chest_1\":0,\"beard_3\":0,\"glasses_1\":0,\"mask_2\":0,\"mom\":21,\"torso_1\":10,\"bproof_2\":0,\"blush_2\":0,\"chin_3\":0,\"jaw_1\":0,\"bproof_1\":0,\"ears_1\":-1,\"face_md_weight\":50,\"cheeks_3\":0,\"sun_2\":0,\"chest_3\":0,\"cheeks_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"nose_5\":0,\"mask_1\":0,\"bodyb_3\":-1,\"eyebrows_4\":0,\"moles_1\":0,\"chin_2\":0,\"chain_1\":0,\"helmet_2\":0,\"eye_color\":0,\"blush_1\":0,\"hair_2\":0,\"bags_1\":0,\"tshirt_1\":4,\"moles_2\":0,\"shoes_1\":0,\"nose_3\":1,\"bodyb_4\":0,\"bags_2\":0,\"shoes_2\":0,\"complexion_2\":0,\"age_1\":0,\"chin_4\":0,\"eyebrows_5\":0,\"beard_1\":0,\"chin_1\":0,\"bodyb_1\":-1,\"neck_thickness\":0,\"sex\":0,\"eye_squint\":0,\"lipstick_1\":0,\"bracelets_1\":-1,\"tshirt_2\":1,\"arms_2\":0,\"complexion_1\":0,\"eyebrows_2\":0,\"nose_6\":0,\"beard_2\":0,\"dad\":2,\"bodyb_2\":0,\"skin_md_weight\":50,\"nose_2\":0,\"decals_1\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 25),
('6d0ef8915ffa8cf4b03354208e1509555af8d018', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":395.8,\"heading\":161.1,\"z\":136.9,\"y\":66.8}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"chain_1\":0,\"watches_2\":0,\"chain_2\":0,\"cheeks_1\":0,\"eyebrows_4\":0,\"mom\":21,\"bodyb_3\":-1,\"bracelets_2\":0,\"chin_1\":0,\"helmet_1\":-1,\"eyebrows_1\":0,\"chin_2\":0,\"lipstick_2\":0,\"watches_1\":-1,\"eyebrows_3\":0,\"nose_6\":0,\"makeup_1\":0,\"face_md_weight\":50,\"hair_2\":0,\"nose_2\":10,\"glasses_1\":0,\"mask_2\":0,\"lipstick_1\":0,\"arms\":11,\"ears_1\":-1,\"chin_4\":0,\"ears_2\":0,\"torso_2\":0,\"moles_2\":0,\"chest_1\":0,\"eyebrows_2\":0,\"hair_color_2\":1,\"blush_1\":0,\"eye_squint\":0,\"eyebrows_5\":0,\"bodyb_2\":0,\"torso_1\":4,\"blush_2\":0,\"sex\":0,\"sun_1\":0,\"mask_1\":53,\"neck_thickness\":0,\"tshirt_2\":0,\"makeup_2\":0,\"decals_2\":0,\"makeup_4\":0,\"nose_5\":0,\"decals_1\":0,\"nose_3\":0,\"jaw_2\":0,\"blush_3\":0,\"chest_3\":0,\"chest_2\":0,\"helmet_2\":0,\"cheeks_2\":2,\"nose_1\":0,\"pants_2\":0,\"arms_2\":0,\"lipstick_3\":0,\"blemishes_2\":0,\"beard_4\":0,\"jaw_1\":0,\"eye_color\":0,\"bodyb_1\":-1,\"sun_2\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"chin_3\":0,\"pants_1\":3,\"nose_4\":0,\"hair_1\":38,\"beard_2\":0,\"bags_1\":0,\"tshirt_1\":0,\"bodyb_4\":0,\"age_1\":0,\"complexion_1\":0,\"shoes_1\":0,\"moles_1\":0,\"lipstick_4\":0,\"lip_thickness\":0,\"bags_2\":0,\"skin_md_weight\":62,\"age_2\":0,\"blemishes_1\":0,\"makeup_3\":0,\"bproof_2\":0,\"complexion_2\":0,\"glasses_2\":0,\"cheeks_3\":0,\"dad\":5,\"shoes_2\":0,\"beard_3\":0,\"eyebrows_6\":0,\"hair_color_1\":29,\"beard_1\":0}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, 0, 26),
('fe0ade28aff445845ddd37799553568e0c540041', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":200.8,\"heading\":213.2,\"z\":104.9,\"y\":195.5}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"chain_1\":0,\"watches_2\":0,\"chain_2\":0,\"blush_1\":0,\"eyebrows_4\":0,\"nose_5\":0,\"bodyb_3\":-1,\"age_2\":0,\"chin_1\":0,\"helmet_1\":-1,\"eyebrows_1\":0,\"chin_2\":0,\"lipstick_2\":0,\"watches_1\":-1,\"eyebrows_3\":0,\"nose_6\":0,\"nose_4\":0,\"face_md_weight\":50,\"hair_2\":0,\"shoes_2\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_1\":0,\"eyebrows_2\":0,\"ears_1\":-1,\"chin_4\":0,\"ears_2\":0,\"torso_2\":0,\"moles_2\":0,\"chest_1\":0,\"makeup_1\":0,\"arms_2\":0,\"bodyb_1\":-1,\"eye_squint\":0,\"arms\":0,\"glasses_1\":0,\"torso_1\":0,\"blush_2\":0,\"hair_1\":0,\"mom\":22,\"mask_1\":0,\"neck_thickness\":0,\"tshirt_2\":0,\"beard_1\":0,\"eyebrows_6\":0,\"cheeks_2\":0,\"makeup_4\":0,\"nose_1\":0,\"nose_3\":0,\"cheeks_1\":0,\"lipstick_4\":0,\"chest_2\":0,\"sun_2\":0,\"helmet_2\":0,\"makeup_2\":0,\"decals_1\":0,\"pants_2\":0,\"sex\":0,\"lipstick_3\":0,\"blemishes_2\":0,\"eyebrows_5\":0,\"jaw_1\":0,\"eye_color\":0,\"nose_2\":0,\"dad\":4,\"bracelets_1\":-1,\"bproof_1\":0,\"chin_3\":0,\"pants_1\":0,\"chest_3\":0,\"hair_color_2\":0,\"beard_2\":0,\"bags_1\":0,\"tshirt_1\":0,\"bodyb_4\":0,\"bodyb_2\":0,\"complexion_1\":0,\"shoes_1\":0,\"moles_1\":0,\"cheeks_3\":0,\"lip_thickness\":0,\"bags_2\":0,\"skin_md_weight\":50,\"age_1\":0,\"blemishes_1\":0,\"makeup_3\":0,\"bracelets_2\":0,\"blush_3\":0,\"glasses_2\":0,\"decals_2\":0,\"jaw_2\":0,\"hair_color_1\":0,\"beard_3\":0,\"beard_4\":0,\"sun_1\":0,\"complexion_2\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 27),
('9284a475e223ba44877a792a3e6216af0290bbb2', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":57.1,\"heading\":316.6,\"x\":1299.0,\"y\":-751.4}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"watches_2\":0,\"chin_2\":0,\"face_md_weight\":100,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"eye_color\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"decals_2\":0,\"torso_1\":389,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"hair_color_1\":29,\"decals_1\":0,\"makeup_1\":0,\"moles_1\":0,\"chest_2\":0,\"pants_1\":14,\"skin_md_weight\":13,\"lipstick_4\":0,\"eyebrows_5\":0,\"nose_6\":0,\"hair_1\":50,\"chin_3\":0,\"cheeks_1\":0,\"bags_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"cheeks_2\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"cheeks_3\":0,\"mask_1\":169,\"glasses_2\":0,\"age_1\":0,\"nose_1\":0,\"blush_1\":0,\"bodyb_3\":-1,\"shoes_1\":83,\"nose_4\":0,\"bodyb_4\":0,\"pants_2\":1,\"bproof_1\":0,\"makeup_4\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"watches_1\":-1,\"sun_2\":0,\"lipstick_1\":0,\"blemishes_2\":0,\"age_2\":0,\"sun_1\":0,\"arms\":0,\"blush_3\":0,\"eye_squint\":0,\"beard_4\":0,\"helmet_2\":0,\"torso_2\":0,\"helmet_1\":-1,\"ears_1\":-1,\"neck_thickness\":0,\"beard_1\":0,\"jaw_2\":0,\"chin_4\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"glasses_1\":25,\"makeup_3\":0,\"tshirt_1\":15,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"jaw_1\":0,\"moles_2\":0,\"hair_color_2\":0,\"nose_5\":0,\"nose_2\":0,\"chin_1\":0,\"chain_1\":0,\"ears_2\":0,\"complexion_2\":0,\"lip_thickness\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 28),
('bb27fd6d7024f42525cefc445b9695a41e601e34', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":57.6,\"heading\":40.6,\"x\":1153.0,\"y\":-661.3}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 29),
('5cb28090035dcd277e57c7c97211e018a573c7cb', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":1747.4,\"y\":2998.7,\"z\":63.7,\"heading\":9.9}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"watches_2\":0,\"shoes_1\":0,\"lipstick_2\":0,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"makeup_4\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"age_1\":0,\"torso_1\":0,\"bodyb_2\":0,\"sex\":1,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"hair_color_1\":5,\"makeup_2\":0,\"makeup_1\":0,\"moles_1\":0,\"chest_2\":0,\"eye_squint\":0,\"skin_md_weight\":50,\"lipstick_4\":0,\"eyebrows_5\":0,\"blemishes_2\":0,\"hair_1\":3,\"chin_3\":0,\"cheeks_1\":0,\"bags_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"cheeks_2\":0,\"beard_3\":0,\"tshirt_2\":4,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"mask_1\":0,\"jaw_2\":0,\"helmet_1\":-1,\"chain_1\":0,\"bproof_1\":0,\"blush_1\":0,\"chin_2\":0,\"decals_1\":1,\"nose_4\":0,\"bodyb_4\":0,\"pants_1\":9,\"cheeks_3\":0,\"hair_color_2\":1,\"eyebrows_2\":0,\"chin_1\":0,\"tshirt_1\":0,\"sun_2\":0,\"lipstick_1\":0,\"beard_4\":0,\"age_2\":0,\"sun_1\":0,\"jaw_1\":0,\"face_md_weight\":50,\"makeup_3\":0,\"arms\":0,\"helmet_2\":0,\"neck_thickness\":0,\"nose_5\":0,\"ears_1\":-1,\"ears_2\":0,\"beard_1\":0,\"blush_3\":0,\"pants_2\":3,\"lipstick_3\":0,\"eye_color\":0,\"glasses_1\":0,\"bodyb_3\":-1,\"glasses_2\":0,\"mom\":23,\"mask_2\":0,\"blush_2\":0,\"decals_2\":0,\"nose_1\":0,\"chin_4\":0,\"torso_2\":15,\"nose_2\":0,\"nose_6\":0,\"complexion_2\":0,\"moles_2\":0,\"watches_1\":-1,\"lip_thickness\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 30),
('3c9c5321ff0780cb587fef73b3713dd8cab2e041', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":1586.3,\"y\":2911.1,\"z\":62.6,\"heading\":359.3}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"watches_2\":0,\"chin_2\":0,\"face_md_weight\":50,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"makeup_4\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"age_1\":0,\"torso_2\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"hair_color_1\":0,\"decals_1\":0,\"pants_2\":0,\"moles_1\":0,\"chest_2\":0,\"pants_1\":0,\"skin_md_weight\":50,\"moles_2\":0,\"eyebrows_5\":0,\"nose_6\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"bags_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"cheeks_2\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"cheeks_3\":0,\"eye_squint\":0,\"blemishes_2\":0,\"arms\":0,\"jaw_1\":0,\"blush_1\":0,\"helmet_2\":0,\"chin_1\":0,\"nose_4\":0,\"bodyb_4\":0,\"chain_1\":0,\"makeup_2\":0,\"torso_1\":0,\"eyebrows_2\":0,\"blush_3\":0,\"bodyb_3\":-1,\"sun_2\":0,\"lipstick_1\":0,\"decals_2\":0,\"age_2\":0,\"sun_1\":0,\"beard_4\":0,\"shoes_1\":0,\"makeup_1\":0,\"neck_thickness\":0,\"hair_color_2\":0,\"mask_1\":0,\"helmet_1\":-1,\"ears_1\":-1,\"eye_color\":0,\"beard_1\":0,\"jaw_2\":0,\"chin_4\":0,\"lipstick_3\":0,\"bproof_1\":0,\"glasses_1\":0,\"makeup_3\":0,\"lipstick_2\":0,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"complexion_2\":0,\"nose_1\":0,\"tshirt_1\":0,\"nose_5\":0,\"nose_2\":0,\"glasses_2\":0,\"lipstick_4\":0,\"ears_2\":0,\"watches_1\":-1,\"lip_thickness\":0}', '[{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, 0, 31),
('9496f9dfed6a3656e9e00359eb9faf8f03efa138', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":1745.0,\"y\":3031.7,\"z\":62.2,\"heading\":300.4}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, 0, 32),
('426848f0f4f2ed17e60ae463b74e050e1641f6f3', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":-170.7,\"heading\":80.7,\"x\":1628.5,\"y\":3104.9}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"watches_2\":0,\"chin_2\":0,\"face_md_weight\":50,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"eye_color\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"decals_2\":0,\"torso_2\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"hair_color_1\":0,\"decals_1\":0,\"makeup_1\":0,\"moles_1\":0,\"chest_2\":0,\"pants_1\":0,\"skin_md_weight\":50,\"moles_2\":0,\"eyebrows_5\":0,\"nose_6\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"ears_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"cheeks_2\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"cheeks_3\":0,\"mask_1\":0,\"age_1\":0,\"bags_2\":0,\"nose_1\":0,\"blush_1\":0,\"blush_3\":0,\"torso_1\":0,\"nose_4\":0,\"bodyb_4\":0,\"chain_1\":0,\"blemishes_2\":0,\"nose_5\":0,\"eyebrows_2\":0,\"hair_color_2\":0,\"makeup_4\":0,\"sun_2\":0,\"lipstick_1\":0,\"bproof_1\":0,\"age_2\":0,\"sun_1\":0,\"lipstick_4\":0,\"jaw_1\":0,\"makeup_2\":0,\"arms\":0,\"helmet_2\":0,\"lipstick_2\":0,\"chin_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"beard_1\":0,\"jaw_2\":0,\"eye_squint\":0,\"lipstick_3\":0,\"shoes_1\":0,\"glasses_1\":0,\"bodyb_3\":-1,\"helmet_1\":-1,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"watches_1\":-1,\"tshirt_1\":0,\"pants_2\":0,\"neck_thickness\":0,\"nose_2\":0,\"glasses_2\":0,\"chin_4\":0,\"beard_4\":0,\"complexion_2\":0,\"lip_thickness\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 33);
INSERT INTO `users` (`identifier`, `name`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `position`, `is_dead`, `dob`, `is_male`, `accessories`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `phone_number`, `last_property`, `skin`, `status`, `jail`, `disabled`, `jbg`) VALUES
('9accfa8f3d76c0dda45a4822abfdef2feacb98ed', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":105.5,\"heading\":328.9,\"x\":222.4,\"y\":204.9}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"watches_2\":0,\"shoes_1\":0,\"face_md_weight\":50,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"eye_color\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"age_1\":0,\"torso_2\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"hair_color_1\":0,\"decals_1\":0,\"makeup_1\":0,\"moles_1\":0,\"chest_2\":0,\"pants_1\":0,\"skin_md_weight\":50,\"lipstick_4\":0,\"eyebrows_5\":0,\"blemishes_2\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"bags_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"cheeks_2\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"mask_1\":0,\"chin_4\":0,\"glasses_2\":0,\"bodyb_3\":-1,\"bproof_1\":0,\"blush_1\":0,\"cheeks_3\":0,\"chain_1\":0,\"nose_4\":0,\"bodyb_4\":0,\"jaw_1\":0,\"pants_2\":0,\"ears_2\":0,\"eyebrows_2\":0,\"complexion_2\":0,\"torso_1\":0,\"sun_2\":0,\"lipstick_1\":0,\"nose_5\":0,\"age_2\":0,\"sun_1\":0,\"makeup_4\":0,\"jaw_2\":0,\"chin_2\":0,\"neck_thickness\":0,\"hair_color_2\":0,\"nose_6\":0,\"helmet_1\":-1,\"ears_1\":-1,\"decals_2\":0,\"beard_1\":0,\"blush_3\":0,\"chin_1\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"glasses_1\":0,\"makeup_3\":0,\"eye_squint\":0,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"helmet_2\":0,\"nose_1\":0,\"tshirt_1\":0,\"arms\":0,\"nose_2\":0,\"makeup_2\":0,\"beard_4\":0,\"moles_2\":0,\"watches_1\":-1,\"lip_thickness\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 34),
('06ccebef95e2eee85c9f2064a3d1ad37ec583eaa', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":38.0,\"heading\":75.9,\"x\":-636.8,\"y\":-237.7}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"lipstick_3\":0,\"shoes_1\":0,\"face_md_weight\":50,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"eye_color\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"age_1\":0,\"torso_1\":10,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"tshirt_1\":0,\"makeup_2\":0,\"makeup_1\":0,\"moles_1\":0,\"chest_2\":0,\"eye_squint\":0,\"skin_md_weight\":50,\"moles_2\":0,\"eyebrows_5\":0,\"blemishes_2\":0,\"hair_1\":8,\"chin_3\":0,\"cheeks_1\":0,\"ears_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"cheeks_2\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"mask_1\":0,\"bproof_1\":0,\"chin_4\":0,\"bags_2\":0,\"nose_1\":0,\"blush_1\":0,\"chin_2\":0,\"nose_6\":0,\"nose_4\":0,\"bodyb_4\":0,\"jaw_1\":0,\"beard_4\":0,\"torso_2\":1,\"eyebrows_2\":0,\"lipstick_2\":0,\"lipstick_4\":0,\"sun_2\":0,\"lipstick_1\":0,\"blush_3\":0,\"age_2\":0,\"sun_1\":0,\"neck_thickness\":0,\"helmet_2\":0,\"complexion_2\":0,\"arms\":0,\"hair_color_2\":0,\"watches_2\":0,\"helmet_1\":-1,\"ears_1\":-1,\"nose_5\":0,\"beard_1\":0,\"jaw_2\":0,\"pants_2\":0,\"makeup_4\":0,\"glasses_2\":0,\"glasses_1\":0,\"makeup_3\":0,\"cheeks_3\":0,\"mom\":22,\"mask_2\":0,\"blush_2\":0,\"decals_2\":0,\"pants_1\":0,\"bodyb_3\":-1,\"decals_1\":0,\"nose_2\":0,\"chain_1\":0,\"hair_color_1\":0,\"chin_1\":0,\"watches_1\":-1,\"lip_thickness\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 35),
('1bc58bf5f4a2c8e0271c619121cb6371535e255d', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":32.4,\"heading\":116.2,\"x\":-244.7,\"y\":6330.6}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"watches_2\":0,\"shoes_1\":0,\"lipstick_2\":0,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"makeup_4\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"decals_2\":0,\"torso_1\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"tshirt_1\":0,\"decals_1\":0,\"pants_2\":0,\"moles_1\":0,\"chest_2\":0,\"eye_squint\":0,\"skin_md_weight\":50,\"lipstick_4\":0,\"eyebrows_5\":0,\"blemishes_2\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"ears_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"cheeks_2\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"mask_1\":0,\"lipstick_3\":0,\"neck_thickness\":0,\"jaw_2\":0,\"nose_1\":0,\"blush_1\":0,\"torso_2\":0,\"chin_4\":0,\"nose_4\":0,\"bodyb_4\":0,\"cheeks_3\":0,\"chin_1\":0,\"bodyb_3\":-1,\"eyebrows_2\":0,\"face_md_weight\":50,\"age_1\":0,\"sun_2\":0,\"lipstick_1\":0,\"eye_color\":0,\"age_2\":0,\"sun_1\":0,\"hair_color_1\":0,\"chin_2\":0,\"moles_2\":0,\"arms\":0,\"hair_color_2\":0,\"bproof_1\":0,\"nose_5\":0,\"ears_1\":-1,\"pants_1\":0,\"beard_1\":0,\"blush_3\":0,\"glasses_2\":0,\"complexion_2\":0,\"jaw_1\":0,\"glasses_1\":0,\"makeup_3\":0,\"chain_1\":0,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"makeup_2\":0,\"nose_6\":0,\"makeup_1\":0,\"beard_4\":0,\"nose_2\":0,\"helmet_2\":0,\"helmet_1\":-1,\"bags_2\":0,\"watches_1\":-1,\"lip_thickness\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 36),
('0a23a85c11ec498911230a6bb9f07e5967ecbb4a', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":13.8,\"heading\":325.5,\"x\":-1038.3,\"y\":-2736.4}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[]', 0, 0, 37),
('1913a349bcf2864f723f39044b194edc96a51e1d', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":13.8,\"heading\":342.1,\"x\":-1033.1,\"y\":-2719.5}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 38),
('99ca2d4307397eb9376893e4abd8177484960021', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":13.9,\"heading\":299.8,\"x\":-1059.4,\"y\":-2703.6}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"watches_2\":0,\"shoes_1\":0,\"face_md_weight\":50,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"makeup_4\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"age_1\":0,\"torso_1\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"tshirt_1\":0,\"makeup_2\":0,\"pants_2\":0,\"moles_1\":0,\"chest_2\":0,\"pants_1\":0,\"skin_md_weight\":50,\"lipstick_4\":0,\"eyebrows_5\":0,\"nose_6\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"ears_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"chain_1\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"mask_1\":0,\"moles_2\":0,\"eye_color\":0,\"eye_squint\":0,\"nose_1\":0,\"blush_1\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"nose_4\":0,\"bodyb_4\":0,\"helmet_1\":-1,\"cheeks_2\":0,\"chin_1\":0,\"eyebrows_2\":0,\"hair_color_1\":0,\"cheeks_3\":0,\"sun_2\":0,\"lipstick_1\":0,\"glasses_2\":0,\"age_2\":0,\"sun_1\":0,\"makeup_3\":0,\"chin_4\":0,\"watches_1\":-1,\"arms\":0,\"helmet_2\":0,\"jaw_2\":0,\"nose_5\":0,\"ears_1\":-1,\"decals_1\":0,\"beard_1\":0,\"blush_3\":0,\"bags_2\":0,\"lipstick_3\":0,\"chin_2\":0,\"glasses_1\":0,\"bodyb_3\":-1,\"decals_2\":0,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"bproof_1\":0,\"jaw_1\":0,\"torso_2\":0,\"blemishes_2\":0,\"nose_2\":0,\"makeup_1\":0,\"beard_4\":0,\"neck_thickness\":0,\"complexion_2\":0,\"lip_thickness\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 39),
('784acd9b3d326f87d0a2bde318c767904a4cb652', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":13.8,\"heading\":337.1,\"x\":-950.4,\"y\":-2608.9}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"watches_2\":0,\"chin_2\":0,\"lipstick_2\":0,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":2,\"eye_color\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"decals_2\":0,\"torso_2\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"tshirt_1\":0,\"decals_1\":0,\"makeup_1\":0,\"moles_1\":0,\"chest_2\":0,\"eye_squint\":0,\"skin_md_weight\":53,\"lipstick_4\":0,\"eyebrows_5\":0,\"blemishes_2\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"bags_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"cheeks_2\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"mask_1\":0,\"makeup_4\":0,\"bodyb_3\":-1,\"beard_4\":0,\"jaw_1\":0,\"blush_1\":0,\"chain_1\":0,\"bproof_1\":0,\"nose_4\":2,\"bodyb_4\":0,\"ears_2\":0,\"lipstick_3\":0,\"torso_1\":0,\"eyebrows_2\":0,\"pants_1\":0,\"face_md_weight\":50,\"sun_2\":0,\"lipstick_1\":0,\"helmet_1\":-1,\"age_2\":0,\"sun_1\":0,\"pants_2\":0,\"age_1\":0,\"cheeks_3\":0,\"neck_thickness\":0,\"helmet_2\":0,\"shoes_1\":0,\"chin_1\":0,\"ears_1\":-1,\"chin_4\":0,\"beard_1\":0,\"jaw_2\":0,\"watches_1\":-1,\"nose_6\":1,\"nose_5\":4,\"glasses_1\":0,\"makeup_3\":0,\"nose_1\":5,\"mom\":24,\"mask_2\":0,\"blush_2\":0,\"glasses_2\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"arms\":0,\"nose_2\":5,\"blush_3\":0,\"makeup_2\":0,\"moles_2\":0,\"complexion_2\":0,\"lip_thickness\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 40),
('5462e7981d17b937f8214eff4792c65715a4c05b', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":5.4,\"heading\":253.3,\"x\":-296.5,\"y\":-1730.3}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"watches_2\":0,\"shoes_1\":0,\"lipstick_2\":0,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"eye_color\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"decals_2\":0,\"torso_1\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"tshirt_1\":0,\"decals_1\":0,\"pants_2\":0,\"moles_1\":0,\"chest_2\":0,\"eye_squint\":0,\"skin_md_weight\":50,\"moles_2\":0,\"eyebrows_5\":0,\"nose_6\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"bags_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"chain_1\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"cheeks_3\":0,\"jaw_2\":0,\"bproof_1\":0,\"blemishes_2\":0,\"jaw_1\":0,\"blush_1\":0,\"pants_1\":0,\"complexion_2\":0,\"nose_4\":0,\"bodyb_4\":0,\"age_1\":0,\"nose_5\":0,\"sun_1\":0,\"eyebrows_2\":0,\"chin_2\":0,\"makeup_2\":0,\"sun_2\":0,\"lipstick_1\":0,\"torso_2\":0,\"age_2\":0,\"chin_4\":0,\"lipstick_3\":0,\"makeup_4\":0,\"face_md_weight\":50,\"arms\":0,\"hair_color_2\":0,\"cheeks_2\":0,\"helmet_1\":-1,\"ears_1\":-1,\"mask_1\":0,\"beard_1\":0,\"blush_3\":0,\"nose_1\":0,\"lipstick_4\":0,\"helmet_2\":0,\"glasses_1\":0,\"bodyb_3\":-1,\"makeup_3\":0,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"hair_color_1\":0,\"makeup_1\":0,\"beard_4\":0,\"neck_thickness\":0,\"nose_2\":0,\"glasses_2\":0,\"ears_2\":0,\"chin_1\":0,\"watches_1\":-1,\"lip_thickness\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 41),
('1c949f9d15e2fe2f00b2479c14b69684a96f4012', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":29.3,\"heading\":336.1,\"x\":413.1,\"y\":-948.8}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"watches_2\":0,\"chin_2\":0,\"lipstick_2\":0,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"eye_color\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"decals_2\":0,\"torso_2\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"hair_color_1\":0,\"decals_1\":0,\"makeup_1\":0,\"moles_1\":0,\"chest_2\":0,\"pants_1\":0,\"skin_md_weight\":50,\"moles_2\":0,\"eyebrows_5\":0,\"blemishes_2\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"ears_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"cheeks_2\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"cheeks_3\":0,\"age_1\":0,\"bags_2\":0,\"mask_1\":0,\"jaw_1\":0,\"blush_1\":0,\"complexion_2\":0,\"neck_thickness\":0,\"nose_4\":0,\"bodyb_4\":0,\"lipstick_3\":0,\"makeup_2\":0,\"chain_1\":0,\"eyebrows_2\":0,\"shoes_1\":0,\"makeup_4\":0,\"sun_2\":0,\"lipstick_1\":0,\"lipstick_4\":0,\"age_2\":0,\"sun_1\":0,\"nose_1\":0,\"bodyb_3\":-1,\"eye_squint\":0,\"arms\":0,\"helmet_2\":0,\"face_md_weight\":50,\"helmet_1\":-1,\"ears_1\":-1,\"nose_6\":0,\"beard_1\":0,\"jaw_2\":0,\"hair_color_2\":0,\"torso_1\":0,\"glasses_2\":0,\"glasses_1\":0,\"makeup_3\":0,\"beard_4\":0,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"blush_3\":0,\"chin_4\":0,\"tshirt_1\":0,\"pants_2\":0,\"nose_2\":0,\"chin_1\":0,\"bproof_1\":0,\"nose_5\":0,\"watches_1\":-1,\"lip_thickness\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 42),
('cc432643337a6374a8b887cbf0301ac580add445', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":42.1,\"heading\":117.9,\"x\":1558.1,\"y\":3601.2}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"watches_2\":0,\"shoes_1\":0,\"lipstick_2\":0,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"eye_color\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"decals_2\":0,\"torso_2\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"hair_color_1\":0,\"decals_1\":0,\"makeup_1\":0,\"moles_1\":0,\"chest_2\":0,\"eye_squint\":0,\"skin_md_weight\":54,\"lipstick_4\":0,\"eyebrows_5\":0,\"nose_6\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"ears_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"cheeks_2\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"cheeks_3\":0,\"chain_1\":0,\"mask_1\":0,\"makeup_4\":0,\"jaw_1\":0,\"blush_1\":0,\"tshirt_1\":0,\"torso_1\":0,\"nose_4\":0,\"bodyb_4\":0,\"helmet_1\":-1,\"chin_1\":0,\"bags_2\":0,\"eyebrows_2\":0,\"nose_5\":0,\"face_md_weight\":40,\"sun_2\":0,\"lipstick_1\":0,\"pants_2\":0,\"age_2\":0,\"sun_1\":0,\"blemishes_2\":0,\"arms\":0,\"bodyb_3\":-1,\"neck_thickness\":0,\"hair_color_2\":0,\"age_1\":0,\"glasses_2\":0,\"ears_1\":-1,\"beard_4\":0,\"beard_1\":0,\"jaw_2\":0,\"makeup_2\":0,\"lipstick_3\":0,\"chin_2\":0,\"glasses_1\":0,\"makeup_3\":0,\"chin_4\":0,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"pants_1\":0,\"nose_1\":3,\"blush_3\":0,\"watches_1\":-1,\"nose_2\":0,\"bproof_1\":0,\"moles_2\":0,\"helmet_2\":0,\"complexion_2\":0,\"lip_thickness\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 43),
('d0f673de2ba20368df6508fe9c32b240e582a2ad', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":12.9,\"heading\":0.9,\"x\":-1017.4,\"y\":-2703.2}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"lipstick_3\":0,\"shoes_1\":0,\"lipstick_2\":0,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"eye_color\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"age_1\":0,\"torso_2\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"hair_color_1\":0,\"makeup_2\":0,\"makeup_1\":0,\"moles_1\":0,\"chest_2\":0,\"pants_1\":0,\"skin_md_weight\":50,\"lipstick_4\":0,\"eyebrows_5\":0,\"blemishes_2\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"ears_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"chain_1\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"cheeks_3\":0,\"chin_2\":0,\"helmet_1\":-1,\"helmet_2\":0,\"jaw_1\":0,\"blush_1\":0,\"mask_1\":0,\"jaw_2\":0,\"nose_4\":0,\"bodyb_4\":0,\"torso_1\":0,\"neck_thickness\":0,\"decals_2\":0,\"eyebrows_2\":0,\"arms\":0,\"face_md_weight\":50,\"sun_2\":0,\"lipstick_1\":0,\"bodyb_3\":-1,\"age_2\":0,\"sun_1\":0,\"moles_2\":0,\"tshirt_1\":0,\"watches_2\":0,\"beard_4\":0,\"hair_color_2\":0,\"nose_6\":0,\"chin_1\":0,\"ears_1\":-1,\"cheeks_2\":0,\"beard_1\":0,\"blush_3\":0,\"watches_1\":-1,\"makeup_4\":0,\"nose_5\":0,\"glasses_1\":0,\"makeup_3\":0,\"nose_1\":0,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"chin_4\":0,\"decals_1\":0,\"bproof_1\":0,\"bags_2\":0,\"nose_2\":0,\"eye_squint\":0,\"pants_2\":0,\"glasses_2\":0,\"complexion_2\":0,\"lip_thickness\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 44),
('045135fcdd30bfddef95dfb547cf8a92fc413a95', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":14.2,\"heading\":150.4,\"x\":-1038.3,\"y\":-2737.0}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 45),
('8db3268dfbccae34e00da1aa6a9b28ccd2e78c2b', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":42.1,\"heading\":129.6,\"x\":1515.8,\"y\":3583.6}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"lipstick_3\":0,\"shoes_1\":0,\"lipstick_2\":0,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"makeup_4\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"decals_2\":0,\"torso_2\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"hair_color_1\":0,\"decals_1\":0,\"makeup_1\":0,\"moles_1\":0,\"chest_2\":0,\"pants_1\":0,\"skin_md_weight\":50,\"lipstick_4\":0,\"eyebrows_5\":0,\"nose_6\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"ears_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"cheeks_2\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"cheeks_3\":0,\"jaw_1\":0,\"sun_1\":0,\"nose_5\":0,\"nose_1\":0,\"blush_1\":0,\"eye_color\":0,\"helmet_1\":-1,\"nose_4\":0,\"bodyb_4\":0,\"moles_2\":0,\"tshirt_1\":0,\"age_1\":0,\"eyebrows_2\":0,\"face_md_weight\":50,\"torso_1\":0,\"sun_2\":0,\"lipstick_1\":0,\"pants_2\":0,\"age_2\":0,\"chin_4\":0,\"blush_3\":0,\"helmet_2\":0,\"chin_1\":0,\"beard_4\":0,\"hair_color_2\":0,\"makeup_2\":0,\"glasses_2\":0,\"ears_1\":-1,\"mask_1\":0,\"beard_1\":0,\"jaw_2\":0,\"neck_thickness\":0,\"watches_2\":0,\"chin_2\":0,\"glasses_1\":0,\"bodyb_3\":-1,\"blemishes_2\":0,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"chain_1\":0,\"makeup_3\":0,\"bags_2\":0,\"bproof_1\":0,\"nose_2\":0,\"arms\":0,\"complexion_2\":0,\"eye_squint\":0,\"watches_1\":-1,\"lip_thickness\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 46),
('d6f50b210d170c32208c340fd5e7c60aa3644af8', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":42.0,\"heading\":197.2,\"x\":1524.6,\"y\":3582.0}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"lipstick_3\":0,\"chin_2\":0,\"lipstick_2\":0,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"makeup_4\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"age_1\":0,\"torso_2\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"tshirt_1\":0,\"makeup_2\":0,\"pants_2\":0,\"moles_1\":0,\"chest_2\":0,\"pants_1\":4,\"skin_md_weight\":50,\"lipstick_4\":0,\"eyebrows_5\":0,\"nose_6\":8,\"hair_1\":37,\"chin_3\":0,\"cheeks_1\":6,\"ears_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"cheeks_2\":5,\"beard_3\":0,\"tshirt_2\":15,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"cheeks_3\":4,\"moles_2\":0,\"hair_color_2\":0,\"eye_squint\":0,\"jaw_1\":0,\"blush_1\":0,\"sun_1\":0,\"watches_2\":2,\"nose_4\":0,\"bodyb_4\":0,\"bodyb_3\":-1,\"mask_1\":0,\"bproof_1\":0,\"eyebrows_2\":0,\"makeup_1\":0,\"blemishes_2\":0,\"sun_2\":0,\"lipstick_1\":0,\"decals_1\":0,\"age_2\":0,\"chin_4\":0,\"eye_color\":0,\"jaw_2\":0,\"beard_4\":0,\"arms\":0,\"helmet_2\":1,\"neck_thickness\":0,\"helmet_1\":14,\"ears_1\":-1,\"nose_1\":0,\"beard_1\":0,\"blush_3\":0,\"torso_1\":18,\"shoes_1\":6,\"face_md_weight\":50,\"glasses_1\":3,\"makeup_3\":0,\"decals_2\":0,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"hair_color_1\":0,\"bags_2\":0,\"chin_1\":0,\"nose_5\":6,\"nose_2\":0,\"glasses_2\":2,\"chain_1\":0,\"complexion_2\":0,\"watches_1\":3,\"lip_thickness\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 47),
('1c6e8dc6443e9547ea7ccf603371fab69435b0ed', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":13.8,\"heading\":325.5,\"x\":-1038.3,\"y\":-2736.4}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[]', 0, 0, 48),
('cc1dac0e7bb433fa67c72125dafa654ac2c40934', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":31.2,\"heading\":52.2,\"x\":188.3,\"y\":-850.3}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 49),
('480e1680dfc535981e5a6ccf80746c8f342855ef', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":31.8,\"heading\":40.2,\"x\":-260.5,\"y\":-1662.5}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"lipstick_3\":0,\"chin_2\":0,\"lipstick_2\":0,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"makeup_4\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"decals_2\":0,\"torso_1\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"hair_color_1\":0,\"decals_1\":0,\"pants_2\":0,\"moles_1\":0,\"chest_2\":0,\"eye_squint\":0,\"skin_md_weight\":50,\"lipstick_4\":0,\"eyebrows_5\":0,\"blemishes_2\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"bags_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"cheeks_2\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"cheeks_3\":0,\"neck_thickness\":0,\"chain_1\":0,\"ears_2\":0,\"bproof_1\":0,\"blush_1\":0,\"moles_2\":0,\"shoes_1\":0,\"nose_4\":0,\"bodyb_4\":0,\"tshirt_1\":0,\"eye_color\":0,\"watches_2\":0,\"eyebrows_2\":0,\"bodyb_3\":-1,\"makeup_2\":0,\"sun_2\":0,\"lipstick_1\":0,\"nose_5\":0,\"age_2\":0,\"sun_1\":0,\"nose_6\":0,\"age_1\":0,\"torso_2\":0,\"beard_4\":0,\"helmet_2\":0,\"face_md_weight\":50,\"glasses_2\":0,\"ears_1\":-1,\"watches_1\":-1,\"beard_1\":0,\"blush_3\":0,\"jaw_2\":0,\"pants_1\":0,\"arms\":0,\"glasses_1\":0,\"makeup_3\":0,\"mask_1\":0,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"nose_1\":0,\"chin_4\":0,\"jaw_1\":0,\"makeup_1\":0,\"nose_2\":0,\"hair_color_2\":0,\"helmet_1\":-1,\"chin_1\":0,\"complexion_2\":0,\"lip_thickness\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 50),
('653c73dc78822467eec84c5dff44fb8c541bc1b2', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":105.4,\"heading\":170.5,\"x\":246.2,\"y\":227.5}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"watches_2\":0,\"chin_2\":0,\"face_md_weight\":50,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"eye_color\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"decals_2\":0,\"torso_1\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"hair_color_1\":0,\"makeup_2\":0,\"makeup_1\":0,\"moles_1\":0,\"chest_2\":0,\"eye_squint\":0,\"skin_md_weight\":50,\"lipstick_4\":0,\"eyebrows_5\":0,\"blemishes_2\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"bags_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"chain_1\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"mask_1\":0,\"shoes_1\":0,\"ears_2\":0,\"beard_4\":0,\"bproof_1\":0,\"blush_1\":0,\"nose_5\":0,\"helmet_2\":0,\"nose_4\":0,\"bodyb_4\":0,\"chin_4\":0,\"age_1\":0,\"makeup_4\":0,\"eyebrows_2\":0,\"pants_2\":0,\"nose_1\":0,\"sun_2\":0,\"lipstick_1\":0,\"nose_6\":0,\"age_2\":0,\"sun_1\":0,\"lipstick_3\":0,\"blush_3\":0,\"cheeks_2\":0,\"neck_thickness\":0,\"hair_color_2\":0,\"complexion_2\":0,\"glasses_2\":0,\"ears_1\":-1,\"lipstick_2\":0,\"beard_1\":0,\"jaw_2\":0,\"moles_2\":0,\"cheeks_3\":0,\"makeup_3\":0,\"glasses_1\":0,\"bodyb_3\":-1,\"decals_1\":0,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"tshirt_1\":0,\"jaw_1\":0,\"pants_1\":0,\"arms\":0,\"nose_2\":0,\"chin_1\":0,\"helmet_1\":-1,\"torso_2\":0,\"watches_1\":-1,\"lip_thickness\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 51),
('f4cafbe6b2484bbb4ad02d50763e69d79ae69fe8', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":110.3,\"heading\":158.0,\"x\":261.1,\"y\":213.9}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"watches_2\":0,\"shoes_1\":17,\"lipstick_2\":0,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"eye_color\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"decals_2\":0,\"torso_1\":19,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"hair_color_1\":0,\"decals_1\":0,\"pants_2\":15,\"moles_1\":0,\"chest_2\":0,\"pants_1\":0,\"skin_md_weight\":50,\"moles_2\":0,\"eyebrows_5\":0,\"blemishes_2\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"bags_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"cheeks_2\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"mask_1\":0,\"torso_2\":0,\"age_1\":0,\"makeup_3\":0,\"jaw_1\":0,\"blush_1\":0,\"nose_6\":0,\"glasses_2\":0,\"nose_4\":0,\"bodyb_4\":0,\"sun_1\":0,\"tshirt_1\":0,\"chain_1\":0,\"eyebrows_2\":0,\"makeup_4\":0,\"cheeks_3\":0,\"sun_2\":0,\"lipstick_1\":0,\"beard_4\":0,\"age_2\":0,\"chin_4\":0,\"nose_1\":0,\"makeup_2\":0,\"neck_thickness\":0,\"arms\":0,\"hair_color_2\":0,\"eye_squint\":0,\"helmet_1\":-1,\"ears_1\":-1,\"makeup_1\":0,\"beard_1\":0,\"jaw_2\":0,\"lipstick_3\":0,\"chin_2\":0,\"bproof_1\":0,\"glasses_1\":0,\"bodyb_3\":-1,\"face_md_weight\":50,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"lipstick_4\":0,\"ears_2\":0,\"blush_3\":0,\"helmet_2\":0,\"nose_2\":0,\"watches_1\":-1,\"nose_5\":0,\"chin_1\":0,\"complexion_2\":0,\"lip_thickness\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 52),
('d013c531a130282879d39b9c9661187120a05350', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":110.3,\"heading\":169.7,\"x\":260.5,\"y\":211.7}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 53),
('b588c480c5a104cb9aa8c0c23201eed952201152', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":105.8,\"heading\":162.4,\"x\":1492.4,\"y\":1490.1}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"watches_2\":0,\"shoes_1\":0,\"face_md_weight\":50,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"makeup_4\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"age_1\":0,\"torso_2\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"tshirt_1\":0,\"decals_1\":0,\"pants_2\":0,\"moles_1\":0,\"chest_2\":0,\"eye_squint\":0,\"skin_md_weight\":50,\"moles_2\":0,\"eyebrows_5\":0,\"blemishes_2\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"ears_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"chain_1\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"cheeks_3\":0,\"nose_5\":0,\"neck_thickness\":0,\"lipstick_3\":0,\"jaw_1\":0,\"blush_1\":0,\"hair_color_1\":0,\"pants_1\":0,\"nose_4\":0,\"bodyb_4\":0,\"makeup_3\":0,\"hair_color_2\":0,\"mask_1\":0,\"eyebrows_2\":0,\"bproof_1\":0,\"makeup_1\":0,\"sun_2\":0,\"lipstick_1\":0,\"cheeks_2\":0,\"age_2\":0,\"chin_4\":0,\"helmet_1\":-1,\"sun_1\":0,\"decals_2\":0,\"beard_4\":0,\"helmet_2\":0,\"eye_color\":0,\"glasses_2\":0,\"ears_1\":-1,\"nose_1\":0,\"beard_1\":0,\"blush_3\":0,\"arms\":0,\"torso_1\":0,\"chin_2\":0,\"glasses_1\":0,\"bodyb_3\":-1,\"chin_1\":0,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"lipstick_4\":0,\"jaw_2\":0,\"makeup_2\":0,\"watches_1\":-1,\"nose_2\":0,\"nose_6\":0,\"lipstick_2\":0,\"bags_2\":0,\"complexion_2\":0,\"lip_thickness\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 54),
('58326086e921abef54989a65ee18d190306097fc', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":13.7,\"heading\":63.3,\"x\":-998.5,\"y\":-2720.9}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"lipstick_3\":0,\"chin_2\":0,\"lipstick_2\":0,\"chain_2\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"dad\":0,\"makeup_4\":0,\"nose_3\":0,\"bproof_2\":0,\"beard_2\":0,\"age_1\":0,\"torso_2\":0,\"bodyb_2\":0,\"sex\":0,\"eyebrows_6\":0,\"hair_2\":0,\"bags_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"chest_1\":0,\"tshirt_1\":0,\"decals_1\":0,\"pants_2\":0,\"moles_1\":0,\"chest_2\":0,\"pants_1\":0,\"skin_md_weight\":50,\"lipstick_4\":0,\"eyebrows_5\":0,\"blemishes_2\":0,\"hair_1\":0,\"chin_3\":0,\"cheeks_1\":0,\"bags_2\":0,\"blemishes_1\":0,\"bracelets_2\":0,\"chain_1\":0,\"beard_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"mask_1\":0,\"nose_6\":0,\"hair_color_2\":0,\"complexion_2\":0,\"jaw_1\":0,\"blush_1\":0,\"torso_1\":0,\"eye_color\":0,\"nose_4\":0,\"bodyb_4\":0,\"arms\":0,\"beard_4\":0,\"face_md_weight\":50,\"eyebrows_2\":0,\"chin_1\":0,\"moles_2\":0,\"sun_2\":0,\"lipstick_1\":0,\"makeup_1\":0,\"age_2\":0,\"sun_1\":0,\"watches_2\":0,\"cheeks_2\":0,\"eye_squint\":0,\"neck_thickness\":0,\"helmet_2\":0,\"jaw_2\":0,\"glasses_2\":0,\"ears_1\":-1,\"hair_color_1\":0,\"beard_1\":0,\"blush_3\":0,\"shoes_1\":0,\"makeup_3\":0,\"cheeks_3\":0,\"glasses_1\":0,\"bodyb_3\":-1,\"decals_2\":0,\"mom\":21,\"mask_2\":0,\"blush_2\":0,\"chin_4\":0,\"helmet_1\":-1,\"makeup_2\":0,\"nose_5\":0,\"nose_2\":0,\"bproof_1\":0,\"ears_2\":0,\"nose_1\":0,\"watches_1\":-1,\"lip_thickness\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 55),
('e7339780db4a1722f3b1fba6a60b4a7fc8b1ab7d', NULL, '{\"money\":0,\"bank\":50000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":13.8,\"heading\":325.5,\"x\":-1038.3,\"y\":-2736.4}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[]', 0, 0, 56),
('122adf648e8bc88e27db8e2380dbbc94b2efef91', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":-1030.6,\"heading\":308.5,\"z\":13.7,\"y\":-2724.8}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 57),
('6e65b1d66f47f1361a49d76479b719e4d8841fbf', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":260.5,\"heading\":271.2,\"z\":105.5,\"y\":336.9}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 58),
('0ceba97e85916fb562cbf85cc92d59defd380af6', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":-1035.0,\"heading\":315.4,\"z\":13.8,\"y\":-2732.0}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, NULL, '[]', 0, 0, 59),
('d013b9689010fcb07de2c295d83495ed59367fde', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":-878.0,\"heading\":128.9,\"z\":-63.8,\"y\":-95.0}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"blemishes_1\":0,\"nose_1\":0,\"chain_2\":0,\"torso_2\":0,\"mask_1\":19,\"hair_color_1\":0,\"pants_2\":0,\"arms\":0,\"hair_color_2\":0,\"beard_4\":0,\"glasses_2\":0,\"chest_2\":0,\"lipstick_2\":0,\"nose_4\":0,\"hair_1\":3,\"lip_thickness\":0,\"sun_1\":0,\"bags_1\":0,\"bracelets_2\":0,\"helmet_1\":-1,\"decals_2\":0,\"eyebrows_1\":0,\"watches_2\":0,\"makeup_4\":0,\"decals_1\":0,\"bodyb_1\":-1,\"blush_3\":0,\"bags_2\":0,\"skin_md_weight\":50,\"watches_1\":-1,\"makeup_3\":0,\"shoes_1\":5,\"ears_2\":0,\"blemishes_2\":0,\"makeup_1\":0,\"jaw_2\":0,\"beard_3\":0,\"eye_squint\":0,\"mask_2\":0,\"mom\":21,\"arms_2\":0,\"bproof_2\":0,\"blush_2\":0,\"chin_3\":0,\"jaw_1\":0,\"bproof_1\":0,\"ears_1\":-1,\"nose_5\":0,\"chin_2\":0,\"chest_1\":0,\"cheeks_1\":0,\"cheeks_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_1\":35,\"moles_1\":0,\"eyebrows_2\":0,\"eyebrows_4\":0,\"lipstick_4\":0,\"eyebrows_6\":0,\"beard_1\":0,\"chest_3\":0,\"lipstick_1\":0,\"blush_1\":0,\"hair_2\":0,\"torso_1\":0,\"tshirt_1\":0,\"helmet_2\":0,\"eye_color\":0,\"nose_3\":0,\"moles_2\":0,\"bodyb_4\":0,\"shoes_2\":0,\"complexion_2\":0,\"age_1\":0,\"dad\":0,\"eyebrows_5\":0,\"cheeks_3\":0,\"chin_1\":0,\"makeup_2\":0,\"neck_thickness\":0,\"sex\":0,\"glasses_1\":0,\"face_md_weight\":50,\"bracelets_1\":-1,\"tshirt_2\":0,\"pants_1\":4,\"complexion_1\":0,\"nose_6\":1,\"lipstick_3\":0,\"beard_2\":0,\"sun_2\":0,\"bodyb_2\":0,\"bodyb_3\":-1,\"nose_2\":0,\"chin_4\":0}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, 0, 60),
('d68ea116085b9520cb16dcc21130e681f37eed89', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":-639.7,\"heading\":170.0,\"z\":38.2,\"y\":-244.0}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"blemishes_1\":0,\"nose_1\":0,\"chain_2\":0,\"torso_2\":0,\"pants_1\":6,\"hair_color_1\":4,\"pants_2\":0,\"arms\":20,\"hair_color_2\":0,\"bodyb_1\":-1,\"glasses_2\":0,\"chest_2\":0,\"glasses_1\":0,\"nose_4\":0,\"bodyb_3\":-1,\"lip_thickness\":0,\"sun_1\":0,\"bags_1\":0,\"moles_1\":0,\"eyebrows_6\":0,\"decals_2\":0,\"eyebrows_1\":0,\"watches_2\":0,\"makeup_4\":0,\"ears_2\":0,\"bodyb_4\":0,\"beard_4\":0,\"nose_6\":0,\"blush_3\":0,\"makeup_2\":0,\"makeup_3\":0,\"eye_squint\":0,\"lipstick_3\":0,\"blemishes_2\":0,\"makeup_1\":0,\"chest_1\":0,\"beard_3\":0,\"lipstick_4\":0,\"mask_2\":0,\"mom\":21,\"dad\":0,\"bproof_2\":0,\"blush_2\":0,\"cheeks_3\":0,\"jaw_1\":0,\"bproof_1\":0,\"ears_1\":-1,\"helmet_2\":0,\"eye_color\":0,\"beard_1\":0,\"hair_1\":3,\"cheeks_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"torso_1\":1,\"face_md_weight\":50,\"cheeks_1\":0,\"eyebrows_4\":0,\"bracelets_2\":0,\"jaw_2\":0,\"chain_1\":0,\"chin_2\":0,\"decals_1\":0,\"blush_1\":0,\"hair_2\":0,\"nose_5\":0,\"tshirt_1\":15,\"lipstick_1\":0,\"helmet_1\":-1,\"nose_3\":0,\"bags_2\":0,\"arms_2\":0,\"shoes_2\":0,\"chest_3\":0,\"age_1\":0,\"chin_3\":0,\"eyebrows_5\":0,\"mask_1\":0,\"chin_1\":0,\"lipstick_2\":0,\"neck_thickness\":0,\"sex\":0,\"shoes_1\":0,\"tshirt_2\":0,\"bracelets_1\":-1,\"chin_4\":0,\"moles_2\":0,\"complexion_1\":0,\"complexion_2\":0,\"skin_md_weight\":50,\"beard_2\":0,\"sun_2\":0,\"bodyb_2\":0,\"watches_1\":-1,\"nose_2\":0,\"eyebrows_2\":0}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, 0, 61),
('54a8dc4ac0e9d0292e56258929887641cfd57c9a', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":-621.0,\"heading\":151.5,\"z\":38.0,\"y\":-225.8}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"blemishes_1\":0,\"nose_1\":0,\"chain_2\":0,\"torso_2\":0,\"bags_2\":0,\"hair_color_1\":0,\"pants_2\":0,\"lipstick_4\":0,\"hair_color_2\":0,\"bodyb_1\":-1,\"glasses_2\":0,\"chest_2\":0,\"face_md_weight\":50,\"nose_4\":0,\"eye_color\":0,\"lip_thickness\":0,\"sun_1\":0,\"blush_3\":0,\"moles_1\":0,\"eyebrows_6\":0,\"nose_6\":0,\"eyebrows_1\":0,\"watches_2\":0,\"makeup_4\":0,\"ears_2\":0,\"mask_2\":0,\"blemishes_2\":0,\"chest_3\":0,\"jaw_2\":0,\"makeup_2\":0,\"makeup_3\":0,\"mom\":21,\"neck_thickness\":0,\"chin_2\":0,\"makeup_1\":0,\"chest_1\":0,\"torso_1\":0,\"bodyb_4\":0,\"cheeks_1\":0,\"nose_5\":0,\"helmet_2\":0,\"bproof_2\":0,\"blush_2\":0,\"chin_3\":0,\"arms_2\":0,\"bproof_1\":0,\"ears_1\":-1,\"beard_1\":0,\"watches_1\":-1,\"eyebrows_2\":0,\"beard_4\":0,\"cheeks_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"arms\":0,\"cheeks_3\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"beard_2\":0,\"mask_1\":0,\"chain_1\":0,\"pants_1\":0,\"tshirt_2\":0,\"blush_1\":0,\"hair_2\":0,\"bodyb_3\":-1,\"tshirt_1\":0,\"moles_2\":0,\"lipstick_1\":0,\"nose_3\":0,\"decals_2\":0,\"beard_3\":0,\"shoes_2\":0,\"complexion_2\":0,\"age_1\":0,\"eye_squint\":0,\"eyebrows_5\":0,\"helmet_1\":-1,\"chin_1\":0,\"jaw_1\":0,\"shoes_1\":0,\"sex\":0,\"decals_1\":0,\"glasses_1\":0,\"bracelets_1\":-1,\"chin_4\":0,\"lipstick_2\":0,\"complexion_1\":0,\"hair_1\":0,\"bracelets_2\":0,\"skin_md_weight\":50,\"dad\":0,\"bodyb_2\":0,\"sun_2\":0,\"nose_2\":0,\"bags_1\":0}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, 0, 62),
('9fd52acedcf388430b08bd134eed60d258e246ff', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":-674.1,\"heading\":63.3,\"z\":37.1,\"y\":-227.3}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"blemishes_1\":0,\"nose_1\":0,\"chain_2\":0,\"torso_2\":0,\"bags_2\":0,\"hair_color_1\":0,\"pants_2\":0,\"lipstick_4\":0,\"hair_color_2\":0,\"bodyb_1\":-1,\"glasses_2\":0,\"chest_2\":0,\"glasses_1\":0,\"nose_4\":0,\"eye_color\":0,\"lip_thickness\":0,\"sun_1\":0,\"blush_3\":0,\"moles_1\":0,\"eyebrows_6\":0,\"nose_6\":0,\"eyebrows_1\":0,\"watches_2\":0,\"makeup_4\":0,\"decals_1\":0,\"chin_3\":0,\"eyebrows_2\":0,\"ears_2\":0,\"beard_4\":0,\"watches_1\":-1,\"makeup_3\":0,\"beard_1\":0,\"face_md_weight\":50,\"chin_2\":0,\"makeup_1\":0,\"jaw_2\":0,\"torso_1\":0,\"chest_1\":0,\"bodyb_4\":0,\"mom\":21,\"jaw_1\":0,\"bproof_2\":0,\"blush_2\":0,\"cheeks_3\":0,\"arms_2\":0,\"bproof_1\":0,\"ears_1\":-1,\"pants_1\":0,\"lipstick_2\":0,\"arms\":0,\"eye_squint\":0,\"cheeks_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chest_3\":0,\"shoes_1\":0,\"blemishes_2\":0,\"eyebrows_4\":0,\"chin_4\":0,\"beard_3\":0,\"lipstick_3\":0,\"makeup_2\":0,\"bracelets_2\":0,\"blush_1\":0,\"hair_2\":0,\"decals_2\":0,\"tshirt_1\":0,\"helmet_2\":0,\"mask_2\":0,\"nose_3\":0,\"nose_5\":0,\"chain_1\":0,\"shoes_2\":0,\"complexion_2\":0,\"age_1\":0,\"cheeks_1\":0,\"eyebrows_5\":0,\"mask_1\":0,\"chin_1\":0,\"lipstick_1\":0,\"neck_thickness\":0,\"sex\":0,\"helmet_1\":-1,\"hair_1\":0,\"bracelets_1\":-1,\"tshirt_2\":0,\"bodyb_3\":-1,\"complexion_1\":0,\"moles_2\":0,\"beard_2\":0,\"skin_md_weight\":50,\"dad\":0,\"bodyb_2\":0,\"bags_1\":0,\"nose_2\":0,\"sun_2\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 63),
('0714fe505c49ac3eb1f2e8a33bf0009b3219c870', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":-1036.9,\"heading\":5.1,\"z\":13.8,\"y\":-2733.2}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"blemishes_1\":0,\"nose_1\":0,\"chain_2\":0,\"torso_2\":0,\"mask_1\":0,\"hair_color_1\":0,\"pants_2\":0,\"lipstick_4\":0,\"hair_color_2\":0,\"beard_4\":0,\"glasses_2\":0,\"chest_2\":0,\"glasses_1\":0,\"nose_4\":0,\"eye_color\":0,\"lip_thickness\":0,\"sun_1\":0,\"blush_3\":0,\"moles_1\":0,\"eyebrows_6\":0,\"nose_6\":0,\"eyebrows_1\":0,\"watches_2\":0,\"makeup_4\":0,\"decals_1\":0,\"moles_2\":0,\"beard_2\":0,\"complexion_2\":0,\"pants_1\":0,\"watches_1\":-1,\"makeup_3\":0,\"makeup_2\":0,\"cheeks_3\":0,\"chin_2\":0,\"makeup_1\":0,\"chest_1\":0,\"beard_3\":0,\"bracelets_2\":0,\"mask_2\":0,\"mom\":21,\"cheeks_1\":0,\"bproof_2\":0,\"blush_2\":0,\"chin_3\":0,\"arms_2\":0,\"bproof_1\":0,\"ears_1\":-1,\"arms\":0,\"torso_1\":0,\"bags_2\":0,\"lipstick_3\":0,\"cheeks_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"helmet_1\":-1,\"beard_1\":0,\"nose_5\":0,\"eyebrows_4\":0,\"tshirt_2\":0,\"bodyb_3\":-1,\"chain_1\":0,\"dad\":0,\"lipstick_2\":0,\"blush_1\":0,\"hair_2\":0,\"hair_1\":0,\"tshirt_1\":0,\"lipstick_1\":0,\"neck_thickness\":0,\"nose_3\":0,\"eye_squint\":0,\"blemishes_2\":0,\"shoes_2\":0,\"chest_3\":0,\"age_1\":0,\"bodyb_4\":0,\"eyebrows_5\":0,\"jaw_2\":0,\"chin_1\":0,\"jaw_1\":0,\"shoes_1\":0,\"sex\":0,\"decals_2\":0,\"bodyb_1\":-1,\"bracelets_1\":-1,\"chin_4\":0,\"face_md_weight\":50,\"complexion_1\":0,\"bags_1\":0,\"eyebrows_2\":0,\"skin_md_weight\":50,\"sun_2\":0,\"bodyb_2\":0,\"helmet_2\":0,\"nose_2\":0,\"ears_2\":0}', '[]', 0, 0, 64),
('96f612a9f63f24670a9b16c72204e0639bcf3e43', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":336.0,\"heading\":0.0,\"z\":32.5,\"y\":-1398.8}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"blemishes_1\":0,\"nose_1\":0,\"chain_2\":0,\"torso_2\":0,\"pants_1\":0,\"hair_color_1\":0,\"pants_2\":0,\"arms\":0,\"hair_color_2\":0,\"bodyb_1\":-1,\"glasses_2\":0,\"chest_2\":0,\"face_md_weight\":50,\"nose_4\":0,\"eye_color\":0,\"lip_thickness\":0,\"sun_1\":0,\"blush_3\":0,\"bracelets_2\":0,\"helmet_1\":-1,\"nose_6\":0,\"eyebrows_1\":0,\"watches_2\":0,\"makeup_4\":0,\"ears_2\":0,\"eyebrows_6\":0,\"lipstick_4\":0,\"moles_1\":0,\"decals_2\":0,\"watches_1\":-1,\"makeup_3\":0,\"sun_2\":0,\"cheeks_1\":0,\"chin_2\":0,\"makeup_1\":0,\"chest_1\":0,\"beard_3\":0,\"nose_5\":0,\"mask_2\":0,\"mom\":21,\"beard_1\":0,\"bproof_2\":0,\"blush_2\":0,\"cheeks_3\":0,\"arms_2\":0,\"bproof_1\":0,\"ears_1\":-1,\"torso_1\":0,\"eyebrows_2\":0,\"jaw_1\":0,\"beard_4\":0,\"cheeks_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"bags_1\":0,\"chest_3\":0,\"blemishes_2\":0,\"eyebrows_4\":0,\"neck_thickness\":0,\"hair_1\":0,\"chain_1\":0,\"bodyb_3\":-1,\"lipstick_2\":0,\"blush_1\":0,\"hair_2\":0,\"lipstick_1\":0,\"tshirt_1\":0,\"helmet_2\":0,\"bodyb_4\":0,\"nose_3\":0,\"jaw_2\":0,\"beard_2\":0,\"shoes_2\":0,\"complexion_2\":0,\"age_1\":0,\"bags_2\":0,\"eyebrows_5\":0,\"chin_3\":0,\"chin_1\":0,\"lipstick_3\":0,\"shoes_1\":0,\"sex\":0,\"decals_1\":0,\"glasses_1\":0,\"bracelets_1\":-1,\"chin_4\":0,\"makeup_2\":0,\"complexion_1\":0,\"moles_2\":0,\"eye_squint\":0,\"skin_md_weight\":50,\"dad\":0,\"bodyb_2\":0,\"tshirt_2\":0,\"nose_2\":0,\"mask_1\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 65),
('365df85d6097f045181ee0f2de2556c6ee5fbf71', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":-631.0,\"heading\":140.0,\"z\":38.1,\"y\":-236.8}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"blemishes_1\":0,\"nose_1\":0,\"chain_2\":0,\"torso_2\":0,\"bags_2\":0,\"hair_color_1\":0,\"pants_2\":0,\"arms\":0,\"hair_color_2\":0,\"bodyb_1\":-1,\"glasses_2\":0,\"chest_2\":0,\"face_md_weight\":50,\"nose_4\":0,\"eye_color\":0,\"lip_thickness\":0,\"sun_1\":0,\"blush_3\":0,\"moles_1\":0,\"eyebrows_6\":0,\"decals_2\":0,\"eyebrows_1\":0,\"watches_2\":0,\"makeup_4\":0,\"decals_1\":0,\"lipstick_3\":0,\"hair_1\":0,\"beard_4\":0,\"neck_thickness\":0,\"watches_1\":-1,\"makeup_3\":0,\"bracelets_2\":0,\"helmet_1\":-1,\"blemishes_2\":0,\"makeup_1\":0,\"chest_1\":0,\"beard_3\":0,\"chin_2\":0,\"mask_2\":0,\"mom\":21,\"eye_squint\":0,\"bproof_2\":0,\"blush_2\":0,\"cheeks_3\":0,\"jaw_1\":0,\"bproof_1\":0,\"ears_1\":-1,\"nose_6\":0,\"chin_3\":0,\"ears_2\":0,\"jaw_2\":0,\"cheeks_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"bodyb_3\":-1,\"makeup_2\":0,\"mask_1\":0,\"eyebrows_4\":0,\"nose_5\":0,\"arms_2\":0,\"chain_1\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"blush_1\":0,\"hair_2\":0,\"moles_2\":0,\"tshirt_1\":0,\"lipstick_1\":0,\"torso_1\":0,\"nose_3\":0,\"bodyb_4\":0,\"glasses_1\":0,\"shoes_2\":0,\"chest_3\":0,\"age_1\":0,\"lipstick_4\":0,\"eyebrows_5\":0,\"dad\":0,\"chin_1\":0,\"cheeks_1\":0,\"shoes_1\":0,\"sex\":0,\"eyebrows_2\":0,\"beard_1\":0,\"bracelets_1\":-1,\"chin_4\":0,\"skin_md_weight\":50,\"complexion_1\":0,\"helmet_2\":0,\"complexion_2\":0,\"beard_2\":0,\"sun_2\":0,\"bodyb_2\":0,\"pants_1\":0,\"nose_2\":0,\"bags_1\":0}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, 0, 66),
('64bb0eaf3e141de0bbe31dd6262f888f2cf01c93', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":1839.4,\"heading\":23.0,\"z\":33.0,\"y\":3724.6}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"blemishes_1\":0,\"nose_1\":0,\"chain_2\":0,\"torso_2\":0,\"mask_1\":0,\"hair_color_1\":0,\"pants_2\":0,\"arms\":0,\"hair_color_2\":0,\"beard_4\":0,\"glasses_2\":0,\"chest_2\":0,\"face_md_weight\":50,\"nose_4\":0,\"hair_1\":0,\"lip_thickness\":0,\"sun_1\":0,\"bags_1\":0,\"bracelets_2\":0,\"helmet_1\":-1,\"nose_6\":0,\"eyebrows_1\":0,\"watches_2\":0,\"makeup_4\":0,\"ears_2\":0,\"shoes_1\":0,\"bags_2\":0,\"eyebrows_2\":0,\"eyebrows_6\":0,\"watches_1\":-1,\"makeup_3\":0,\"chin_3\":0,\"chest_1\":0,\"blemishes_2\":0,\"makeup_1\":0,\"jaw_2\":0,\"torso_1\":0,\"lipstick_4\":0,\"cheeks_1\":0,\"nose_5\":0,\"mom\":21,\"bproof_2\":0,\"blush_2\":0,\"cheeks_3\":0,\"jaw_1\":0,\"bproof_1\":0,\"ears_1\":-1,\"arms_2\":0,\"blush_3\":0,\"moles_2\":0,\"chin_2\":0,\"cheeks_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"moles_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"makeup_2\":0,\"beard_3\":0,\"beard_1\":0,\"lipstick_2\":0,\"decals_2\":0,\"blush_1\":0,\"hair_2\":0,\"bodyb_3\":-1,\"tshirt_1\":0,\"helmet_2\":0,\"eye_color\":0,\"nose_3\":0,\"mask_2\":0,\"bodyb_4\":0,\"shoes_2\":0,\"complexion_2\":0,\"age_1\":0,\"eye_squint\":0,\"eyebrows_5\":0,\"sun_2\":0,\"chin_1\":0,\"pants_1\":0,\"neck_thickness\":0,\"sex\":0,\"bodyb_1\":-1,\"glasses_1\":0,\"bracelets_1\":-1,\"tshirt_2\":0,\"chest_3\":0,\"complexion_1\":0,\"decals_1\":0,\"lipstick_1\":0,\"skin_md_weight\":50,\"dad\":0,\"bodyb_2\":0,\"beard_2\":0,\"nose_2\":0,\"chin_4\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 67),
('b6088922c3d1e3023d1d030c353160e4be5950c3', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":1731.3,\"heading\":129.5,\"z\":48.9,\"y\":3295.8}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"blemishes_1\":0,\"nose_1\":0,\"chain_2\":0,\"torso_2\":0,\"bags_2\":0,\"hair_color_1\":0,\"pants_2\":0,\"lipstick_4\":0,\"hair_color_2\":0,\"bodyb_1\":-1,\"glasses_2\":0,\"chest_2\":0,\"glasses_1\":0,\"nose_4\":0,\"bodyb_3\":-1,\"lip_thickness\":0,\"sun_1\":0,\"blush_3\":0,\"moles_1\":0,\"eyebrows_6\":0,\"nose_6\":0,\"eyebrows_1\":0,\"watches_2\":0,\"makeup_4\":0,\"ears_2\":0,\"beard_1\":0,\"decals_1\":0,\"watches_1\":-1,\"beard_4\":0,\"makeup_2\":0,\"makeup_3\":0,\"pants_1\":0,\"complexion_2\":0,\"chin_2\":0,\"makeup_1\":0,\"jaw_2\":0,\"torso_1\":0,\"bracelets_2\":0,\"cheeks_1\":0,\"mom\":21,\"blemishes_2\":0,\"bproof_2\":0,\"blush_2\":0,\"cheeks_3\":0,\"arms_2\":0,\"bproof_1\":0,\"ears_1\":-1,\"tshirt_2\":0,\"lipstick_3\":0,\"mask_2\":0,\"chin_3\":0,\"cheeks_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"bodyb_4\":0,\"arms\":0,\"beard_3\":0,\"eyebrows_4\":0,\"chest_1\":0,\"bags_1\":0,\"chain_1\":0,\"beard_2\":0,\"mask_1\":0,\"blush_1\":0,\"hair_2\":0,\"nose_5\":0,\"tshirt_1\":0,\"helmet_2\":0,\"lipstick_1\":0,\"nose_3\":0,\"eyebrows_2\":0,\"eye_color\":0,\"shoes_2\":0,\"chest_3\":0,\"age_1\":0,\"eye_squint\":0,\"eyebrows_5\":0,\"jaw_1\":0,\"chin_1\":0,\"moles_2\":0,\"neck_thickness\":0,\"sex\":0,\"shoes_1\":0,\"lipstick_2\":0,\"bracelets_1\":-1,\"chin_4\":0,\"hair_1\":0,\"complexion_1\":0,\"decals_2\":0,\"helmet_1\":-1,\"skin_md_weight\":50,\"dad\":0,\"bodyb_2\":0,\"sun_2\":0,\"nose_2\":0,\"face_md_weight\":50}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 68),
('5f191156ad6ff002d5b20d83d79f2ef41c6ccb58', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":1675.4,\"heading\":252.2,\"z\":40.4,\"y\":3275.3}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"blemishes_1\":0,\"nose_1\":0,\"chain_2\":0,\"torso_2\":0,\"bags_2\":0,\"hair_color_1\":0,\"pants_2\":0,\"arms\":0,\"hair_color_2\":0,\"beard_4\":0,\"glasses_2\":0,\"chest_2\":0,\"glasses_1\":0,\"nose_4\":3,\"hair_1\":0,\"lip_thickness\":0,\"sun_1\":0,\"bags_1\":0,\"bracelets_2\":0,\"helmet_1\":-1,\"decals_2\":0,\"eyebrows_1\":0,\"watches_2\":0,\"makeup_4\":0,\"decals_1\":0,\"sun_2\":0,\"beard_1\":0,\"bodyb_4\":0,\"blush_3\":0,\"watches_1\":-1,\"makeup_3\":0,\"eye_squint\":0,\"moles_1\":0,\"chin_2\":0,\"makeup_1\":0,\"chest_1\":0,\"torso_1\":0,\"mom\":23,\"cheeks_1\":0,\"nose_5\":0,\"beard_3\":0,\"bproof_2\":0,\"blush_2\":0,\"chin_3\":0,\"jaw_1\":0,\"bproof_1\":0,\"ears_1\":-1,\"mask_2\":0,\"chain_1\":0,\"arms_2\":0,\"mask_1\":0,\"cheeks_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"shoes_1\":0,\"eye_color\":0,\"cheeks_3\":0,\"eyebrows_4\":0,\"helmet_2\":0,\"bodyb_1\":-1,\"lipstick_3\":0,\"face_md_weight\":50,\"blemishes_2\":0,\"blush_1\":0,\"hair_2\":0,\"makeup_2\":0,\"tshirt_1\":0,\"moles_2\":0,\"tshirt_2\":0,\"nose_3\":0,\"bodyb_3\":-1,\"jaw_2\":0,\"shoes_2\":0,\"complexion_2\":0,\"age_1\":0,\"pants_1\":0,\"eyebrows_5\":0,\"skin_md_weight\":53,\"chin_1\":0,\"lipstick_4\":0,\"neck_thickness\":0,\"sex\":0,\"lipstick_2\":0,\"nose_6\":0,\"bracelets_1\":-1,\"chin_4\":0,\"lipstick_1\":0,\"complexion_1\":0,\"chest_3\":0,\"ears_2\":0,\"beard_2\":0,\"dad\":0,\"bodyb_2\":0,\"eyebrows_2\":0,\"nose_2\":0,\"eyebrows_6\":0}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 69);
INSERT INTO `users` (`identifier`, `name`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `position`, `is_dead`, `dob`, `is_male`, `accessories`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `phone_number`, `last_property`, `skin`, `status`, `jail`, `disabled`, `jbg`) VALUES
('d6a232a8c33d0fc323e563654a66f2355a11891d', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":-633.8,\"heading\":0.0,\"z\":31.6,\"y\":-239.3}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"blemishes_1\":0,\"nose_1\":0,\"chain_2\":0,\"torso_2\":1,\"eyebrows_2\":0,\"hair_color_1\":0,\"pants_2\":0,\"lipstick_4\":0,\"hair_color_2\":0,\"bodyb_1\":-1,\"glasses_2\":0,\"chest_2\":0,\"lipstick_2\":0,\"nose_4\":0,\"eye_color\":0,\"lip_thickness\":0,\"sun_1\":0,\"bags_1\":0,\"moles_1\":0,\"eyebrows_6\":0,\"decals_2\":0,\"eyebrows_1\":0,\"watches_2\":0,\"makeup_4\":0,\"decals_1\":0,\"nose_6\":0,\"beard_1\":0,\"beard_4\":0,\"beard_3\":0,\"watches_1\":-1,\"makeup_3\":0,\"helmet_2\":0,\"bodyb_3\":-1,\"chin_2\":0,\"makeup_1\":0,\"chest_1\":0,\"torso_1\":11,\"mask_2\":0,\"cheeks_1\":0,\"mom\":45,\"chain_1\":0,\"bproof_2\":0,\"blush_2\":0,\"chin_3\":0,\"arms_2\":0,\"bproof_1\":0,\"ears_1\":-1,\"nose_5\":0,\"mask_1\":51,\"jaw_2\":0,\"pants_1\":24,\"cheeks_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"arms\":20,\"bodyb_4\":0,\"helmet_1\":-1,\"eyebrows_4\":0,\"skin_md_weight\":50,\"glasses_1\":0,\"lipstick_3\":0,\"tshirt_2\":2,\"lipstick_1\":0,\"blush_1\":0,\"hair_2\":0,\"blemishes_2\":0,\"tshirt_1\":22,\"moles_2\":0,\"bracelets_2\":0,\"nose_3\":0,\"eye_squint\":0,\"jaw_1\":0,\"shoes_2\":0,\"complexion_2\":0,\"age_1\":0,\"cheeks_3\":0,\"eyebrows_5\":0,\"chest_3\":0,\"chin_1\":0,\"face_md_weight\":50,\"neck_thickness\":0,\"sex\":0,\"bags_2\":0,\"dad\":12,\"bracelets_1\":-1,\"chin_4\":0,\"hair_1\":12,\"complexion_1\":0,\"makeup_2\":0,\"shoes_1\":10,\"beard_2\":0,\"sun_2\":0,\"bodyb_2\":0,\"blush_3\":0,\"nose_2\":0,\"ears_2\":0}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, 0, 70),
('8416d5ce2dac8f6aa1b15ea3b7bdca8e27780872', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":-2958.5,\"heading\":176.2,\"z\":14.0,\"y\":388.7}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"blemishes_1\":0,\"nose_1\":0,\"chain_2\":0,\"torso_2\":1,\"mask_1\":51,\"hair_color_1\":0,\"pants_2\":0,\"arms\":0,\"hair_color_2\":0,\"beard_4\":0,\"glasses_2\":0,\"chest_2\":0,\"glasses_1\":0,\"nose_4\":0,\"hair_1\":1,\"lip_thickness\":0,\"sun_1\":0,\"blush_3\":0,\"bracelets_2\":0,\"eyebrows_6\":0,\"nose_6\":0,\"eyebrows_1\":0,\"watches_2\":0,\"makeup_4\":0,\"ears_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"eye_color\":0,\"lipstick_4\":0,\"watches_1\":-1,\"makeup_3\":0,\"sun_2\":0,\"shoes_1\":10,\"chin_2\":0,\"makeup_1\":0,\"jaw_2\":0,\"torso_1\":40,\"bags_1\":0,\"bodyb_4\":0,\"nose_5\":0,\"chest_3\":0,\"bproof_2\":0,\"blush_2\":0,\"chin_3\":0,\"arms_2\":0,\"bproof_1\":4,\"ears_1\":-1,\"jaw_1\":0,\"moles_1\":0,\"face_md_weight\":50,\"cheeks_3\":0,\"cheeks_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"decals_1\":0,\"makeup_2\":0,\"decals_2\":0,\"eyebrows_4\":0,\"cheeks_1\":0,\"bodyb_3\":-1,\"lipstick_3\":0,\"moles_2\":0,\"blemishes_2\":0,\"blush_1\":0,\"hair_2\":0,\"mom\":21,\"tshirt_1\":6,\"lipstick_1\":0,\"mask_2\":1,\"nose_3\":0,\"pants_1\":24,\"chest_1\":0,\"shoes_2\":0,\"complexion_2\":0,\"age_1\":0,\"beard_3\":0,\"eyebrows_5\":0,\"eye_squint\":0,\"chin_1\":0,\"bodyb_1\":-1,\"neck_thickness\":0,\"sex\":0,\"lipstick_2\":0,\"chain_1\":0,\"bracelets_1\":-1,\"tshirt_2\":0,\"beard_1\":0,\"complexion_1\":0,\"helmet_1\":-1,\"helmet_2\":0,\"skin_md_weight\":50,\"dad\":0,\"bodyb_2\":0,\"bags_2\":0,\"nose_2\":0,\"chin_4\":0}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, 0, 71),
('1572c2d73b73f4626aed7eab1d580c87c5259919', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":-124.9,\"y\":6445.1,\"z\":31.5,\"heading\":11.2}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"arms\":0,\"mom\":21,\"decals_1\":0,\"hair_1\":0,\"bracelets_2\":0,\"tshirt_2\":0,\"cheeks_1\":0,\"torso_1\":0,\"torso_2\":0,\"sex\":0,\"moles_2\":0,\"beard_1\":0,\"hair_color_1\":0,\"chain_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"eyebrows_5\":0,\"hair_color_2\":0,\"age_2\":0,\"skin_md_weight\":50,\"pants_1\":0,\"blush_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"bodyb_1\":-1,\"makeup_1\":0,\"arms_2\":0,\"chin_3\":0,\"nose_3\":0,\"eye_color\":0,\"jaw_2\":0,\"tshirt_1\":0,\"lipstick_3\":0,\"blemishes_2\":0,\"shoes_2\":0,\"blush_3\":0,\"beard_3\":0,\"beard_4\":0,\"eye_squint\":0,\"sun_2\":0,\"blemishes_1\":0,\"ears_2\":0,\"lipstick_4\":0,\"cheeks_2\":0,\"chest_1\":0,\"bags_2\":0,\"helmet_1\":-1,\"lip_thickness\":0,\"face_md_weight\":50,\"neck_thickness\":0,\"nose_5\":0,\"glasses_2\":0,\"blush_1\":0,\"pants_2\":0,\"makeup_4\":0,\"cheeks_3\":0,\"watches_1\":-1,\"eyebrows_4\":0,\"complexion_1\":0,\"bproof_1\":0,\"shoes_1\":0,\"decals_2\":0,\"bodyb_3\":-1,\"chest_2\":0,\"watches_2\":0,\"glasses_1\":0,\"nose_2\":0,\"nose_1\":0,\"dad\":0,\"moles_1\":0,\"bodyb_2\":0,\"jaw_1\":0,\"bracelets_1\":-1,\"bags_1\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"hair_2\":0,\"mask_2\":0,\"helmet_2\":0,\"chin_4\":0,\"nose_4\":0,\"lipstick_2\":0,\"age_1\":0,\"bodyb_4\":0,\"complexion_2\":0,\"bproof_2\":0,\"lipstick_1\":0,\"eyebrows_1\":0,\"eyebrows_6\":0,\"beard_2\":0,\"chin_1\":0,\"mask_1\":0,\"nose_6\":0,\"chin_2\":0,\"chest_3\":0,\"sun_1\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, 0, 72),
('5eced0a293d2a2d8a59b361bb49e331cb19e6719', NULL, '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":-1029.5,\"y\":-2705.3,\"z\":13.8,\"heading\":235.1}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"arms\":0,\"mom\":21,\"decals_1\":0,\"bags_2\":0,\"bracelets_2\":0,\"tshirt_2\":0,\"cheeks_1\":0,\"dad\":0,\"torso_2\":0,\"sex\":0,\"moles_2\":0,\"nose_4\":0,\"hair_color_1\":0,\"chain_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"eyebrows_5\":0,\"hair_color_2\":0,\"age_2\":0,\"lipstick_2\":0,\"pants_1\":0,\"blush_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"bodyb_1\":-1,\"mask_1\":0,\"beard_2\":0,\"sun_2\":0,\"jaw_1\":0,\"blemishes_1\":0,\"lipstick_4\":0,\"tshirt_1\":0,\"lipstick_3\":0,\"bproof_1\":0,\"shoes_2\":0,\"blush_3\":0,\"beard_3\":0,\"beard_4\":0,\"eye_squint\":0,\"sun_1\":0,\"glasses_2\":0,\"ears_2\":0,\"eye_color\":0,\"cheeks_2\":0,\"chest_1\":0,\"hair_1\":0,\"helmet_1\":-1,\"pants_2\":0,\"jaw_2\":0,\"neck_thickness\":0,\"nose_5\":0,\"arms_2\":0,\"nose_3\":0,\"beard_1\":0,\"watches_1\":-1,\"cheeks_3\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"face_md_weight\":50,\"chest_2\":0,\"shoes_1\":0,\"decals_2\":0,\"bodyb_3\":-1,\"complexion_2\":0,\"watches_2\":0,\"glasses_1\":0,\"nose_2\":0,\"nose_1\":0,\"lip_thickness\":0,\"moles_1\":0,\"bodyb_2\":0,\"makeup_2\":0,\"bracelets_1\":-1,\"bags_1\":0,\"chest_3\":0,\"eyebrows_2\":0,\"hair_2\":0,\"helmet_2\":0,\"mask_2\":0,\"chin_4\":0,\"chin_3\":0,\"skin_md_weight\":50,\"age_1\":0,\"makeup_1\":0,\"blush_1\":0,\"torso_1\":0,\"makeup_4\":0,\"eyebrows_1\":0,\"eyebrows_6\":0,\"bproof_2\":0,\"chin_1\":0,\"lipstick_1\":0,\"nose_6\":0,\"chin_2\":0,\"bodyb_4\":0,\"blemishes_2\":0}', '[]', 0, 0, 73),
('55c8eb28908c997d75f9e7003349b97e22f2f96c', NULL, '{\"black_money\":0,\"money\":0,\"bank\":50000}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":13.8,\"y\":-2721.4,\"x\":-970.3,\"heading\":81.5}', 0, NULL, 1, NULL, 'firstname', 'lastname', '01-01-1999', 'm', NULL, NULL, NULL, '{\"chin_3\":0,\"torso_1\":0,\"pants_2\":0,\"mask_2\":0,\"cheeks_1\":0,\"moles_1\":0,\"bags_1\":0,\"chin_2\":0,\"bproof_2\":0,\"bracelets_2\":0,\"ears_2\":0,\"nose_4\":0,\"eye_squint\":0,\"jaw_1\":0,\"ears_1\":-1,\"hair_2\":0,\"nose_1\":-9,\"mom\":23,\"mask_1\":0,\"eyebrows_2\":0,\"nose_5\":0,\"chain_2\":0,\"sex\":1,\"dad\":23,\"arms_2\":0,\"bproof_1\":0,\"torso_2\":0,\"bodyb_4\":0,\"complexion_1\":0,\"hair_1\":0,\"face_md_weight\":43,\"watches_2\":0,\"bags_2\":0,\"pants_1\":0,\"watches_1\":-1,\"jaw_2\":0,\"neck_thickness\":0,\"arms\":0,\"chest_3\":0,\"sun_1\":0,\"blush_2\":0,\"blush_1\":0,\"eyebrows_3\":0,\"beard_3\":0,\"blemishes_2\":0,\"hair_color_2\":0,\"lip_thickness\":0,\"eyebrows_4\":0,\"glasses_2\":0,\"lipstick_2\":0,\"complexion_2\":0,\"helmet_2\":0,\"nose_3\":0,\"bracelets_1\":-1,\"chest_2\":0,\"makeup_2\":0,\"blemishes_1\":0,\"bodyb_1\":-1,\"eyebrows_1\":0,\"beard_4\":0,\"moles_2\":0,\"shoes_1\":0,\"tshirt_1\":0,\"bodyb_3\":-1,\"bodyb_2\":0,\"chin_4\":0,\"makeup_1\":0,\"lipstick_3\":0,\"cheeks_3\":0,\"blush_3\":0,\"lipstick_1\":0,\"chain_1\":0,\"makeup_3\":0,\"lipstick_4\":0,\"tshirt_2\":0,\"skin_md_weight\":39,\"eyebrows_5\":0,\"beard_1\":0,\"chest_1\":0,\"age_1\":0,\"shoes_2\":0,\"glasses_1\":5,\"age_2\":0,\"decals_1\":0,\"chin_1\":0,\"eyebrows_6\":0,\"nose_6\":0,\"eye_color\":0,\"cheeks_2\":0,\"hair_color_1\":0,\"helmet_1\":-1,\"beard_2\":0,\"makeup_4\":0,\"sun_2\":0,\"nose_2\":0,\"decals_2\":0}', '[{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, 0, 74);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_parkings`
--

CREATE TABLE `user_parkings` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) DEFAULT NULL,
  `garage` varchar(60) DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 300),
(2, 'BlackWeashop', 'WEAPON_PISTOL', 500),
(3, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
(5, 'GunShop', 'WEAPON_MACHETE', 90),
(6, 'BlackWeashop', 'WEAPON_MACHETE', 110),
(7, 'GunShop', 'WEAPON_NIGHTSTICK', 150),
(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
(9, 'GunShop', 'WEAPON_BAT', 100),
(10, 'BlackWeashop', 'WEAPON_BAT', 100),
(11, 'GunShop', 'WEAPON_STUNGUN', 50),
(12, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
(13, 'GunShop', 'WEAPON_MICROSMG', 1400),
(14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400),
(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
(17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000),
(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
(19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
(21, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000),
(22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000),
(23, 'GunShop', 'WEAPON_FIREWORK', 18000),
(24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
(25, 'GunShop', 'WEAPON_GRENADE', 500),
(26, 'BlackWeashop', 'WEAPON_GRENADE', 650),
(27, 'GunShop', 'WEAPON_BZGAS', 200),
(28, 'BlackWeashop', 'WEAPON_BZGAS', 350),
(29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
(30, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
(31, 'GunShop', 'WEAPON_BALL', 50),
(32, 'BlackWeashop', 'WEAPON_BALL', 50),
(33, 'GunShop', 'WEAPON_SMOKEGRENADE', 100),
(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
(35, 'BlackWeashop', 'WEAPON_APPISTOL', 1100),
(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
(37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000),
(38, 'BlackWeashop', 'WEAPON_MINIGUN', 45000),
(39, 'BlackWeashop', 'WEAPON_RAILGUN', 50000),
(40, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indizes für die Tabelle `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Indizes für die Tabelle `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `car_parking`
--
ALTER TABLE `car_parking`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indizes für die Tabelle `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `datastores`
--
ALTER TABLE `datastores`
  ADD PRIMARY KEY (`name`),
  ADD KEY `owner` (`owner`);

--
-- Indizes für die Tabelle `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Indizes für die Tabelle `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `fnx_kd`
--
ALTER TABLE `fnx_kd`
  ADD PRIMARY KEY (`identifier`);

--
-- Indizes für die Tabelle `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`name`),
  ADD KEY `owner` (`owner`);

--
-- Indizes für die Tabelle `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_name` (`job_name`),
  ADD KEY `grade` (`grade`);

--
-- Indizes für die Tabelle `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indizes für die Tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `multicharacter_slots`
--
ALTER TABLE `multicharacter_slots`
  ADD PRIMARY KEY (`identifier`) USING BTREE,
  ADD KEY `slots` (`slots`) USING BTREE;

--
-- Indizes für die Tabelle `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indizes für die Tabelle `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `owner` (`owner`);

--
-- Indizes für die Tabelle `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indizes für die Tabelle `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indizes für die Tabelle `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store` (`store`);

--
-- Indizes für die Tabelle `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indizes für die Tabelle `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Indizes für die Tabelle `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`jbg`),
  ADD UNIQUE KEY `index_users_phone_number` (`phone_number`);

--
-- Indizes für die Tabelle `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user_contacts_identifier_name_number` (`identifier`,`name`,`number`);

--
-- Indizes für die Tabelle `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user_parkings`
--
ALTER TABLE `user_parkings`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indizes für die Tabelle `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indizes für die Tabelle `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=527;

--
-- AUTO_INCREMENT für Tabelle `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `car_parking`
--
ALTER TABLE `car_parking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=870;

--
-- AUTO_INCREMENT für Tabelle `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT für Tabelle `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT für Tabelle `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT für Tabelle `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT für Tabelle `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT für Tabelle `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT für Tabelle `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT für Tabelle `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT für Tabelle `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `jbg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT für Tabelle `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `user_parkings`
--
ALTER TABLE `user_parkings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
