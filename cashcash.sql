-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 18 déc. 2023 à 16:25
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cashcash0`
--

-- --------------------------------------------------------

--
-- Structure de la table `agences`
--

CREATE TABLE `agences` (
  `numero_agence` varchar(191) NOT NULL,
  `nom_agence` varchar(50) NOT NULL,
  `adresse_agence` varchar(50) NOT NULL,
  `telephone_agence` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `agences`
--

INSERT INTO `agences` (`numero_agence`, `nom_agence`, `adresse_agence`, `telephone_agence`) VALUES
('AG001', 'BricoDepot', 'Avenue du marechal leclerc Paris', '0325457854'),
('AG002', 'castorama', 'Avenue du general de Gaule Paris', '0327859854'),
('AG003', 'maaf', 'route des fleurs', '0327412854'),
('AG004', 'MoneyIndustries', 'rue rené pichon', '0329852854');

-- --------------------------------------------------------

--
-- Structure de la table `assistant_telephoniques`
--

CREATE TABLE `assistant_telephoniques` (
  `matricule` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `assistant_telephoniques`
--

INSERT INTO `assistant_telephoniques` (`matricule`) VALUES
('AT000'),
('AT121'),
('AT129'),
('AT300'),
('AT536'),
('AT578'),
('AT596'),
('AT612'),
('AT736'),
('AT765'),
('AT799'),
('AT881'),
('AT901');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `numero_client` varchar(191) NOT NULL,
  `email` varchar(50) NOT NULL,
  `duree_deplacement` double(8,2) NOT NULL,
  `distanceKM` int(11) NOT NULL,
  `raison_sociale` varchar(50) NOT NULL,
  `siren` varchar(50) NOT NULL,
  `code_ape` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `telephone_client` varchar(10) NOT NULL,
  `numero_agence` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`numero_client`, `email`, `duree_deplacement`, `distanceKM`, `raison_sociale`, `siren`, `code_ape`, `adresse`, `telephone_client`, `numero_agence`) VALUES
('C002', 'DemarioVolkman@outlook.com', 23.00, 82, 'Ms. Leann Dooley', '809 830 591', '34.79A', 'Avenue du marechal leclerc Paris', '4819043636', 'AG003'),
('C024', 'DarionBaumbach@outlook.com', 67.00, 37, 'Kaley Hartmann', '743 682 723', '28.63A', 'route des fleurs', '1050853156', 'AG003'),
('C027', 'AnibalHermann@hotmail.com@free.fr', 82.00, 23, 'Miss Leanne Jones', '680 852 500', '78.64Z', 'route des fleurs', '1988244571', 'AG002'),
('C033', 'ChristopheKunde@hotmail.com@free.fr', 72.00, 68, 'Prof. Jovanny Crooks I', '176 121 123', '29.41Z', 'Avenue du marechal leclerc Paris', '6410271746', 'AG003'),
('C036', 'TerryJakubowski@gmail.com', 23.00, 81, 'Misael Klocko', '842 077 097', '67.63A', 'Avenue du general de Gaule Paris', '7750239385', 'AG002'),
('C038', 'EloyKreiger@hotmail.com@free.fr', 93.00, 86, 'Dr. Mariam Carroll', '893 951 256', '32.18B', 'Avenue du general de Gaule Paris', '7561136651', 'AG003'),
('C042', 'FelixVandervort@outlook.com', 65.00, 82, 'Paxton Stoltenberg', '063 690 572', '24.38Z', 'Avenue du marechal leclerc Paris', '6006942188', 'AG003'),
('C075', 'KelsieKunde@gmail.com', 51.00, 78, 'Virginie Jacobson II', '314 454 173', '08.07Z', 'Avenue du marechal leclerc Paris', '2445331930', 'AG003'),
('C078', 'ClintBecker@hotmail.com@free.fr', 57.00, 51, 'Paul Stamm', '751 440 621', '13.74A', 'Avenue du marechal leclerc Paris', '1855317664', 'AG001'),
('C084', 'JeanneWisozk@outlook.com', 80.00, 99, 'Dr. Tatum Schmitt', '779 556 539', '49.86A', 'Avenue du marechal leclerc Paris', '6915239641', 'AG003'),
('C093', 'WilberProsacco@gmail.com', 98.00, 31, 'Lisette Howell DVM', '296 953 790', '19.29B', 'Avenue du general de Gaule Paris', '1092491385', 'AG001'),
('C107', 'JaneHills@gmail.com', 49.00, 78, 'Mr. General Ryan', '818 351 209', '35.37B', 'route des fleurs', '0232283227', 'AG001'),
('C115', 'NellieMurazik@hotmail.com@free.fr', 37.00, 35, 'Cooper Bahringer', '387 629 373', '47.45A', 'Avenue du marechal leclerc Paris', '2600944161', 'AG003'),
('C139', 'RebaHarber@hotmail.com@free.fr', 100.00, 23, 'Zaria Bednar', '910 711 855', '83.41B', 'Avenue du general de Gaule Paris', '8942037718', 'AG001'),
('C158', 'TellyBrown@gmail.com', 92.00, 57, 'Carson Ferry', '432 947 412', '56.88Z', 'route des fleurs', '9963433179', 'AG001'),
('C166', 'AlyciaGottlieb@outlook.com', 47.00, 28, 'Jalon Bogan', '234 900 144', '36.89B', 'Avenue du general de Gaule Paris', '7218584361', 'AG002'),
('C180', 'PatLehner@outlook.com', 86.00, 31, 'Ms. Caroline Volkman Jr.', '217 420 254', '55.22B', 'Avenue du marechal leclerc Paris', '7646860132', 'AG004'),
('C192', 'CaliBradtke@gmail.com', 13.00, 71, 'Ayden Zieme', '270 330 434', '65.01B', 'Avenue du general de Gaule Paris', '9218683140', 'AG003'),
('C203', 'KeltonCarter@hotmail.com@free.fr', 47.00, 20, 'Hermina Beer', '739 453 035', '01.44B', 'Avenue du general de Gaule Paris', '2601355087', 'AG003'),
('C213', 'JakeBrekke@gmail.com', 69.00, 74, 'Mr. Zachary Buckridge Sr.', '460 866 022', '47.38B', 'route des fleurs', '9724718790', 'AG001'),
('C243', 'JeramyHuel@outlook.com', 38.00, 55, 'Dr. Daniela Auer PhD', '936 676 973', '00.66Z', 'Avenue du general de Gaule Paris', '1833829348', 'AG002'),
('C252', 'JackyShanahan@outlook.com', 98.00, 29, 'Hyman Champlin', '714 077 702', '82.78A', 'Avenue du marechal leclerc Paris', '2130388327', 'AG003'),
('C256', 'MelbaMarquardt@hotmail.com@free.fr', 56.00, 29, 'Ms. Shanie Roberts', '147 162 949', '40.07A', 'Avenue du marechal leclerc Paris', '7144037548', 'AG001'),
('C266', 'LurlineOkuneva@outlook.com', 18.00, 18, 'Ms. Elizabeth Pfannerstill', '028 826 820', '44.78A', 'Avenue du marechal leclerc Paris', '0539848326', 'AG004'),
('C275', 'SantinoMcKenzie@gmail.com', 70.00, 100, 'Reymundo Wisoky', '382 578 179', '69.50Z', 'Avenue du general de Gaule Paris', '7069537799', 'AG004'),
('C280', 'HudsonO\'Connell@outlook.com', 38.00, 43, 'Asa Weimann Jr.', '423 725 187', '69.70A', 'route des fleurs', '9403338201', 'AG002'),
('C281', 'CandelarioO\'Conner@gmail.com', 79.00, 19, 'Michale Wiegand MD', '035 749 476', '13.76A', 'Avenue du marechal leclerc Paris', '9195712113', 'AG001'),
('C286', 'TremaineErnser@hotmail.com@free.fr', 93.00, 38, 'Eden Wolf', '958 696 651', '13.32Z', 'Avenue du general de Gaule Paris', '0858690096', 'AG003'),
('C306', 'ChristyMcLaughlin@outlook.com', 55.00, 13, 'Zackery Osinski IV', '173 860 573', '72.31A', 'Avenue du general de Gaule Paris', '9691898821', 'AG002'),
('C330', 'HarmonLangosh@outlook.com', 92.00, 28, 'Prof. Serena Mertz', '270 344 892', '47.92A', 'Avenue du general de Gaule Paris', '8618465592', 'AG003'),
('C341', 'ImaniMcKenzie@outlook.com', 97.00, 52, 'Addison Herman', '339 598 442', '86.28A', 'Avenue du marechal leclerc Paris', '1807154017', 'AG002'),
('C347', 'HassieGerlach@outlook.com', 37.00, 54, 'Prof. Dedrick Ruecker DDS', '329 226 271', '85.20Z', 'Avenue du marechal leclerc Paris', '5197753616', 'AG003'),
('C351', 'DeclanMorar@gmail.com', 13.00, 74, 'Jessy Maggio', '733 574 012', '42.76Z', 'route des fleurs', '9551117730', 'AG003'),
('C352', 'ReedRath@hotmail.com@free.fr', 38.00, 82, 'Mrs. Amanda Lind I', '513 215 926', '06.89B', 'Avenue du general de Gaule Paris', '5448946158', 'AG003'),
('C357', 'MyaKling@gmail.com', 58.00, 55, 'Ms. Kayla Bartell III', '786 287 620', '46.56Z', 'route des fleurs', '3330502547', 'AG004'),
('C358', 'MasonHoeger@hotmail.com@free.fr', 51.00, 59, 'Wilburn Hills', '026 114 474', '94.42Z', 'Avenue du marechal leclerc Paris', '4641602744', 'AG004'),
('C362', 'HermannOkuneva@gmail.com', 99.00, 69, 'Ms. Gia Howe MD', '574 979 751', '62.08Z', 'Avenue du marechal leclerc Paris', '2994163328', 'AG002'),
('C367', 'DanielleSipes@hotmail.com@free.fr', 68.00, 74, 'Miss Edythe Satterfield', '410 047 160', '82.04B', 'Avenue du general de Gaule Paris', '5987632446', 'AG001'),
('C377', 'MaudCrona@outlook.com', 63.00, 75, 'Dr. Olin Graham I', '841 710 916', '85.98B', 'Avenue du marechal leclerc Paris', '9464355330', 'AG001'),
('C379', 'JanelleMonahan@hotmail.com@free.fr', 57.00, 85, 'Mable Kub', '443 706 117', '67.58A', 'Avenue du general de Gaule Paris', '9853057172', 'AG001'),
('C400', 'CandiceO\'Connell@hotmail.com@free.fr', 26.00, 85, 'Earline O\'Connell', '423 995 581', '43.20B', 'route des fleurs', '9892299421', 'AG002'),
('C419', 'NatErnser@gmail.com', 45.00, 64, 'Jared Ferry II', '528 136 515', '14.06A', 'route des fleurs', '9492717192', 'AG003'),
('C420', 'CrystalWeber@hotmail.com@free.fr', 30.00, 69, 'Kim Kshlerin', '889 984 928', '55.33B', 'Avenue du marechal leclerc Paris', '1867259759', 'AG004'),
('C433', 'DevinHintz@outlook.com', 45.00, 85, 'Gretchen Connelly', '553 870 696', '40.96B', 'Avenue du marechal leclerc Paris', '9102392249', 'AG002'),
('C434', 'ValentinaSawayn@outlook.com', 97.00, 10, 'Gianni Will', '871 441 196', '49.02Z', 'route des fleurs', '2383223548', 'AG001'),
('C453', 'ElyseKoss@gmail.com', 44.00, 20, 'Donald Little IV', '350 837 219', '42.98Z', 'Avenue du general de Gaule Paris', '5428014082', 'AG004'),
('C477', 'ScotCummerata@hotmail.com@free.fr', 43.00, 95, 'Ariel Orn', '635 447 606', '42.53A', 'Avenue du general de Gaule Paris', '8497382989', 'AG004'),
('C478', 'MertieSchaden@hotmail.com@free.fr', 61.00, 45, 'Helga Hoeger II', '216 342 664', '55.10A', 'route des fleurs', '2608427122', 'AG002'),
('C484', 'AliyahMueller@outlook.com', 39.00, 36, 'Georgianna Denesik', '625 463 621', '97.11Z', 'Avenue du marechal leclerc Paris', '4161356725', 'AG004'),
('C513', 'TateCummings@gmail.com', 72.00, 38, 'Ms. Annetta Bauch III', '119 573 206', '50.38B', 'Avenue du marechal leclerc Paris', '7287829950', 'AG002'),
('C516', 'LudwigYost@gmail.com', 93.00, 72, 'Quentin Hill', '857 554 356', '46.72B', 'Avenue du marechal leclerc Paris', '5821353474', 'AG004'),
('C527', 'HassieO\'Kon@hotmail.com@free.fr', 18.00, 50, 'Makenna O\'Conner', '823 067 833', '59.21Z', 'route des fleurs', '5575573839', 'AG003'),
('C553', 'DeonWuckert@gmail.com', 58.00, 38, 'Art Rau MD', '704 939 195', '87.69A', 'route des fleurs', '4711960451', 'AG004'),
('C556', 'RetaBoyer@hotmail.com@free.fr', 39.00, 13, 'Mrs. Luna Sporer II', '949 204 688', '61.54A', 'Avenue du marechal leclerc Paris', '4238914954', 'AG002'),
('C558', 'VladimirOberbrunner@hotmail.com@free.fr', 44.00, 100, 'Madilyn Ryan', '555 318 828', '48.71B', 'Avenue du marechal leclerc Paris', '8638456656', 'AG004'),
('C578', 'ElbertKub@gmail.com', 61.00, 49, 'Delmer Kovacek II', '416 844 513', '40.16Z', 'route des fleurs', '3075805830', 'AG004'),
('C591', 'CasandraFeest@gmail.com', 17.00, 78, 'Erna Kemmer', '019 125 916', '38.25B', 'Avenue du marechal leclerc Paris', '6683335142', 'AG003'),
('C613', 'VidalRosenbaum@hotmail.com@free.fr', 89.00, 29, 'Prof. Alexandro Johnson PhD', '574 464 577', '86.70A', 'Avenue du marechal leclerc Paris', '2722418021', 'AG001'),
('C628', 'RozellaKuhlman@hotmail.com@free.fr', 12.00, 39, 'Barton Anderson Jr.', '180 689 554', '95.45A', 'Avenue du marechal leclerc Paris', '6366020389', 'AG004'),
('C634', 'GiaKshlerin@gmail.com', 89.00, 48, 'Miss Shawna Dickens V', '919 446 636', '80.35B', 'Avenue du marechal leclerc Paris', '0727439071', 'AG002'),
('C656', 'DannieSchimmel@hotmail.com@free.fr', 62.00, 35, 'Gisselle Powlowski', '746 908 360', '48.50A', 'route des fleurs', '4479779380', 'AG003'),
('C659', 'ScotTremblay@outlook.com', 56.00, 29, 'Kareem Blanda', '801 732 780', '55.93Z', 'Avenue du general de Gaule Paris', '3578261497', 'AG003'),
('C692', 'CynthiaHammes@hotmail.com@free.fr', 40.00, 79, 'Rhoda Jones', '860 087 273', '45.95A', 'Avenue du marechal leclerc Paris', '4731060449', 'AG001'),
('C696', 'GwenLedner@gmail.com', 91.00, 69, 'Zander Schaefer', '659 436 458', '01.35A', 'Avenue du marechal leclerc Paris', '9842957204', 'AG001'),
('C699', 'DorianHomenick@gmail.com', 98.00, 46, 'Dangelo Upton', '400 123 202', '60.71Z', 'route des fleurs', '0052434559', 'AG002'),
('C703', 'AmyStoltenberg@hotmail.com@free.fr', 18.00, 50, 'Mr. Emerson Feest PhD', '883 858 465', '05.87A', 'Avenue du general de Gaule Paris', '3932204210', 'AG002'),
('C722', 'AriLittel@outlook.com', 26.00, 85, 'Presley Torphy', '360 939 414', '15.14Z', 'Avenue du marechal leclerc Paris', '3693092887', 'AG001'),
('C734', 'EleazarMarquardt@hotmail.com@free.fr', 41.00, 57, 'Dr. Russell Nicolas', '130 424 321', '34.30A', 'route des fleurs', '4410780036', 'AG003'),
('C753', 'AnissaLueilwitz@outlook.com', 25.00, 66, 'Tillman Orn Sr.', '982 058 301', '87.06A', 'Avenue du marechal leclerc Paris', '3265333703', 'AG004'),
('C774', 'JessikaJast@outlook.com', 90.00, 23, 'Wilhelmine Littel MD', '425 486 727', '92.73Z', 'Avenue du general de Gaule Paris', '7158900194', 'AG004'),
('C794', 'WillieStoltenberg@hotmail.com@free.fr', 12.00, 30, 'Name O\'Kon', '758 656 710', '28.54B', 'route des fleurs', '5398159582', 'AG003'),
('C797', 'PatrickLedner@hotmail.com@free.fr', 43.00, 66, 'Thelma Schmitt', '419 619 292', '00.41Z', 'Avenue du general de Gaule Paris', '8934095837', 'AG001'),
('C799', 'SvenSpinka@gmail.com', 59.00, 21, 'Dr. Herta Mante', '418 769 814', '18.08B', 'route des fleurs', '3031751348', 'AG001'),
('C801', 'CorneliusRitchie@hotmail.com@free.fr', 69.00, 21, 'Lindsey Kreiger', '619 150 860', '49.37Z', 'Avenue du marechal leclerc Paris', '2081603378', 'AG004'),
('C841', 'WillisGoldner@outlook.com', 51.00, 27, 'Ella Larson', '081 306 527', '42.84B', 'route des fleurs', '1798193070', 'AG001'),
('C852', 'SantaNienow@hotmail.com@free.fr', 73.00, 11, 'Jaron Schaden', '709 124 925', '53.18Z', 'Avenue du marechal leclerc Paris', '5371841465', 'AG003'),
('C861', 'ZoilaHane@hotmail.com@free.fr', 65.00, 22, 'Kamille Sporer Jr.', '599 649 571', '89.98A', 'route des fleurs', '7075747833', 'AG003'),
('C865', 'DevenRowe@hotmail.com@free.fr', 12.00, 65, 'Leone Emmerich', '362 006 357', '17.57B', 'Avenue du marechal leclerc Paris', '7932467658', 'AG002'),
('C882', 'ZellaRuecker@hotmail.com@free.fr', 72.00, 80, 'Icie Ledner', '110 439 466', '77.15A', 'Avenue du general de Gaule Paris', '6826448091', 'AG001'),
('C884', 'ElectaEmard@hotmail.com@free.fr', 66.00, 11, 'Mrs. Loren Schumm Jr.', '157 951 929', '71.50B', 'Avenue du general de Gaule Paris', '5865192149', 'AG004'),
('C902', 'EdmundWeber@outlook.com', 38.00, 14, 'Prof. Delta Collier PhD', '960 428 560', '42.00B', 'Avenue du marechal leclerc Paris', '2243952254', 'AG003'),
('C906', 'BritneySchumm@gmail.com', 64.00, 88, 'Dedric Hills', '356 973 556', '14.55B', 'route des fleurs', '1483749074', 'AG002'),
('C910', 'JeffKiehn@hotmail.com@free.fr', 50.00, 11, 'Prof. Michael Stehr Sr.', '129 435 919', '06.58B', 'Avenue du general de Gaule Paris', '9493534967', 'AG004'),
('C917', 'BellPouros@gmail.com', 61.00, 97, 'Darren Rippin', '455 658 412', '48.79Z', 'route des fleurs', '6226773269', 'AG002'),
('C918', 'KenyattaWitting@hotmail.com@free.fr', 82.00, 78, 'Morton Reinger', '033 357 452', '65.28Z', 'Avenue du marechal leclerc Paris', '3132671791', 'AG001'),
('C929', 'CaesarHayes@outlook.com', 37.00, 33, 'Marcos Deckow', '663 466 918', '68.00A', 'Avenue du general de Gaule Paris', '8221069858', 'AG003'),
('C942', 'RodgerRatke@outlook.com', 63.00, 38, 'Mr. Stanley Wisoky I', '342 591 170', '00.97A', 'Avenue du marechal leclerc Paris', '8377077922', 'AG001'),
('C963', 'RhodaWintheiser@gmail.com', 62.00, 62, 'Cassandre Kassulke', '609 799 028', '83.37B', 'Avenue du marechal leclerc Paris', '1203902336', 'AG004'),
('C964', 'GudrunRippin@hotmail.com@free.fr', 96.00, 100, 'Eula Daugherty', '744 246 472', '11.99Z', 'route des fleurs', '4261082913', 'AG002'),
('C977', 'LarueWilliamson@outlook.com', 71.00, 34, 'Dr. Rahsaan Heidenreich DDS', '524 789 252', '88.43A', 'route des fleurs', '8923284143', 'AG002'),
('C978', 'EltaLegros@gmail.com', 44.00, 81, 'Aryanna Christiansen II', '714 400 905', '05.75Z', 'Avenue du general de Gaule Paris', '3698769042', 'AG001'),
('C988', 'GilbertRogahn@gmail.com', 80.00, 53, 'Miss Karina Huels Jr.', '841 885 933', '14.46B', 'route des fleurs', '2924094626', 'AG001'),
('C993', 'CoreneStreich@outlook.com', 72.00, 16, 'Miss Mariam Lowe', '788 172 262', '20.12A', 'Avenue du marechal leclerc Paris', '5817598960', 'AG001'),
('C994', 'MadalynSteuber@hotmail.com@free.fr', 10.00, 47, 'Lafayette Rippin', '374 653 645', '03.00Z', 'route des fleurs', '9218944936', 'AG001');

-- --------------------------------------------------------

--
-- Structure de la table `contrat_de_maintenances`
--

CREATE TABLE `contrat_de_maintenances` (
  `numero_de_contrat` varchar(191) NOT NULL,
  `date_signature` date NOT NULL,
  `date_echeance` date NOT NULL,
  `reference_type_contrat` varchar(191) NOT NULL,
  `numero_client` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contrat_de_maintenances`
--

INSERT INTO `contrat_de_maintenances` (`numero_de_contrat`, `date_signature`, `date_echeance`, `reference_type_contrat`, `numero_client`) VALUES
('1', '1980-09-18', '1978-02-12', 'TC003', 'C027'),
('2', '1989-11-24', '2018-02-27', 'TC004', 'C252'),
('3', '1989-12-31', '2011-05-20', 'TC002', 'C203'),
('4', '2000-07-08', '2008-01-07', 'TC002', 'C266'),
('5', '1976-06-08', '2012-10-31', 'TC001', 'C002'),
('6', '1991-06-15', '1979-12-23', 'TC004', 'C024'),
('7', '2002-04-04', '1975-12-09', 'TC001', 'C093'),
('8', '1981-01-22', '2012-06-27', 'TC005', 'C166'),
('9', '1975-01-18', '1979-09-10', 'TC002', 'C252');

-- --------------------------------------------------------

--
-- Structure de la table `controlers`
--

CREATE TABLE `controlers` (
  `numero_intervention` bigint(20) UNSIGNED NOT NULL,
  `numero_de_serie` varchar(191) NOT NULL,
  `temps_passe` int(11) NOT NULL,
  `commentaire` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `controlers`
--

INSERT INTO `controlers` (`numero_intervention`, `numero_de_serie`, `temps_passe`, `commentaire`) VALUES
(2, 'TM002', 4, 'Eulah Klein'),
(3, 'TM002', 6, 'Alyson Rippin'),
(4, 'TM002', 1, 'Victor Feest V'),
(7, 'TM001', 1, 'Shanelle Durgan'),
(8, 'TM002', 7, 'Jensen Krajcik'),
(9, 'TM002', 8, 'Jennie Mills V');

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

CREATE TABLE `employes` (
  `matricule` varchar(191) NOT NULL,
  `nom_employe` varchar(50) NOT NULL,
  `prenom_employe` varchar(50) NOT NULL,
  `adresse_employe` varchar(50) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `date_embauche` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`matricule`, `nom_employe`, `prenom_employe`, `adresse_employe`, `mdp`, `date_embauche`) VALUES
('AT000', 'Bocquet', 'Louis', '13 Boulevard de la Liberté', '5678', '0000-00-00'),
('AT001', 'Gleason', 'Weston', '186 avenue Elmo Borer', '49322204', '2013-06-05'),
('AT121', 'Miller', 'Anabel', '25 rue Mr. Porter Stanton MD', '57869914', '1996-05-02'),
('AT129', 'Hudson', 'Santiago', '48 avenue Prof. Milford Nader Sr.', '13062418', '1986-06-27'),
('AT300', 'Jacobs', 'Ezra', '149 chemin Jessyca Streich', '39098788', '1974-01-09'),
('AT536', 'Labadie', 'Christophe', '161 boulevards Leora Gulgowski', '34487752', '2022-08-02'),
('AT578', 'Luettgen', 'Reina', '67 rue Jayme Mayer', '28233688', '2018-12-25'),
('AT596', 'Sauer', 'Lois', '106 allee Caroline Kassulke I', '55560651', '2000-01-06'),
('AT612', 'Green', 'Jazlyn', '115 rue Mollie Waters', '49011119', '1976-08-09'),
('AT736', 'Buckridge', 'Alize', '47 boulevards Queenie Grimes', '18292754', '1999-05-03'),
('AT765', 'O\'Reilly', 'Devonte', '134 chemin Miss Neha Wolf PhD', '61730642', '1982-02-23'),
('AT799', 'Bergstrom', 'Sincere', '7 allee Prof. Lindsay Feil III', '99891409', '2004-06-06'),
('AT881', 'Roob', 'Anibal', '192 avenue Mr. Orville Wintheiser', '13982156', '2004-02-17'),
('AT901', 'Ankunding', 'Kane', '52 rue Pascale Nitzsche', '42184361', '2014-11-17'),
('T000', 'Doe', 'John', '1 Avenue des champs Elysée', '1234', '0000-00-00'),
('T072', 'Feeney', 'Meagan', '123 chemin Larue Stroman', '78881028', '1995-10-02'),
('T115', 'Gusikowski', 'Serena', '120 avenue Prof. Manuela Koss PhD', '35617211', '1986-01-22'),
('T182', 'Barton', 'Bert', '43 chemin Dr. Clarabelle Schumm', '33806983', '1980-10-05'),
('T217', 'Hettinger', 'Sigrid', '193 boulevards Alia Harvey', '64268526', '1970-02-20'),
('T237', 'Schowalter', 'Jarrell', '119 chemin Edyth Gutmann', '76342840', '1976-09-09'),
('T277', 'Mraz', 'Vivian', '58 chemin Krista Kihn IV', '41006191', '2022-07-13'),
('T285', 'Rowe', 'Adrien', '179 avenue Dr. Adolphus Zulauf', '39233885', '2006-11-26'),
('T407', 'Torphy', 'Camryn', '74 allee Laron Schimmel', '87993328', '2020-11-12'),
('T439', 'Wintheiser', 'Deon', '116 boulevards Frieda Koelpin', '06264507', '2019-01-12'),
('T516', 'Feeney', 'Freda', '180 boulevards Wendell Greenholt', '88056040', '1982-01-02'),
('T560', 'Bosco', 'Alexandre', '20 avenue Vaughn Lind', '35473179', '2019-01-03'),
('T567', 'Kovacek', 'Jayne', '105 avenue Janice Bahringer Jr.', '55063097', '1982-11-17'),
('T666', 'Welch', 'Noah', '37 allee Ms. Lucile Brown Sr.', '16146707', '1986-03-13'),
('T770', 'Treutel', 'Brad', '127 boulevards Gracie Greenholt', '52182335', '2008-07-25'),
('T868', 'Shanahan', 'Casimir', '93 rue Macy Watsica', '75840544', '2019-11-09'),
('T874', 'Medhurst', 'Rey', '17 chemin Colt Wehner', '74426678', '2020-11-13'),
('T969', 'Dicki', 'Jackeline', '83 avenue Genesis Kovacek', '33298271', '2002-07-07');

-- --------------------------------------------------------

--
-- Structure de la table `interventions`
--

CREATE TABLE `interventions` (
  `numero_intervention` bigint(20) UNSIGNED NOT NULL,
  `date_visite` date NOT NULL,
  `heure_visite` time NOT NULL,
  `numero_client` varchar(191) NOT NULL,
  `matricule` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `interventions`
--

INSERT INTO `interventions` (`numero_intervention`, `date_visite`, `heure_visite`, `numero_client`, `matricule`) VALUES
(2, '1975-05-30', '19:06:39', 'C038', 'T000'),
(3, '1986-03-25', '17:32:20', 'C115', 'T439'),
(4, '1984-01-19', '19:31:42', 'C139', 'T182'),
(7, '2002-04-08', '04:41:13', 'C038', 'T277'),
(8, '1998-12-19', '10:43:02', 'C107', 'T072'),
(9, '2012-01-16', '13:50:36', 'C139', 'T072'),
(10, '2019-12-10', '22:08:34', 'C078', 'T115'),
(13, '2012-04-27', '07:01:48', 'C078', 'T277'),
(14, '2002-09-21', '21:16:57', 'C252', 'T182'),
(30, '1996-01-10', '16:36:12', 'C256', 'T285'),
(33, '1970-01-22', '18:56:56', 'C093', 'T439'),
(37, '1995-02-09', '00:22:26', 'C180', 'T516'),
(38, '2004-08-31', '09:50:57', 'C042', 'T439'),
(43, '2007-03-28', '03:18:12', 'C033', 'T407'),
(46, '1991-01-19', '04:25:33', 'C166', 'T277'),
(47, '2001-12-13', '16:27:33', 'C275', 'T407'),
(48, '1995-02-22', '03:40:42', 'C115', 'T182'),
(52, '1987-02-03', '13:20:05', 'C084', 'T072'),
(56, '1972-06-23', '09:11:51', 'C075', 'T072'),
(57, '1983-07-19', '09:48:59', 'C027', 'T182'),
(58, '1981-01-14', '11:04:44', 'C002', 'T277'),
(60, '2012-05-25', '05:49:05', 'C078', 'T237'),
(61, '1997-02-18', '15:42:18', 'C036', 'T072'),
(63, '1986-07-29', '21:13:27', 'C252', 'T237'),
(65, '1971-03-20', '17:56:55', 'C180', 'T072'),
(67, '1974-10-22', '13:07:48', 'C078', 'T217'),
(68, '1982-04-28', '12:49:34', 'C180', 'T516'),
(70, '2000-07-25', '23:59:15', 'C243', 'T285'),
(73, '1991-05-12', '22:48:36', 'C158', 'T516'),
(75, '2014-02-28', '06:40:52', 'C075', 'T182'),
(79, '2011-11-19', '12:37:07', 'C027', 'T182'),
(83, '1982-04-16', '22:42:34', 'C115', 'T182'),
(84, '2004-12-07', '15:04:30', 'C084', 'T516'),
(85, '2014-09-09', '10:43:24', 'C033', 'T407'),
(86, '2002-12-24', '11:01:07', 'C033', 'T285'),
(94, '2018-10-12', '18:19:14', 'C042', 'T182'),
(95, '1992-12-04', '21:46:56', 'C252', 'T217'),
(96, '1992-02-07', '05:25:54', 'C243', 'T115'),
(99, '2009-03-09', '17:59:53', 'C024', 'T516'),
(100, '1986-01-01', '06:15:13', 'C036', 'T439'),
(105, '1994-08-08', '18:02:13', 'C213', 'T182'),
(107, '1992-11-07', '09:58:35', 'C266', 'T237'),
(108, '2021-08-14', '04:06:47', 'C158', 'T407'),
(109, '1999-08-12', '16:12:26', 'C075', 'T000'),
(111, '1976-03-03', '09:57:05', 'C036', 'T115'),
(113, '1998-03-18', '01:41:29', 'C180', 'T407'),
(116, '1982-09-11', '09:58:41', 'C180', 'T407'),
(118, '1995-09-30', '22:27:01', 'C256', 'T182'),
(123, '2012-01-17', '14:45:28', 'C243', 'T237'),
(129, '2020-11-19', '12:17:40', 'C243', 'T217'),
(130, '2002-02-10', '14:32:54', 'C115', 'T182'),
(132, '2021-10-16', '01:03:35', 'C275', 'T000'),
(133, '1974-07-24', '05:59:53', 'C093', 'T072'),
(134, '2014-06-16', '08:28:02', 'C033', 'T516'),
(135, '2001-08-02', '18:47:33', 'C275', 'T277'),
(137, '1993-01-28', '22:58:44', 'C084', 'T285'),
(139, '2000-03-08', '10:56:53', 'C093', 'T000'),
(141, '1987-06-01', '23:54:45', 'C158', 'T516'),
(142, '2001-06-27', '15:37:36', 'C033', 'T000'),
(143, '2005-07-22', '03:19:33', 'C139', 'T285'),
(144, '1994-05-25', '01:17:42', 'C036', 'T000'),
(147, '1970-11-01', '23:25:40', 'C027', 'T115'),
(153, '1991-03-19', '22:32:04', 'C139', 'T439'),
(155, '2018-03-22', '07:47:26', 'C115', 'T217'),
(156, '1992-09-06', '11:04:50', 'C093', 'T072'),
(158, '1985-09-09', '07:23:26', 'C084', 'T277'),
(163, '1985-03-10', '08:25:06', 'C158', 'T182'),
(164, '1979-03-01', '18:04:59', 'C213', 'T000'),
(166, '1996-04-24', '22:00:45', 'C275', 'T407'),
(167, '1995-03-27', '08:55:44', 'C158', 'T277'),
(171, '1999-07-02', '17:38:59', 'C192', 'T217'),
(172, '1997-03-21', '18:01:18', 'C042', 'T277'),
(179, '2004-03-07', '09:55:19', 'C139', 'T217'),
(180, '2022-08-16', '12:03:56', 'C266', 'T217'),
(182, '1998-11-10', '21:15:28', 'C158', 'T115'),
(188, '2002-12-25', '15:53:44', 'C139', 'T182'),
(189, '2003-08-28', '12:03:21', 'C075', 'T407'),
(190, '1996-07-24', '14:24:54', 'C275', 'T000'),
(192, '2005-08-22', '11:54:58', 'C275', 'T000'),
(193, '2018-06-08', '14:52:32', 'C036', 'T072'),
(199, '1976-05-08', '02:48:34', 'C078', 'T217'),
(200, '2014-04-15', '10:02:17', 'C002', 'T439'),
(202, '1979-09-21', '07:19:38', 'C084', 'T182'),
(203, '1999-04-03', '22:47:19', 'C036', 'T000'),
(204, '2015-05-12', '09:02:51', 'C078', 'T182'),
(205, '2015-05-27', '17:21:14', 'C027', 'T277'),
(207, '1971-09-25', '13:46:51', 'C275', 'T072'),
(212, '1975-04-27', '23:48:27', 'C256', 'T277'),
(213, '1989-01-20', '19:04:08', 'C252', 'T285'),
(223, '2019-02-03', '06:04:50', 'C002', 'T000'),
(224, '2008-02-15', '02:58:21', 'C166', 'T285'),
(225, '2001-06-25', '23:42:34', 'C115', 'T000'),
(226, '1995-03-14', '09:15:05', 'C027', 'T285'),
(227, '2004-06-17', '03:00:20', 'C213', 'T182'),
(229, '2004-09-19', '02:14:26', 'C139', 'T516'),
(230, '1990-07-29', '23:37:11', 'C252', 'T237'),
(231, '1979-05-20', '09:17:08', 'C192', 'T439'),
(233, '2018-02-28', '12:30:10', 'C075', 'T516'),
(234, '2003-01-15', '02:31:10', 'C139', 'T115'),
(235, '1999-10-21', '08:00:29', 'C139', 'T237'),
(237, '2006-09-28', '04:56:51', 'C252', 'T277'),
(238, '1998-12-14', '22:44:08', 'C192', 'T407'),
(240, '1978-02-19', '17:17:31', 'C213', 'T516'),
(241, '1989-03-04', '23:37:33', 'C002', 'T516'),
(245, '2012-05-08', '05:22:25', 'C256', 'T182'),
(249, '1980-08-09', '10:17:00', 'C266', 'T217'),
(250, '2016-10-08', '03:44:00', 'C203', 'T217'),
(252, '2008-05-11', '17:30:22', 'C158', 'T182'),
(253, '2003-11-12', '16:08:55', 'C192', 'T237'),
(257, '2008-04-19', '01:29:54', 'C107', 'T072'),
(258, '2003-09-03', '14:40:41', 'C252', 'T237'),
(260, '2017-03-24', '20:43:46', 'C115', 'T237'),
(261, '1970-02-24', '11:57:23', 'C243', 'T407'),
(265, '2005-09-02', '01:56:36', 'C002', 'T277'),
(266, '2003-09-02', '05:38:16', 'C024', 'T285'),
(268, '2004-11-07', '01:57:31', 'C075', 'T277'),
(269, '1994-09-16', '15:38:05', 'C078', 'T182'),
(270, '2018-01-02', '11:04:44', 'C036', 'T439'),
(276, '1973-03-26', '15:39:25', 'C036', 'T182'),
(280, '2009-02-20', '06:57:44', 'C078', 'T072'),
(281, '2000-03-18', '00:56:39', 'C139', 'T277'),
(286, '1981-12-11', '10:58:40', 'C275', 'T182'),
(288, '2000-12-23', '22:14:43', 'C252', 'T285'),
(291, '1973-07-12', '11:27:54', 'C275', 'T182'),
(293, '2008-09-28', '21:51:03', 'C180', 'T115'),
(295, '1970-11-06', '03:43:38', 'C213', 'T277'),
(297, '2006-08-15', '06:53:46', 'C243', 'T182'),
(299, '2014-10-08', '18:30:30', 'C042', 'T285');

-- --------------------------------------------------------

--
-- Structure de la table `materiels`
--

CREATE TABLE `materiels` (
  `numero_de_serie` varchar(50) NOT NULL,
  `date_de_vente` date NOT NULL,
  `date_d_installation` date NOT NULL,
  `prix_de_vente` double(15,2) NOT NULL,
  `emplacement` varchar(50) NOT NULL,
  `numero_de_contrat` bigint(20) NOT NULL,
  `reference_interne` varchar(255) NOT NULL,
  `numero_client` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `materiels`
--

INSERT INTO `materiels` (`numero_de_serie`, `date_de_vente`, `date_d_installation`, `prix_de_vente`, `emplacement`, `numero_de_contrat`, `reference_interne`, `numero_client`) VALUES
('M605', '1979-12-27', '1977-05-24', 6.00, 'NULL', 8, 'TM002', 'C275'),
('M720', '2002-05-31', '1983-12-19', 6.00, 'NULL', 2, 'TM001', 'C180'),
('M656', '1996-01-07', '2006-05-27', 4.00, 'NULL', 9, 'TM001', 'C158'),
('M969', '2008-08-08', '2003-09-25', 4.00, 'NULL', 8, 'TM002', 'C243'),
('M455', '1986-02-14', '1983-12-14', 9.00, 'NULL', 8, 'TM002', 'C166'),
('M663', '1972-02-16', '2012-01-29', 3.00, 'NULL', 8, 'TM001', 'C158'),
('M524', '1992-01-08', '1998-10-24', 1.00, 'NULL', 7, 'TM001', 'C084'),
('M950', '2008-12-04', '1978-09-24', 2.00, 'NULL', 5, 'TM001', 'C038'),
('M804', '2016-02-22', '1999-03-18', 5.00, 'NULL', 7, 'TM001', 'C075'),
('M446', '2014-12-26', '2014-06-04', 7.00, 'NULL', 4, 'TM001', 'C243'),
('M635', '1989-10-03', '1982-06-29', 2.00, 'NULL', 5, 'TM001', 'C166'),
('M216', '1976-08-06', '2015-04-16', 9.00, 'NULL', 8, 'TM001', 'C166'),
('M757', '2016-11-22', '1997-03-14', 7.00, 'NULL', 2, 'TM002', 'C042'),
('M932', '1976-04-25', '2004-03-14', 4.00, 'NULL', 9, 'TM002', 'C213'),
('M136', '1987-05-04', '1997-03-07', 8.00, 'NULL', 2, 'TM001', 'C252'),
('M522', '1987-10-02', '2008-11-27', 4.00, 'NULL', 4, 'TM002', 'C275'),
('M602', '1971-10-18', '1987-05-20', 1.00, 'NULL', 9, 'TM001', 'C266'),
('M285', '2021-02-18', '1981-02-22', 8.00, 'NULL', 8, 'TM002', 'C166'),
('M575', '2023-10-07', '1977-03-02', 5.00, 'NULL', 4, 'TM001', 'C038'),
('M738', '2021-02-17', '2021-11-18', 4.00, 'NULL', 1, 'TM001', 'C158'),
('M806', '1983-09-10', '2019-06-22', 3.00, 'NULL', 8, 'TM001', 'C027'),
('M221', '2014-06-16', '2004-01-18', 5.00, 'NULL', 1, 'TM002', 'C266'),
('M445', '2003-07-28', '2010-02-21', 7.00, 'NULL', 7, 'TM001', 'C027'),
('M816', '1997-06-03', '2020-12-09', 9.00, 'NULL', 6, 'TM001', 'C107'),
('M567', '1975-03-08', '2017-01-04', 8.00, 'NULL', 4, 'TM002', 'C180'),
('M017', '2007-09-10', '1973-09-22', 8.00, 'NULL', 3, 'TM002', 'C213'),
('M490', '2023-02-26', '2008-04-20', 4.00, 'NULL', 5, 'TM002', 'C075'),
('M034', '2011-09-11', '1999-01-30', 3.00, 'NULL', 7, 'TM002', 'C192'),
('M047', '1990-05-28', '1976-02-10', 5.00, 'NULL', 3, 'TM002', 'C275'),
('M218', '1973-05-28', '1983-06-17', 3.00, 'NULL', 3, 'TM002', 'C166'),
('M354', '1990-12-14', '2004-07-12', 6.00, 'NULL', 3, 'TM001', 'C158'),
('M170', '1998-01-05', '1988-07-05', 6.00, 'NULL', 8, 'TM001', 'C252'),
('M454', '1997-05-02', '1981-01-27', 1.00, 'NULL', 9, 'TM001', 'C213'),
('M154', '1977-02-10', '2010-10-26', 6.00, 'NULL', 1, 'TM002', 'C002'),
('M931', '1989-09-08', '1992-10-28', 4.00, 'NULL', 9, 'TM002', 'C252'),
('M435', '1983-05-01', '2000-10-06', 4.00, 'NULL', 3, 'TM001', 'C027'),
('M627', '2004-07-20', '2010-02-19', 8.00, 'NULL', 7, 'TM001', 'C192'),
('M600', '1974-06-27', '2008-01-09', 2.00, 'NULL', 9, 'TM001', 'C075'),
('M275', '2009-01-11', '1991-12-18', 2.00, 'NULL', 2, 'TM001', 'C038'),
('M339', '1982-04-20', '2001-01-05', 9.00, 'NULL', 5, 'TM001', 'C275'),
('M178', '2008-04-04', '1982-12-02', 1.00, 'NULL', 1, 'TM002', 'C107'),
('M250', '2005-05-06', '1998-07-31', 2.00, 'NULL', 1, 'TM001', 'C213'),
('M475', '2018-12-21', '2008-07-29', 7.00, 'NULL', 8, 'TM002', 'C166'),
('M733', '2017-01-27', '2021-07-29', 6.00, 'NULL', 7, 'TM002', 'C093'),
('M893', '2006-07-04', '2011-08-14', 5.00, 'NULL', 5, 'TM001', 'C266'),
('M532', '2003-01-15', '1976-10-07', 6.00, 'NULL', 9, 'TM002', 'C266'),
('M175', '1991-08-06', '2014-05-10', 9.00, 'NULL', 8, 'TM002', 'C024'),
('M354', '2021-06-08', '2022-09-28', 4.00, 'NULL', 4, 'TM001', 'C275'),
('M185', '2016-02-13', '1994-11-20', 6.00, 'NULL', 5, 'TM001', 'C042'),
('M683', '2007-07-14', '1999-11-29', 3.00, 'NULL', 1, 'TM001', 'C275'),
('M546', '2018-10-09', '1994-01-03', 3.00, 'NULL', 9, 'TM001', 'C033'),
('M549', '1998-11-24', '2017-01-31', 5.00, 'NULL', 3, 'TM001', 'C115'),
('M956', '1971-08-01', '1989-06-10', 2.00, 'NULL', 5, 'TM001', 'C192'),
('M958', '1976-07-03', '2003-10-14', 3.00, 'NULL', 4, 'TM002', 'C180'),
('M540', '1977-01-31', '2007-10-01', 6.00, 'NULL', 4, 'TM002', 'C042'),
('M874', '2008-01-03', '2014-06-25', 5.00, 'NULL', 7, 'TM002', 'C107'),
('M600', '1976-02-24', '2013-06-03', 6.00, 'NULL', 5, 'TM001', 'C203'),
('M271', '2000-04-23', '1990-01-04', 8.00, 'NULL', 2, 'TM001', 'C107'),
('M919', '2003-10-28', '1986-04-11', 3.00, 'NULL', 9, 'TM001', 'C139'),
('M641', '1974-07-05', '2006-06-28', 4.00, 'NULL', 3, 'TM002', 'C027');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_11_24_184701_create_employes_table', 1),
(3, '2023_11_24_185509_create_assistant_telephoniques_table', 1),
(4, '2023_11_24_185610_create_agences_table', 1),
(5, '2023_11_24_185818_create_clients_table', 1),
(6, '2023_11_24_185959_create_type_materiels_table', 1),
(7, '2023_11_24_190118_create_type_contrats_table', 1),
(8, '2023_11_24_190201_create_techniciens_table', 1),
(9, '2023_11_24_190314_create_interventions_table', 1),
(10, '2023_11_24_190439_create_contrat_de_maintenances_table', 1),
(11, '2023_11_24_190517_create_controlers_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `techniciens`
--

CREATE TABLE `techniciens` (
  `matricule` varchar(191) NOT NULL,
  `telephone_mobile` varchar(10) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `date_obtention` date NOT NULL,
  `numero_agence` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `techniciens`
--

INSERT INTO `techniciens` (`matricule`, `telephone_mobile`, `qualification`, `date_obtention`, `numero_agence`) VALUES
('T000', '0699686677', 'Technicien de niveau 3', '2004-07-25', 'AG003'),
('T072', '0675691446', 'Technicien de niveau 2', '1982-04-21', 'AG002'),
('T115', '0627088253', 'Technicien de niveau 4', '1989-10-15', 'AG004'),
('T182', '0677669662', 'Technicien de niveau 1', '2003-10-21', 'AG002'),
('T217', '0685088079', 'Technicien de niveau 1', '2002-08-02', 'AG001'),
('T237', '0699236989', 'Technicien de niveau 5', '2018-06-06', 'AG003'),
('T277', '0639788930', 'Technicien de niveau 1', '2003-09-20', 'AG001'),
('T285', '0619300819', 'Technicien de niveau 2', '2001-09-07', 'AG003'),
('T407', '0637362294', 'Technicien de niveau 1', '2016-08-13', 'AG002'),
('T439', '0675027104', 'Technicien de niveau 5', '2012-09-01', 'AG004'),
('T516', '0603490517', 'Technicien de niveau 5', '1988-08-18', 'AG004');

-- --------------------------------------------------------

--
-- Structure de la table `type_contrats`
--

CREATE TABLE `type_contrats` (
  `reference_type_contrat` varchar(191) NOT NULL,
  `delai_intervention` varchar(50) NOT NULL,
  `taux_applicable` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_contrats`
--

INSERT INTO `type_contrats` (`reference_type_contrat`, `delai_intervention`, `taux_applicable`) VALUES
('TC001', '3 jours', 10.00),
('TC002', '7 jours', 20.00),
('TC003', '17 jours', 15.00),
('TC004', '27 jours', 7.00),
('TC005', '34 jours', 13.00);

-- --------------------------------------------------------

--
-- Structure de la table `type_materiels`
--

CREATE TABLE `type_materiels` (
  `reference_interne` varchar(191) NOT NULL,
  `libelle_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_materiels`
--

INSERT INTO `type_materiels` (`reference_interne`, `libelle_type`) VALUES
('TM001', 'petite caisse'),
('TM002', 'caisse bâtie');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agences`
--
ALTER TABLE `agences`
  ADD PRIMARY KEY (`numero_agence`);

--
-- Index pour la table `assistant_telephoniques`
--
ALTER TABLE `assistant_telephoniques`
  ADD PRIMARY KEY (`matricule`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`numero_client`),
  ADD KEY `clients_numero_agence_foreign` (`numero_agence`);

--
-- Index pour la table `contrat_de_maintenances`
--
ALTER TABLE `contrat_de_maintenances`
  ADD PRIMARY KEY (`numero_de_contrat`),
  ADD KEY `contrat_de_maintenances_reference_type_contrat_foreign` (`reference_type_contrat`),
  ADD KEY `contrat_de_maintenances_numero_client_foreign` (`numero_client`);

--
-- Index pour la table `controlers`
--
ALTER TABLE `controlers`
  ADD PRIMARY KEY (`numero_intervention`),
  ADD UNIQUE KEY `controlers_numero_intervention_numero_de_serie_unique` (`numero_intervention`,`numero_de_serie`),
  ADD KEY `controlers_numero_de_serie_foreign` (`numero_de_serie`);

--
-- Index pour la table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`matricule`);

--
-- Index pour la table `interventions`
--
ALTER TABLE `interventions`
  ADD PRIMARY KEY (`numero_intervention`),
  ADD KEY `interventions_numero_client_foreign` (`numero_client`),
  ADD KEY `interventions_matricule_foreign` (`matricule`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `techniciens`
--
ALTER TABLE `techniciens`
  ADD PRIMARY KEY (`matricule`),
  ADD KEY `techniciens_numero_agence_foreign` (`numero_agence`);

--
-- Index pour la table `type_contrats`
--
ALTER TABLE `type_contrats`
  ADD PRIMARY KEY (`reference_type_contrat`);

--
-- Index pour la table `type_materiels`
--
ALTER TABLE `type_materiels`
  ADD PRIMARY KEY (`reference_interne`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `controlers`
--
ALTER TABLE `controlers`
  MODIFY `numero_intervention` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `interventions`
--
ALTER TABLE `interventions`
  MODIFY `numero_intervention` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `assistant_telephoniques`
--
ALTER TABLE `assistant_telephoniques`
  ADD CONSTRAINT `assistant_telephoniques_matricule_foreign` FOREIGN KEY (`matricule`) REFERENCES `employes` (`matricule`);

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_numero_agence_foreign` FOREIGN KEY (`numero_agence`) REFERENCES `agences` (`numero_agence`);

--
-- Contraintes pour la table `contrat_de_maintenances`
--
ALTER TABLE `contrat_de_maintenances`
  ADD CONSTRAINT `contrat_de_maintenances_numero_client_foreign` FOREIGN KEY (`numero_client`) REFERENCES `clients` (`numero_client`),
  ADD CONSTRAINT `contrat_de_maintenances_reference_type_contrat_foreign` FOREIGN KEY (`reference_type_contrat`) REFERENCES `type_contrats` (`reference_type_contrat`);

--
-- Contraintes pour la table `controlers`
--
ALTER TABLE `controlers`
  ADD CONSTRAINT `controlers_numero_de_serie_foreign` FOREIGN KEY (`numero_de_serie`) REFERENCES `type_materiels` (`reference_interne`),
  ADD CONSTRAINT `controlers_numero_intervention_foreign` FOREIGN KEY (`numero_intervention`) REFERENCES `interventions` (`numero_intervention`);

--
-- Contraintes pour la table `interventions`
--
ALTER TABLE `interventions`
  ADD CONSTRAINT `interventions_matricule_foreign` FOREIGN KEY (`matricule`) REFERENCES `techniciens` (`matricule`),
  ADD CONSTRAINT `interventions_numero_client_foreign` FOREIGN KEY (`numero_client`) REFERENCES `clients` (`numero_client`);

--
-- Contraintes pour la table `techniciens`
--
ALTER TABLE `techniciens`
  ADD CONSTRAINT `techniciens_matricule_foreign` FOREIGN KEY (`matricule`) REFERENCES `employes` (`matricule`),
  ADD CONSTRAINT `techniciens_numero_agence_foreign` FOREIGN KEY (`numero_agence`) REFERENCES `agences` (`numero_agence`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
