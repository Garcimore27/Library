-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le : jeu. 21 sep. 2023 à 23:44
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `biblioapp`
--

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `cover` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int DEFAULT NULL,
  `year` int NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pages` int DEFAULT NULL,
  `format` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isbn` varchar(13) COLLATE utf8mb4_general_ci NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `book`
--

INSERT INTO `book` (`id`, `title`, `author`, `description`, `cover`, `category`, `price`, `year`, `editor`, `language`, `pages`, `format`, `isbn`, `active`, `slug`) VALUES
(7, 'Tempore', 'Georges', 'Odio vitae voluptatem enim voluptas ex sit non. Aut quaerat natus quia suscipit harum quo. Optio consequatur non illo quidem dolor ut dolor.', 'https://via.placeholder.com/200x300.png/00cccc?text=eos', 'poésie', 14, 2017, 'Cohen S.A.S.', 'français', 419, 'poche', '9794200773888', 1, 'tempore'),
(8, 'Rerum dolores fugiat temporibus.', 'Susan Gomes-Pasquier', 'Sit aut qui veniam. Qui saepe aut in consequuntur est. Consequatur porro quia inventore vel porro sit in.', 'https://via.placeholder.com/200x300.png/0077ff?text=odio', 'théâtre', 9, 2017, 'Petitjean S.A.S.', 'français', 498, 'relié', '9794396098857', 1, 'consectetur-aut-quibusdam-ipsam-nam-alias-non-sunt'),
(9, 'Magnam qui.', 'Noël du Besson', 'Non praesentium enim occaecati quas est voluptatibus voluptatem nam. Vitae et consequatur maxime repellat. Quam at quis fuga.', 'https://via.placeholder.com/200x300.png/004433?text=amet', 'essai', 17, 1987, 'Ferreira', 'italien', 119, 'broché', '9795682170776', 1, 'doloremque-qui-ut-qui'),
(10, 'Porro recusandae eaque sapiente.', 'Élisabeth Lemonnier', 'Porro eos et nobis totam officia repellat repellendus. Qui eos alias officia ratione ducimus dolorem sed. Veniam laudantium qui expedita eos minus quisquam nulla maiores.', 'https://via.placeholder.com/200x300.png/0066dd?text=qui', 'essai', 9, 2006, 'Didier', 'italien', 229, 'relié', '9784759705799', 1, 'ea-qui-sunt-omnis-atque-id-mollitia-illum'),
(11, 'Eos nisi hic corrupti sed.', 'Emmanuelle Ferreira', 'Nesciunt consequatur totam ad error. Ipsa nam asperiores at sed sunt ea. Consequatur vitae qui numquam. Hic et voluptatibus eius distinctio quo. Dignissimos et eos deleniti voluptate.', 'https://via.placeholder.com/200x300.png/00ee33?text=voluptatem', 'théâtre', 29, 2001, 'Potier', 'italien', 204, 'relié', '9787085818607', 1, 'sint-reiciendis-in-sequi-tempora-numquam-porro-aliquid'),
(12, 'Nesciunt et quo enim quo.', 'Mathilde Marie', 'Incidunt nam maiores voluptatem cupiditate. Facilis sapiente reprehenderit qui tempora nemo omnis. Nulla et et nobis eum neque quae asperiores.', 'https://via.placeholder.com/200x300.png/007766?text=voluptatem', 'poésie', 10, 1919, 'Guyon', 'espagnol', 325, 'poche', '9787192391154', 1, 'dolorum-voluptatum-doloremque-alias-unde-dolore-qui-distinctio'),
(13, 'Quae sed.', 'Chantal-Philippine Arnaud', 'Qui atque odio ut est commodi quis adipisci. Aut et et cumque asperiores maiores tenetur adipisci. Voluptas quasi placeat recusandae explicabo.', 'https://via.placeholder.com/200x300.png/00ff66?text=velit', 'roman', 13, 1932, 'Andre SAS', 'italien', 347, 'broché', '9790617374670', 1, 'fugiat-excepturi-eum-eum'),
(14, 'Dolores enim nihil necessitatibus.', 'Claudine Laurent', 'Perferendis molestiae consequuntur voluptatem tempora sint. Quia dicta dolores dolore molestiae. Velit eius ratione vero quisquam illo id.', 'https://via.placeholder.com/200x300.png/0055dd?text=quo', 'essai', 6, 1916, 'Marchand', 'anglais', 123, 'poche', '9791026931423', 1, 'molestiae-fugit-ipsa-quo-consequatur-non-reiciendis-modi'),
(15, 'Dolor fugiat provident.', 'Olivier Richard-Monnier', 'Eius et iure quas sed. Eos accusantium nobis enim sapiente. Labore iusto nihil perspiciatis omnis doloribus iure quaerat.', 'https://via.placeholder.com/200x300.png/0066ee?text=vel', 'théâtre', 29, 1963, 'Dupuis Philippe SAS', 'anglais', 383, 'relié', '9790584489087', 1, 'voluptas-enim-quas-libero-hic-doloribus'),
(16, 'Repellat et sapiente.', 'Bertrand Bertrand', 'Modi officiis eligendi sit enim. Temporibus sequi cumque sed dolorem quo quisquam temporibus. Ut sint fuga vel nihil. Autem sed et voluptatem.', 'https://via.placeholder.com/200x300.png/00bb66?text=ad', 'essai', 16, 1915, 'Pinto', 'italien', 342, 'poche', '9792452829421', 1, 'ut-nisi-dignissimos-maxime-velit-ducimus'),
(17, 'Id quia error temporibus recusandae.', 'Stéphanie Lenoir', 'Inventore laboriosam ut rerum impedit sequi ut quaerat iure. Et facilis ut aspernatur harum voluptatum. Dolor architecto nesciunt commodi ut error.', 'https://via.placeholder.com/200x300.png/00bb22?text=excepturi', 'essai', 6, 1911, 'Garcia', 'italien', 459, 'relié', '9792800460306', 1, 'inventore-labore-veritatis-aperiam-qui-natus-excepturi'),
(18, 'Autem eaque aut id.', 'Hugues-André Robert', 'Commodi sunt qui ea quis eos. Libero nam enim cupiditate et a. Reiciendis sequi eligendi sunt.', 'https://via.placeholder.com/200x300.png/0055dd?text=aliquam', 'roman', 10, 1919, 'Faure', 'anglais', 355, 'broché', '9786368049516', 1, 'molestias-repellat-molestias-ut-tempora-assumenda-sed'),
(19, 'Consequatur dolore rerum.', 'Colette Antoine-Moreau', 'Ut natus enim unde pariatur maxime. Quis enim sint voluptatum dicta. Omnis nisi autem qui dolorum. Delectus voluptate quas maxime ea. Incidunt voluptas ea provident. Totam saepe nam et aut.', 'https://via.placeholder.com/200x300.png/006677?text=aliquid', 'poésie', 10, 1939, 'Noel S.A.', 'espagnol', 297, 'broché', '9799708627022', 1, 'et-est-voluptas-sit-neque-repellendus'),
(20, 'Est nobis necessitatibus.', 'Nath-Astrid Barbier', 'Hic perferendis excepturi libero ut. Quisquam praesentium eligendi et. Natus ad reiciendis inventore est earum exercitationem consequatur. Quae illum distinctio consequatur id.', 'https://via.placeholder.com/200x300.png/00ffff?text=doloremque', 'poésie', 28, 1977, 'Guichard', 'anglais', 130, 'broché', '9786377238079', 1, 'reiciendis-eligendi-mollitia-cum-quibusdam-architecto'),
(21, 'Quod nam ab.', 'Étienne Meyer', 'Numquam error qui et dolores. Ullam sit sunt perferendis sed rerum velit. Aut in rerum ipsa.', 'https://via.placeholder.com/200x300.png/00ee77?text=quis', 'essai', 27, 1926, 'Nicolas Peron S.A.', 'anglais', 345, 'relié', '9796508972000', 1, 'a-et-ipsum-pariatur-et-architecto'),
(22, 'Pariatur aut rerum sint.', 'Victoire Hoareau', 'Unde et error est perspiciatis quia est consequatur. Occaecati quasi est est sequi libero repellendus. Ad illo ex earum ab accusamus maiores. Nulla laborum iste optio. Quisquam in libero sit.', 'https://via.placeholder.com/200x300.png/004411?text=recusandae', 'théâtre', 23, 2002, 'Marques et Fils', 'français', 328, 'poche', '9780680072689', 1, 'officiis-nisi-incidunt-necessitatibus-ut-et-qui-sed-est'),
(23, 'Vero sint voluptatem qui.', 'Bernard Boucher', 'Aliquam eaque autem est voluptatibus. Consequatur voluptatem commodi minima enim quae aliquid nulla.', 'https://via.placeholder.com/200x300.png/005599?text=dolorum', 'poésie', 16, 1972, 'Philippe SA', 'espagnol', 243, 'poche', '9784300694800', 1, 'et-sit-beatae-nihil-et'),
(24, 'Ut magni ipsum.', 'André de la Petitjean', 'Doloremque et nobis quaerat corrupti magni enim aliquid. Praesentium soluta corporis accusantium. Facilis et nisi dolorem quae illum veritatis aut incidunt.', 'https://via.placeholder.com/200x300.png/002211?text=itaque', 'biographie', 5, 1992, 'De Sousa Vallee S.A.S.', 'espagnol', 309, 'relié', '9785615670671', 1, 'molestiae-et-libero-id-est-est-quis'),
(25, 'Eos eius quae.', 'Antoinette Mace-Alexandre', 'Architecto fuga quia nemo alias. Architecto earum nam voluptatum recusandae. Dolor voluptate sed dolores eaque.', 'https://via.placeholder.com/200x300.png/00ff99?text=nam', 'essai', 30, 2003, 'Rousset', 'français', 350, 'poche', '9795667704088', 1, 'aut-ut-quia-sed-aliquid-provident-quae'),
(26, 'In quam neque odit.', 'Laetitia Wagner', 'Et veniam ipsa non omnis. Recusandae occaecati quo ea recusandae. Perferendis et commodi dignissimos molestias blanditiis et. Maiores perferendis vitae voluptates.', 'https://via.placeholder.com/200x300.png/003333?text=a', 'poésie', 26, 1989, 'Morin', 'espagnol', 323, 'poche', '9785286277230', 1, 'cupiditate-harum-blanditiis-laborum-quia-commodi-repellendus-suscipit'),
(27, 'Fugit omnis enim.', 'Théophile Couturier', 'Ut neque suscipit nesciunt incidunt ex. Repudiandae rerum dolores et eum. Eaque rerum voluptas dolor et. Quo iusto beatae et sequi recusandae consequuntur.', 'https://via.placeholder.com/200x300.png/002288?text=officia', 'poésie', 24, 1919, 'Godard', 'italien', 387, 'relié', '9790880977233', 1, 'iure-voluptate-molestiae-ratione-deserunt-eos'),
(28, 'Mollitia saepe laudantium dolores est.', 'Andrée du Delorme', 'Sunt quia qui dolore eligendi. Nulla tempore sapiente necessitatibus corporis sint. Mollitia harum non saepe doloremque non facilis ab accusantium.', 'https://via.placeholder.com/200x300.png/0000cc?text=quas', 'biographie', 12, 1957, 'Marchand S.A.S.', 'français', 430, 'broché', '9791456837548', 1, 'non-est-blanditiis-et-non-voluptatem-ducimus'),
(29, 'Tempore sunt harum.', 'Luce Faure', 'Consequatur ut repellendus laborum minus officia laboriosam. Earum porro culpa sunt cum. Non animi voluptas suscipit iure voluptas dolorem. Atque voluptatem sint ab aut et odit qui.', 'https://via.placeholder.com/200x300.png/005511?text=tenetur', 'essai', 19, 2006, 'Bruneau SARL', 'espagnol', 102, 'poche', '9790200013870', 1, 'est-sunt-illum-et-maiores'),
(30, 'Animi fugit tenetur sed.', 'Robert de Bigot', 'Magnam voluptatem ducimus ut adipisci est est ut cumque. Libero placeat voluptas necessitatibus sapiente perferendis nesciunt. Quasi aut eum enim ipsam. Aut unde occaecati dolor sit.', 'https://via.placeholder.com/200x300.png/0055ee?text=sit', 'théâtre', 8, 1930, 'Perret', 'anglais', 328, 'relié', '9793874308136', 1, 'et-sunt-quidem-delectus-et-dolores'),
(31, 'Suscipit ex ex.', 'Olivie Lenoir-Colas', 'Reiciendis est rerum illo. Sit tempora ut minus esse sunt est. Nemo quo et aut. Aut fugit sunt aut qui ut quam vel. Corporis minima numquam quasi molestiae. Ratione nisi eum id rem quia voluptates.', 'https://via.placeholder.com/200x300.png/000066?text=provident', 'biographie', 10, 1906, 'Perez', 'italien', 231, 'broché', '9797030025394', 1, 'vitae-vitae-sit-reprehenderit-suscipit-repellendus-commodi-ut-aspernatur'),
(32, 'Dolor et animi ipsum.', 'Thibault Renaud', 'Sit et illo explicabo occaecati veritatis eum. Illum qui non culpa corporis. Distinctio tempora totam consequatur.', 'https://via.placeholder.com/200x300.png/00ee33?text=asperiores', 'poésie', 27, 1997, 'Guibert SA', 'français', 427, 'poche', '9788528410723', 1, 'nostrum-libero-est-mollitia-soluta-illum'),
(33, 'Nisi rerum praesentium aut.', 'Claire Alves-Bertin', 'Pariatur rerum reprehenderit voluptatum ipsum autem. Neque vitae eveniet qui sed. Eligendi enim magni ut voluptatem at ipsa. Eaque dolorum est omnis ipsa ullam voluptas quo architecto.', 'https://via.placeholder.com/200x300.png/008822?text=voluptatem', 'poésie', 24, 1948, 'Mathieu', 'anglais', 89, 'relié', '9790365958627', 1, 'aliquid-similique-maiores-omnis-vel-et-enim'),
(34, 'Sed quaerat et incidunt.', 'Mathilde du Vallee', 'Sed ipsum aliquid consequatur explicabo reiciendis. Saepe vitae dolor quia ex dolores. Est voluptas id consequuntur enim reprehenderit. Et quas perspiciatis atque enim qui dolore qui voluptas.', 'https://via.placeholder.com/200x300.png/00cc00?text=sit', 'biographie', 17, 1995, 'Coulon', 'français', 71, 'relié', '9780568978904', 1, 'provident-laudantium-quia-architecto-veniam-id'),
(35, 'Cum ut suscipit.', 'André Turpin', 'Provident totam sint eius quasi. Quaerat id velit hic explicabo alias necessitatibus ducimus. Sed saepe consectetur voluptates repellat nihil sapiente ex.', 'https://via.placeholder.com/200x300.png/0099ee?text=voluptas', 'roman', 28, 1988, 'Meunier S.A.R.L.', 'anglais', 317, 'broché', '9788233019204', 1, 'consectetur-voluptate-nesciunt-a-ea-perspiciatis-aut'),
(36, 'Eum ut sed.', 'Valérie Bailly-Charpentier', 'Porro esse dolorem voluptates sapiente sapiente eius. Distinctio dolor odit cupiditate maxime. Nulla incidunt nobis minima expedita nihil itaque quo amet. Fugit rerum natus et doloremque.', 'https://via.placeholder.com/200x300.png/006622?text=delectus', 'théâtre', 24, 1927, 'Marin et Fils', 'anglais', 303, 'relié', '9793571292745', 1, 'aliquam-ipsum-in-neque-non'),
(37, 'Quidem rerum nisi possimus voluptatem.', 'Maryse Fernandez', 'Occaecati dolor in ab nam. Ut laboriosam qui aliquam assumenda quia. Sed aliquid repellendus voluptas expedita ipsum nobis dolores ex. In ea aspernatur delectus.', 'https://via.placeholder.com/200x300.png/009922?text=voluptatum', 'poésie', 5, 1951, 'Blanc', 'anglais', 468, 'poche', '9787567319325', 1, 'in-facere-dicta-quia-in-deserunt'),
(38, 'Voluptate odio.', 'Élisabeth de la Cohen', 'Magni neque placeat hic sed iure nostrum aut qui. Consequatur iusto dicta voluptatem qui est. Rerum expedita quae et eos.', 'https://via.placeholder.com/200x300.png/0055dd?text=qui', 'roman', 18, 1976, 'Colas SARL', 'anglais', 76, 'broché', '9788098004193', 1, 'velit-nisi-blanditiis-totam-sint-vel-quos'),
(39, 'Ut molestiae provident.', 'Thibaut-Vincent Fournier', 'Ut hic voluptatem non commodi. Quisquam labore recusandae ipsam consectetur. Debitis quibusdam suscipit voluptatum sint ut eum ut.', 'https://via.placeholder.com/200x300.png/009922?text=nostrum', 'essai', 8, 1940, 'Bonneau Morvan S.A.S.', 'français', 50, 'broché', '9790668579819', 1, 'tenetur-qui-nihil-tempora-dignissimos'),
(40, 'Id animi aut.', 'Nathalie-Nath Torres', 'Dolores voluptatem sint officia eos distinctio omnis. Accusamus assumenda et quia et sint.', 'https://via.placeholder.com/200x300.png/005533?text=sed', 'théâtre', 13, 1912, 'Daniel', 'français', 86, 'poche', '9782462965226', 1, 'natus-fuga-cum-rerum-ab-nobis'),
(41, 'Veritatis et porro.', 'Joseph Levy', 'Molestiae culpa qui eos ipsum tempore ab. Quis occaecati voluptatum debitis sed voluptas et nisi et.', 'https://via.placeholder.com/200x300.png/0044dd?text=reprehenderit', 'poésie', 7, 1958, 'Evrard', 'anglais', 83, 'poche', '9791407550359', 1, 'alias-laudantium-consequatur-sunt-cupiditate-quia-inventore-qui-ut'),
(42, 'Omnis veniam pariatur dolorum aperiam.', 'Patrick de la Chretien', 'Et veniam quia qui et enim. Inventore quis deserunt aliquid in at debitis. Deleniti eum quia architecto et. Dignissimos incidunt a commodi cumque iste aut eum.', 'https://via.placeholder.com/200x300.png/001100?text=totam', 'essai', 11, 1986, 'Dupuis Denis et Fils', 'italien', 416, 'relié', '9780257235639', 1, 'rem-repellat-ab-veniam-voluptate-repellat-vel'),
(43, 'Rem officia fuga.', 'Lucie Thibault', 'Vel repellat necessitatibus corporis est voluptatum distinctio aspernatur et. Ut aut mollitia voluptas eaque vero id commodi.', 'https://via.placeholder.com/200x300.png/0044bb?text=nam', 'biographie', 17, 1901, 'Regnier', 'italien', 226, 'relié', '9790223027427', 1, 'qui-nostrum-iste-ipsa-maxime-cumque'),
(44, 'Quia sunt amet perferendis.', 'Nath Valentin', 'Ipsa in dolorem consequatur provident. Corrupti dolorem et perferendis recusandae et. Aliquam molestiae similique ipsum aut dolores. Totam quam eum inventore itaque ea rerum.', 'https://via.placeholder.com/200x300.png/0077bb?text=voluptatem', 'roman', 8, 2012, 'Mace', 'français', 204, 'poche', '9786616798548', 1, 'rem-nesciunt-quibusdam-et-voluptatum-rem-qui-maxime'),
(45, 'Et voluptatem in.', 'Caroline Faivre', 'Animi rerum odit totam ad exercitationem alias odit sunt. Consequatur repellendus rerum consectetur et dicta debitis nam. Sit sed distinctio facere deleniti est quia. Doloribus deleniti dolor cum.', 'https://via.placeholder.com/200x300.png/0033cc?text=sit', 'essai', 15, 2019, 'Menard Giraud et Fils', 'espagnol', 156, 'broché', '9788413443157', 1, 'velit-facilis-doloribus-inventore-officia'),
(46, 'Incidunt vero nulla qui.', 'Théophile Carpentier', 'Est deleniti sed perspiciatis nihil nihil. Omnis eaque et perspiciatis omnis. Id neque dignissimos debitis atque aut est. Optio non maiores sed dolorem.', 'https://via.placeholder.com/200x300.png/00dd88?text=et', 'roman', 28, 1955, 'Maurice Barre SARL', 'italien', 260, 'poche', '9795497815800', 1, 'corporis-est-qui-sapiente-et-autem'),
(47, 'Aliquam omnis sit.', 'Lorraine Dumont', 'Cum qui enim eius id et accusantium. Molestiae quisquam esse reprehenderit unde. Consequatur voluptatem ducimus et pariatur sunt et. Repudiandae repudiandae molestiae quasi totam quaerat.', 'https://via.placeholder.com/200x300.png/006600?text=aperiam', 'poésie', 13, 2016, 'Lenoir', 'italien', 261, 'poche', '9795599683765', 1, 'aliquam-omnis-sit-'),
(48, 'Facilis molestias.', 'Patrick Blanc', 'Ut odio totam et reprehenderit voluptatem molestiae eaque. Aut atque pariatur illum porro error consequuntur eius ab. Vel dolorem sit laudantium quis quos exercitationem dolor modi.', 'https://via.placeholder.com/200x300.png/008899?text=ex', 'essai', 10, 2001, 'Colin', 'espagnol', 208, 'broché', '9785227352613', 1, 'sequi-praesentium-omnis-odit'),
(49, 'Maxime deserunt optio.', 'Emmanuel Lopez-Dupuy', 'In ut similique sit doloribus commodi aut molestiae. Dicta ut ex sed occaecati. Omnis excepturi velit atque non. Totam unde nulla autem doloribus quibusdam saepe blanditiis.', 'https://via.placeholder.com/200x300.png/0055ee?text=est', 'théâtre', 19, 1936, 'Guibert Hernandez SARL', 'italien', 262, 'relié', '9780140116342', 1, 'dolor-sed-quis-ab-sit'),
(50, 'Sint quos qui alias.', 'Martin-Alfred Bonneau', 'Iste alias molestiae nesciunt perspiciatis atque. Eum repellat eos aut harum iure tenetur eaque ipsum. Nam qui necessitatibus et velit ut. Sed natus delectus officia esse earum nesciunt eaque.', 'https://via.placeholder.com/200x300.png/004422?text=qui', 'biographie', 19, 1964, 'Blot', 'espagnol', 162, 'poche', '9788729455684', 1, 'et-velit-similique-facere-corrupti-excepturi-inventore-tempora-itaque'),
(51, 'Corrupti et quis voluptas.', 'Michelle Michaud', 'Impedit veniam aut modi dolorum. Dolorem et rerum earum velit esse fuga qui. Accusamus excepturi est corrupti enim. Repellendus nobis velit quibusdam nisi aperiam ad quo.', 'https://via.placeholder.com/200x300.png/0011ee?text=neque', 'biographie', 29, 1905, 'Gomez', 'italien', 262, 'relié', '9781663723604', 1, 'amet-quia-iure-eos-quos-est'),
(52, 'Nisi aperiam atque.', 'Théophile Pineau', 'Assumenda voluptatem impedit dolores voluptates est qui. Earum qui nisi voluptas ut laboriosam illo. Aspernatur dolorum placeat dolore qui. Ea est nihil autem cum.', 'https://via.placeholder.com/200x300.png/00bb99?text=molestiae', 'théâtre', 9, 1954, 'Hamon', 'français', 386, 'broché', '9787955051899', 1, 'quo-beatae-est-sed-aliquam-exercitationem-reiciendis'),
(53, 'Vero inventore omnis.', 'Aimé Chartier-Fernandez', 'Eligendi et eos delectus aut minus ea reprehenderit. Rerum doloribus velit nobis nostrum. Et fuga officiis omnis incidunt. Rerum nemo velit unde fugit quo.', 'https://via.placeholder.com/200x300.png/00ff77?text=iure', 'roman', 12, 1937, 'Leveque', 'anglais', 99, 'poche', '9797636150155', 1, 'quidem-omnis-repellendus-voluptatem-enim-distinctio-sequi'),
(54, 'Sunt ut sint ducimus.', 'Zacharie Pineau', 'Saepe provident quo veritatis modi dignissimos dolorem. Voluptas nemo et rem et consequuntur repellendus doloribus repellat. Illo ad quo aut commodi. Ad ad dignissimos quo et.', 'https://via.placeholder.com/200x300.png/0022aa?text=recusandae', 'essai', 21, 1952, 'Sauvage', 'italien', 495, 'relié', '9794216818016', 1, 'quaerat-exercitationem-voluptatum-ipsam'),
(55, 'Officiis tempore.', 'Emmanuelle-Marcelle Imbert', 'In repudiandae minima atque voluptatem quod. Mollitia dolor et velit saepe laborum et. Incidunt neque ex modi voluptatibus doloremque. Voluptatem esse fuga ea iste est nostrum.', 'https://via.placeholder.com/200x300.png/003300?text=id', 'essai', 20, 1951, 'Dumont', 'anglais', 144, 'broché', '9780855507497', 1, 'sit-quis-rem-sint-illo'),
(56, 'Asperiores quam est.', 'Tristan de la Fouquet', 'Placeat omnis et at sapiente. Hic voluptatem quia blanditiis qui atque corrupti. Aut aut possimus voluptatum quasi voluptate.', 'https://via.placeholder.com/200x300.png/0088aa?text=quis', 'poésie', 10, 1999, 'Hubert', 'italien', 364, 'relié', '9789859533839', 1, 'asperiores-quam-est-'),
(57, 'Iure quo magni.', 'Éléonore Perret', 'Quibusdam non neque similique ut. Et a temporibus ratione molestiae aut non. Eos sed qui ipsum dolorem. Est sint et dolores vero et. Tempora iusto maxime est labore.', 'https://via.placeholder.com/200x300.png/00cc55?text=aut', 'poésie', 25, 1947, 'Bailly', 'espagnol', 303, 'poche', '9783307506765', 1, 'nihil-perferendis-et-illum'),
(58, 'Sequi aspernatur accusantium in.', 'Simone Pruvost', 'Ea voluptatem voluptas alias laborum. Minus dicta debitis magnam assumenda. Ipsam cumque quia facere vero officiis molestiae.', 'https://via.placeholder.com/200x300.png/00bbdd?text=provident', 'essai', 18, 1948, 'Boucher', 'français', 70, 'poche', '9786052073025', 1, 'dignissimos-dolorum-vel-qui-perferendis'),
(59, 'Magni minima et.', 'Alix Mace', 'Occaecati non nihil rerum aliquam. Nobis iste et aut ea corporis. Corrupti sapiente numquam id. Voluptatibus ducimus tenetur pariatur in repudiandae fugiat.', 'https://via.placeholder.com/200x300.png/001122?text=aut', 'biographie', 30, 1900, 'Clement', 'français', 141, 'poche', '9793956747556', 1, 'debitis-dolorem-nihil-veritatis-eum-minima-eligendi-quod-distinctio'),
(60, 'Eum in quo.', 'Geneviève-Clémence Guillou', 'Omnis nihil molestiae quidem ut totam consequatur illum atque. Sit aperiam sed consectetur ducimus explicabo. Sit error ut exercitationem expedita.', 'https://via.placeholder.com/200x300.png/009955?text=facilis', 'poésie', 24, 1958, 'Reynaud Gilles SAS', 'espagnol', 368, 'poche', '9783794531714', 1, 'nisi-delectus-dignissimos-et-fugit-sint-nobis'),
(61, 'Reiciendis pariatur odit.', 'Joséphine Faivre', 'Nulla corrupti omnis debitis minima. Porro molestias aliquam est quis. Voluptatem nam facilis sapiente et ut vel est reprehenderit.', 'https://via.placeholder.com/200x300.png/00ccff?text=non', 'biographie', 26, 1903, 'Hebert SARL', 'français', 155, 'broché', '9786969645063', 1, 'perspiciatis-nemo-illo-eum-vel-sequi-alias'),
(62, 'Autem illum nulla omnis.', 'André Maillet', 'Illo illo vitae vel aut. Voluptas corporis excepturi dolor quo ea maxime provident. Molestiae velit odio asperiores.', 'https://via.placeholder.com/200x300.png/00dd99?text=sint', 'roman', 12, 1965, 'Dupre', 'espagnol', 75, 'relié', '9795375526026', 1, 'et-quas-corporis-aut-rem-sed'),
(63, 'Unde enim ullam.', 'Éléonore-Joséphine Gauthier', 'Ipsam eos et sequi temporibus omnis rerum sequi. Et quas quo qui minus officiis numquam. Qui nihil ipsa rem et ab voluptas. Repellendus atque numquam qui qui eaque vitae.', 'https://via.placeholder.com/200x300.png/004444?text=placeat', 'roman', 20, 1979, 'Parent SAS', 'italien', 158, 'relié', '9795746870321', 1, 'totam-laboriosam-beatae-doloribus-totam-provident-sit'),
(64, 'Autem et sit aut.', 'Théodore Salmon', 'Eum rerum mollitia sit est soluta eaque. Assumenda sed velit debitis. Ut doloremque ratione sed beatae consectetur minus sit.', 'https://via.placeholder.com/200x300.png/00ee00?text=ut', 'roman', 15, 1904, 'Daniel', 'anglais', 477, 'relié', '9785246258569', 1, 'ipsam-non-et-minus-ea-libero-sit-deleniti-quo'),
(65, 'Velit modi temporibus.', 'Valérie du Laroche', 'Ratione porro pariatur laboriosam ut delectus rerum. Aliquam dolorum illum dolore esse earum. Architecto sed quam vel rem similique qui earum.', 'https://via.placeholder.com/200x300.png/00aa00?text=unde', 'théâtre', 16, 1922, 'Ollivier', 'français', 144, 'broché', '9792072153685', 1, 'nam-dolore-quas-ut-sunt-omnis-atque-placeat'),
(66, 'Error nesciunt voluptatibus excepturi.', 'Thomas Pierre', 'Illo labore consequatur non deleniti aliquam perferendis. Incidunt molestiae est ab velit laboriosam aut ratione. Aliquid cupiditate corporis neque consequatur autem.', 'https://via.placeholder.com/200x300.png/005588?text=velit', 'roman', 16, 1971, 'Labbe Legros S.A.S.', 'anglais', 78, 'relié', '9786983610108', 1, 'ullam-maiores-et-consequatur-harum-sed-cum'),
(67, 'Quisquam adipisci.', 'Pénélope Navarro', 'Rerum blanditiis fuga non neque beatae corporis. Eveniet cupiditate nam omnis doloremque. Error blanditiis ipsam maiores neque quo.', 'https://via.placeholder.com/200x300.png/00ff44?text=cupiditate', 'théâtre', 30, 1943, 'Chevalier', 'anglais', 417, 'relié', '9789640692844', 1, 'ut-numquam-asperiores-rerum-vel'),
(68, 'Cupiditate tenetur perspiciatis nemo.', 'Isaac Gros', 'Fugit rerum ut voluptate commodi. Fugiat rerum accusantium et tempora ut fuga et. Similique ut atque eligendi natus. Impedit inventore sit voluptas.', 'https://via.placeholder.com/200x300.png/0011bb?text=quod', 'essai', 21, 1974, 'Gautier SARL', 'espagnol', 289, 'relié', '9794211323348', 1, 'ea-doloremque-eos-quis-quibusdam-optio-id'),
(69, 'Dolorum voluptates quae.', 'Yves-Grégoire Caron', 'Quasi esse ut laudantium eum et. Facere nulla quidem nemo. Cupiditate non dolores qui unde similique qui. Quia harum eum quia aliquam ut est.', 'https://via.placeholder.com/200x300.png/00aaee?text=commodi', 'poésie', 12, 2005, 'Leclerc', 'espagnol', 399, 'relié', '9796071099050', 1, 'perspiciatis-quia-voluptas-voluptates-illum'),
(70, 'Et excepturi alias neque ut.', 'Émilie Sauvage', 'Dolor dolorum nemo et. Tenetur asperiores velit necessitatibus minima. Deleniti rerum pariatur voluptatem et repellat vel. Et enim pariatur voluptatem nemo.', 'https://via.placeholder.com/200x300.png/0044dd?text=est', 'essai', 7, 1959, 'Da Silva S.A.R.L.', 'anglais', 193, 'broché', '9789438049164', 1, 'accusantium-officia-exercitationem-dolores-aut-quis-dolores-assumenda'),
(71, 'Quis ut expedita qui.', 'Gilbert Schneider', 'Quo ipsum omnis eaque ut sunt consectetur ratione. Tempore illum consequatur asperiores veniam expedita ex.', 'https://via.placeholder.com/200x300.png/0044dd?text=earum', 'essai', 9, 1991, 'Pereira', 'anglais', 296, 'broché', '9787682808247', 1, 'ut-voluptatibus-nostrum-eos'),
(72, 'Perferendis in molestiae.', 'Valérie Simon-Blondel', 'Cum distinctio sed iusto magnam. Velit molestiae reiciendis delectus ab quisquam. Vitae id vel minus assumenda cumque.', 'https://via.placeholder.com/200x300.png/00ff77?text=illum', 'essai', 6, 1996, 'Legrand S.A.', 'français', 443, 'poche', '9794273899416', 1, 'culpa-illo-quaerat-nihil'),
(73, 'Deserunt voluptatem culpa.', 'Louis-Thierry Marie', 'Qui aut possimus nostrum nisi velit. Dolor et unde sunt. Veritatis quas molestiae et id esse blanditiis aut. Quod aut rerum voluptatem ducimus.', 'https://via.placeholder.com/200x300.png/00ddcc?text=sed', 'théâtre', 10, 1961, 'Lejeune', 'italien', 253, 'poche', '9780023245947', 1, 'temporibus-dolor-dolorem-eos'),
(74, 'Illum quo et laboriosam perferendis.', 'Noël Gauthier', 'Non placeat et eum adipisci alias culpa. Autem voluptates id asperiores. Molestiae ratione excepturi sunt repellat aliquid. Qui a facere excepturi id ut repudiandae accusantium.', 'https://via.placeholder.com/200x300.png/005555?text=sunt', 'roman', 25, 2008, 'Masson Gay SAS', 'français', 265, 'poche', '9796622898613', 1, 'magnam-et-atque-est-et-laboriosam'),
(75, 'Aliquid deserunt dolores.', 'Benoît Faivre', 'Iure amet voluptate ipsam ut molestias ea repellendus. Nesciunt quas et totam sint et minus. Repellat quibusdam aut et dolores mollitia esse animi.', 'https://via.placeholder.com/200x300.png/000077?text=aut', 'roman', 27, 1963, 'Jean', 'français', 297, 'relié', '9799535102426', 1, 'esse-deleniti-blanditiis-qui-officiis-qui-ut'),
(76, 'Laboriosam eius animi dolores.', 'Arthur Barbe-Schneider', 'Autem sed consectetur itaque voluptate nihil facere. Officiis ex asperiores est neque excepturi et.', 'https://via.placeholder.com/200x300.png/0066cc?text=blanditiis', 'essai', 21, 1950, 'Gros', 'anglais', 171, 'relié', '9784686671181', 1, 'voluptatem-quis-nam-quas-id-enim-necessitatibus-veniam-sit'),
(77, 'Quas et.', 'Pierre Langlois', 'Et autem et sed placeat laborum odit. Et vero vel perferendis rerum. Doloremque quis voluptas quis in qui repudiandae.', 'https://via.placeholder.com/200x300.png/009922?text=doloribus', 'biographie', 14, 1913, 'Coulon Bertin SARL', 'italien', 221, 'poche', '9784836138588', 1, 'non-sit-est-quod-rerum-fugit-vel-aut-est'),
(78, 'At inventore molestiae accusantium.', 'Caroline Caron', 'Ea et omnis nihil est maiores est corrupti. Omnis quis eum error. Dolor adipisci voluptates et facere at aliquam.', 'https://via.placeholder.com/200x300.png/00aa11?text=est', 'poésie', 13, 2020, 'Gros Lambert SA', 'italien', 302, 'poche', '9784834843309', 1, 'itaque-voluptatem-hic-molestiae-repellendus-incidunt-perferendis'),
(79, 'Sit tempore alias aut voluptatum.', 'William Boyer', 'Eaque numquam itaque et ratione. Inventore quibusdam quaerat possimus placeat. Repellat vitae nobis temporibus. Molestias recusandae porro numquam nulla.', 'https://via.placeholder.com/200x300.png/00bb44?text=et', 'essai', 12, 2006, 'Legros', 'italien', 180, 'poche', '9782313875476', 1, 'qui-ratione-soluta-neque-rem-repudiandae-sed'),
(80, 'Aut aliquid reprehenderit debitis molestias.', 'Diane Durand', 'Tempora earum explicabo beatae necessitatibus eveniet. Ipsam debitis debitis et qui repellendus molestiae fugit. Iste aperiam exercitationem odit.', 'https://via.placeholder.com/200x300.png/007755?text=numquam', 'roman', 11, 2005, 'Boucher S.A.', 'espagnol', 461, 'broché', '9787484748567', 1, 'quod-nihil-aliquam-est-voluptatem-est'),
(81, 'Facere consectetur qui.', 'René Blanchet-Godard', 'Quibusdam hic ut molestias aspernatur et distinctio. Incidunt recusandae et omnis repudiandae tempore rerum in. Assumenda molestiae eius est saepe inventore.', 'https://via.placeholder.com/200x300.png/0022aa?text=earum', 'biographie', 27, 1903, 'Girard', 'français', 112, 'relié', '9781587698040', 1, 'illo-eos-eligendi-qui'),
(82, 'Non officia non.', 'Élodie-Henriette Laine', 'Voluptate ducimus impedit qui sint. Dolorem quisquam repudiandae iure non. Aliquid officiis voluptatibus quis aut ut provident in.', 'https://via.placeholder.com/200x300.png/00bb77?text=culpa', 'biographie', 26, 1925, 'Brunel', 'italien', 192, 'poche', '9785636938026', 1, 'illum-et-quaerat-tempora-omnis'),
(83, 'Non dolore ea fugiat.', 'Stéphanie Lopes', 'Delectus laboriosam explicabo voluptatem incidunt ut expedita cumque. Repellat facere quas possimus nobis harum porro alias. Molestiae nulla tempora optio qui numquam.', 'https://via.placeholder.com/200x300.png/00ddcc?text=aliquid', 'essai', 18, 1914, 'Dupont', 'anglais', 172, 'broché', '9780959068931', 1, 'aliquam-necessitatibus-rerum-excepturi-dolorem-eos-quam'),
(84, 'Odit at necessitatibus.', 'Virginie-Lucy Fernandez', 'Maxime enim dolor suscipit possimus eum nihil. Amet beatae temporibus et et perspiciatis. Aut soluta adipisci quis minima in numquam.', 'https://via.placeholder.com/200x300.png/007722?text=ipsam', 'biographie', 10, 2009, 'Martineau', 'espagnol', 352, 'relié', '9786652688124', 1, 'architecto-odio-ad-voluptas-quia-facere-at'),
(85, 'Et sapiente ab.', 'Joseph Lefevre-Peltier', 'Occaecati dolore molestiae dicta tempora cum tempora. Unde nemo nulla nulla maxime modi omnis. Eum sit nihil sed aut. Modi magni quod temporibus maxime in incidunt.', 'https://via.placeholder.com/200x300.png/00aaaa?text=porro', 'roman', 23, 1952, 'Giraud', 'espagnol', 110, 'broché', '9783023564711', 1, 'rerum-modi-ut-iusto-aut-perspiciatis'),
(86, 'Quisquam optio rerum possimus.', 'Augustin Foucher', 'Iure eveniet ducimus at repellendus molestiae et. Tenetur magnam itaque suscipit voluptas numquam. Numquam voluptate aliquid expedita animi placeat ullam sed doloribus.', 'https://via.placeholder.com/200x300.png/00ff99?text=quo', 'biographie', 6, 1998, 'Henry Allain SARL', 'espagnol', 83, 'relié', '9791556223852', 1, 'incidunt-veniam-aut-expedita-in-officia-ea'),
(87, 'Tempore repellat.', 'Benoît Breton-Maillard', 'Autem voluptas repellat at. Nisi quae velit error voluptas laboriosam earum nulla ducimus. Quam omnis rem quia.', 'https://via.placeholder.com/200x300.png/0066ee?text=et', 'biographie', 22, 1900, 'Valentin SA', 'français', 499, 'poche', '9781468339253', 1, 'distinctio-maxime-nesciunt-et-accusamus-harum-maiores-ut-sed'),
(88, 'Officiis ut harum odit.', 'Martin Pruvost', 'Natus repellendus voluptas ut qui consequuntur ut id. Rerum iusto dolorum et rerum. Et accusantium esse est ipsam. Asperiores rerum delectus hic corrupti earum hic magnam est.', 'https://via.placeholder.com/200x300.png/00ee33?text=minima', 'roman', 10, 1988, 'Moulin', 'espagnol', 352, 'relié', '9781724542380', 1, 'numquam-corrupti-veritatis-consectetur-iure-quisquam-possimus-modi'),
(89, 'Atque voluptatem est perferendis.', 'Susanne Berthelot', 'Rerum quisquam consequatur aut quia nam qui. Maiores quae aspernatur voluptas excepturi qui aut.', 'https://via.placeholder.com/200x300.png/0099ff?text=eos', 'essai', 10, 1945, 'Lebon Boutin S.A.S.', 'espagnol', 298, 'broché', '9781738830060', 1, 'ut-aut-et-voluptas'),
(90, 'Fugit enim tempore est.', 'Corinne de Boyer', 'Officia necessitatibus voluptatem nemo consequuntur. Libero dolorem eveniet enim aut laborum non. Temporibus et enim numquam delectus minima ut repellendus.', 'https://via.placeholder.com/200x300.png/008811?text=voluptas', 'biographie', 7, 2012, 'Berger Breton et Fils', 'espagnol', 475, 'relié', '9789281144757', 1, 'ut-aut-in-velit-iste-at-assumenda'),
(91, 'Id minus voluptatem perspiciatis.', 'Stéphanie Maillot', 'Aut alias doloremque voluptatem et. Alias vitae incidunt est laudantium dolores molestias adipisci. Delectus culpa neque aut alias enim nobis ut. Architecto cumque et deserunt deleniti hic.', 'https://via.placeholder.com/200x300.png/007733?text=aliquam', 'théâtre', 22, 2007, 'Deschamps', 'français', 469, 'poche', '9795101248628', 1, 'reiciendis-ex-maiores-sequi-natus-beatae'),
(92, 'Minima voluptates molestias.', 'Renée Clerc', 'Esse fugiat neque et optio nemo. Accusantium et quas ipsa ut. Animi quaerat enim nesciunt animi vitae.', 'https://via.placeholder.com/200x300.png/007799?text=sit', 'biographie', 30, 1981, 'Chauveau', 'anglais', 86, 'relié', '9783034620215', 1, 'voluptatem-sit-est-ut-labore-corporis-rerum'),
(93, 'Rerum qui optio et.', 'Antoinette Hardy', 'Eos aliquid veniam vitae in ipsum qui. Corrupti ut pariatur adipisci et. Quidem et nihil quod et. Qui dolorem deleniti labore dolor.', 'https://via.placeholder.com/200x300.png/002299?text=ab', 'biographie', 17, 1993, 'Blin', 'espagnol', 50, 'relié', '9797771070271', 1, 'ab-et-impedit-dolorem-voluptas'),
(94, 'Reiciendis mollitia delectus eos.', 'Thibaut-Denis Martin', 'Odio temporibus et sint voluptatum voluptatum nihil. Accusamus et omnis vel rerum iste consectetur. Non dolores deleniti dolor minima. Accusantium animi fugiat labore aliquid.', 'https://via.placeholder.com/200x300.png/00bb77?text=esse', 'poésie', 15, 2009, 'Lemaitre Diallo SA', 'espagnol', 461, 'broché', '9796219927917', 1, 'harum-illo-consequatur-suscipit-est-earum'),
(95, 'Optio in ut et.', 'Arnaude-Charlotte Barbier', 'Velit inventore omnis amet est perspiciatis quod et. Inventore beatae et ipsum necessitatibus molestiae dolorum rerum. Exercitationem minima aut qui dignissimos ut reiciendis aut.', 'https://via.placeholder.com/200x300.png/000077?text=atque', 'poésie', 8, 1930, 'Dos Santos', 'italien', 269, 'broché', '9798114443486', 1, 'nihil-dolorem-vitae-quia-aut-adipisci-et'),
(96, 'Magnam cupiditate est molestiae.', 'Jean Bailly-Delahaye', 'Nam nesciunt ad consequatur vel. Id hic laudantium ex illo. Placeat corrupti reprehenderit ad omnis voluptate nulla. Quis atque ratione quia deleniti eos.', 'https://via.placeholder.com/200x300.png/002266?text=aut', 'théâtre', 18, 1969, 'Laurent SA', 'espagnol', 299, 'broché', '9790578432488', 1, 'officiis-magnam-et-sunt-libero-itaque-occaecati'),
(97, 'Deserunt perspiciatis beatae.', 'Margot-Audrey Reynaud', 'Animi veritatis consequatur ex qui. Nostrum adipisci nihil distinctio et consequatur sit explicabo. Est corrupti eum excepturi rem dicta aspernatur. Dolor quisquam aut dolorum saepe veniam.', 'https://via.placeholder.com/200x300.png/005566?text=veniam', 'roman', 12, 1931, 'Begue Chevalier SARL', 'anglais', 63, 'broché', '9787891859559', 1, 'distinctio-voluptatem-et-totam-maiores'),
(98, 'Quibusdam aut vitae dolores aspernatur.', 'Aurore Joly', 'Qui voluptas ipsa doloremque. Unde et molestiae nesciunt praesentium. Ut ea quo sit porro et necessitatibus doloribus.', 'https://via.placeholder.com/200x300.png/0055aa?text=id', 'biographie', 29, 1986, 'Maillet Guillaume S.A.', 'anglais', 246, 'poche', '9790900226921', 1, 'dolor-et-sint-ut-mollitia-aut-perspiciatis-recusandae-consequuntur'),
(99, 'Quia non mollitia.', 'Gilbert Aubry', 'Odit molestiae quas eveniet aut quidem sint. Enim nihil et omnis inventore. Impedit consequatur perspiciatis eligendi.', 'https://via.placeholder.com/200x300.png/0033ee?text=maiores', 'roman', 13, 2017, 'Verdier', 'italien', 193, 'relié', '9787727645523', 1, 'aspernatur-sed-soluta-sit-in-voluptas-quam-autem'),
(100, 'Expedita beatae consectetur doloremque.', 'Gilbert-Benoît Verdier', 'Id architecto quod laboriosam error non. Doloribus iste aperiam assumenda est doloribus. Corporis esse laudantium doloremque architecto et.', 'https://via.placeholder.com/200x300.png/001177?text=ullam', 'roman', 20, 2021, 'Guibert', 'italien', 103, 'broché', '9784746808557', 1, 'in-voluptatem-expedita-vitae-laborum-omnis-aspernatur'),
(101, 'Reprehenderit ullam dolorem sunt.', 'Joséphine Pottier', 'Non quia laboriosam quas nesciunt nesciunt ad ipsum. Et eligendi est est repellat. Corrupti cupiditate magnam in.', 'https://via.placeholder.com/200x300.png/002299?text=dolorem', 'roman', 7, 1976, 'Clerc S.A.', 'italien', 190, 'broché', '9784264213260', 1, 'in-totam-ipsam-sapiente'),
(102, 'Assumenda totam cumque.', 'Zoé Martineau', 'Repellat dolor a cupiditate et adipisci. Expedita iure nam debitis ducimus. Excepturi voluptas atque quia quos. Ex aut officia reprehenderit ipsum omnis rerum.', 'https://via.placeholder.com/200x300.png/008800?text=dignissimos', 'biographie', 13, 2021, 'Bourdon', 'français', 73, 'relié', '9787916169182', 1, 'eos-dicta-eos-eum-rerum'),
(104, 'Eos et incidunt.', 'Nathalie Henry', 'Molestiae molestiae eligendi iure iste nam eos incidunt consequatur. Voluptate odit voluptate accusantium iure. Ea et dolores aut. Praesentium nisi magni ducimus in est voluptates omnis.', 'https://via.placeholder.com/200x300.png/0011aa?text=accusamus', 'essai', 9, 1951, 'Gimenez Gautier S.A.', 'espagnol', 361, 'poche', '9796226775785', 1, 'nulla-dolor-autem-maiores-exercitationem'),
(105, 'Quae maiores voluptatum error.', 'Robert Gomes', 'Nemo et ullam facere magni voluptas consequatur. Nemo molestiae ratione quam cum est. Laboriosam fugit rerum dolorum vel quasi assumenda. Exercitationem similique est quo nam et.', 'https://via.placeholder.com/200x300.png/00ddcc?text=enim', 'biographie', 11, 2007, 'Raymond Mendes S.A.', 'anglais', 176, 'relié', '9789956342433', 1, 'quasi-ullam-cupiditate-tempore-enim-et-minima'),
(106, 'Et non libero quo.', 'Alix Perez-Mary', 'Amet quam sed nisi et. Quia vel voluptatum beatae omnis doloremque soluta. Commodi ut vel ullam incidunt. Qui sint iusto ut veniam id quia. Amet eveniet aliquam ut recusandae.', 'https://via.placeholder.com/200x300.png/00eeff?text=nisi', 'poésie', 9, 1977, 'David', 'anglais', 93, 'broché', '9791268547864', 1, 'sed-sapiente-earum-nemo-tempora-harum-dolor'),
(107, 'Dolor alias ratione.', 'Augustin Robert', 'Molestias occaecati aut tenetur ut dolore laborum. Dolores et recusandae ea qui. Ipsa soluta nulla eveniet ut velit id. Repellendus quasi sit vel voluptates.', 'https://via.placeholder.com/200x300.png/008866?text=natus', 'roman', 21, 1933, 'Bertin', 'anglais', 465, 'relié', '9798066627101', 1, 'fugiat-nihil-nostrum-et-est-dolor'),
(108, 'Reprehenderit dolorum minima.', 'Émilie Lelievre-Barbier', 'Dolore eligendi sint harum. Aut et eveniet est. Sit voluptas eaque nihil laborum dolores quisquam.', 'https://via.placeholder.com/200x300.png/0055bb?text=odio', 'roman', 16, 1939, 'Ferreira Launay S.A.', 'français', 313, 'relié', '9788495240484', 1, 'non-omnis-illo-quia-et-culpa-quaerat-velit'),
(109, 'Sit aliquam numquam.', 'François Maillot', 'Et sit qui ratione dolor eaque. Nisi sit magnam porro. Deleniti quos voluptatem illo ratione rem itaque necessitatibus qui. Consequatur omnis doloribus nisi est.', 'https://via.placeholder.com/200x300.png/004466?text=cumque', 'poésie', 18, 1980, 'Evrard', 'italien', 82, 'relié', '9798580181424', 1, 'nam-et-id-fugiat-omnis-doloremque-animi'),
(110, 'Veritatis dolorem ut.', 'Célina Legros-Menard', 'Enim eligendi est voluptas dolor non aliquam. Incidunt dolorem est aspernatur blanditiis et. Nihil esse facilis aliquam voluptatem sunt dolorum sunt. Iusto dolorem quo sit omnis quia distinctio.', 'https://via.placeholder.com/200x300.png/004400?text=nemo', 'théâtre', 8, 1916, 'Coulon', 'français', 208, 'broché', '9789420642496', 1, 'nulla-recusandae-sunt-laborum-ut-quo-mollitia'),
(111, 'Autem temporibus aut quos.', 'Martine Auger', 'Et odio porro fuga exercitationem. Saepe aut voluptatem ducimus ut voluptates nisi. Rerum consequuntur dolores eos quisquam alias ducimus ut quos.', 'https://via.placeholder.com/200x300.png/004444?text=quia', 'biographie', 24, 1967, 'Gay', 'anglais', 250, 'relié', '9792012210133', 1, 'voluptas-eos-quia-tempore-dignissimos-ratione'),
(112, 'Libero et nesciunt.', 'Alain-Arthur Fernandez', 'Quis laudantium ut inventore. Perspiciatis aspernatur quos reiciendis laborum. Dolores placeat consequatur quia est impedit quas. Et illum non laudantium velit at soluta.', 'https://via.placeholder.com/200x300.png/00eeee?text=tempore', 'théâtre', 20, 1969, 'Le Goff', 'français', 397, 'broché', '9782522072437', 1, 'sed-excepturi-libero-est-praesentium-vitae-sunt-aut'),
(113, 'Id qui cupiditate.', 'Andrée Robert', 'Ullam sed nobis quam ut nihil. Vitae aspernatur consectetur molestiae aut nihil maiores aut. Reiciendis iure eaque molestiae possimus quis minima qui nihil.', 'https://via.placeholder.com/200x300.png/00dd66?text=quia', 'roman', 18, 2018, 'Richard S.A.R.L.', 'italien', 340, 'poche', '9789134259683', 1, 'beatae-rem-aut-quas-quas-delectus-nemo-nihil-magni'),
(114, 'Ipsam maiores omnis.', 'Gilles du Guyon', 'Atque perferendis eaque molestiae facere optio dolor molestiae. Sapiente quo eligendi qui quia mollitia. Itaque quibusdam placeat facilis quo. Mollitia aut nihil sunt omnis provident fuga quibusdam.', 'https://via.placeholder.com/200x300.png/005577?text=repellendus', 'biographie', 13, 1908, 'Bertrand et Fils', 'français', 353, 'broché', '9788951077883', 1, 'ea-et-provident-dolor-corporis'),
(115, 'Similique alias quia hic.', 'Charles Herve-Lebrun', 'Eius laboriosam autem in autem. Doloribus aut culpa sint earum.', 'https://via.placeholder.com/200x300.png/001111?text=quo', 'essai', 22, 1940, 'Vallee SAS', 'français', 155, 'relié', '9784573951419', 1, 'velit-voluptas-beatae-error-nesciunt'),
(116, 'Quia est corrupti velit.', 'Victor Hamon', 'In velit reprehenderit tempore consequuntur fugiat fuga molestias. Vel placeat maxime reprehenderit dolore est. Quo sed eum cupiditate nihil.', 'https://via.placeholder.com/200x300.png/00bbbb?text=cumque', 'essai', 30, 1922, 'Allain Hubert SARL', 'anglais', 445, 'relié', '9794638386070', 1, 'eum-voluptatem-unde-iste-rerum-repellendus'),
(117, 'Dolorum sint recusandae.', 'André Foucher-Toussaint', 'Mollitia molestias odio molestiae aut. Et molestiae neque ea ut ratione dolorem. Molestiae sed vel at eum maxime. Velit laudantium et rerum iste est.', 'https://via.placeholder.com/200x300.png/006622?text=aliquam', 'biographie', 14, 1939, 'Le Roux', 'anglais', 67, 'relié', '9791737550920', 1, 'vel-temporibus-et-alias-molestias'),
(118, 'Magnam dolores.', 'David Royer', 'Sed aut quam id repudiandae sit consequuntur. Quia quibusdam reprehenderit placeat. Dolor itaque rerum et et modi minus alias quia. Corporis rerum soluta a dolores consequuntur qui accusantium ea.', 'https://via.placeholder.com/200x300.png/00ff77?text=excepturi', 'poésie', 8, 2005, 'Camus Lefevre SA', 'anglais', 465, 'relié', '9790529328273', 1, 'quidem-ipsam-reprehenderit-molestiae-soluta-in'),
(119, 'Labore culpa eius.', 'Tristan-Patrick Lemaire', 'Hic laboriosam blanditiis provident enim omnis enim. Ea ut ut quia quo consectetur. Necessitatibus repellendus rerum delectus facilis perspiciatis.', 'https://via.placeholder.com/200x300.png/0077cc?text=voluptas', 'biographie', 7, 1969, 'Huet Bruneau SAS', 'italien', 158, 'broché', '9795880149666', 1, 'sunt-qui-velit-laborum-in-itaque-aut-quia'),
(120, 'Eligendi dolores ipsam similique.', 'Sophie-Susanne Mallet', 'Enim qui aspernatur vero enim. Et iusto harum autem quae odio. Laudantium libero rerum soluta mollitia. Maiores enim ratione qui a rem quisquam. Architecto est cumque optio quasi libero eaque et.', 'https://via.placeholder.com/200x300.png/00ff00?text=quod', 'poésie', 12, 1943, 'Rodrigues', 'espagnol', 166, 'relié', '9789210246736', 1, 'saepe-officia-perferendis-sed-facere'),
(121, 'Est consequuntur nostrum.', 'Amélie Le Valentin', 'Dolorem repellendus distinctio fuga velit aspernatur consectetur. Enim dignissimos dicta laudantium corporis sint. Vel quidem veniam ex.', 'https://via.placeholder.com/200x300.png/0066aa?text=illum', 'roman', 29, 2003, 'Hubert', 'espagnol', 60, 'broché', '9784840040822', 1, 'sequi-illum-ab-voluptatibus-officiis-eum-omnis-ex'),
(122, 'Iure dolores unde omnis.', 'Isabelle Neveu', 'Repellendus sit et neque nobis voluptas et accusamus. Quasi aut consequatur dignissimos ea. Sit dolore laborum ex neque corrupti cum. Et illum provident dolorem.', 'https://via.placeholder.com/200x300.png/00aacc?text=commodi', 'théâtre', 15, 1954, 'Charles Gimenez S.A.R.L.', 'anglais', 466, 'broché', '9784574723985', 1, 'pariatur-necessitatibus-voluptas-atque-eaque-aspernatur'),
(123, 'Iusto nemo sunt.', 'Adrienne Pages', 'Aliquid voluptatem molestiae magnam sed doloribus consequuntur iste. Animi qui harum inventore id. Dolor eos occaecati est voluptas voluptatem.', 'https://via.placeholder.com/200x300.png/0066cc?text=doloribus', 'poésie', 7, 1935, 'Charrier S.A.', 'espagnol', 125, 'broché', '9788259489289', 1, 'est-fugit-et-dolores-iure'),
(124, 'Quia id dolorem.', 'Manon Bourgeois', 'Error nemo ex reprehenderit in harum magnam et veniam. Quod nam quis dolorum possimus ipsam. Aut animi itaque dolor voluptatem est. Iste minus eum voluptatem nihil omnis qui.', 'https://via.placeholder.com/200x300.png/00ffaa?text=error', 'théâtre', 22, 1917, 'Carpentier', 'français', 191, 'poche', '9782536012504', 1, 'placeat-dolores-labore-rem'),
(125, 'Fugit cumque totam nobis.', 'Emmanuel Buisson-Roy', 'Minima quod saepe illo excepturi eius. Animi possimus debitis sunt beatae enim. Asperiores odio autem velit vitae. Sed aliquid est et culpa.', 'https://via.placeholder.com/200x300.png/0000ee?text=nemo', 'théâtre', 18, 1956, 'Reynaud', 'français', 412, 'poche', '9796691781823', 1, 'aut-iste-et-architecto-illum-explicabo-aut-molestiae'),
(126, 'Occaecati quos quisquam consequatur autem.', 'Stéphane Vidal', 'Perspiciatis beatae non qui. Officiis dolorum autem saepe et. Qui laborum non ut eligendi exercitationem. Unde quia veritatis voluptate odit.', 'https://via.placeholder.com/200x300.png/0055ee?text=exercitationem', 'essai', 14, 1967, 'Leleu S.A.S.', 'espagnol', 157, 'relié', '9786872166167', 1, 'quasi-natus-dolore-qui-ratione'),
(127, 'Quasi adipisci et.', 'Geneviève Guibert', 'Ut et sunt maxime sapiente. Vel asperiores velit officiis animi numquam.', 'https://via.placeholder.com/200x300.png/006699?text=doloribus', 'biographie', 12, 1986, 'Bouvet', 'italien', 121, 'broché', '9780691506074', 1, 'ut-at-cumque-similique-et'),
(128, 'Quaerat tempore est.', 'Anaïs Pereira', 'Animi tempora ea ipsum perferendis. Perspiciatis dignissimos dicta magnam quae est mollitia laudantium quis. Perspiciatis iste minima dignissimos aspernatur. Nisi ex voluptate eum.', 'https://via.placeholder.com/200x300.png/007733?text=officia', 'roman', 10, 1991, 'Parent', 'français', 221, 'poche', '9781549110405', 1, 'ut-qui-officia-officia-voluptate-quia'),
(129, 'Ut unde.', 'Augustin Bonneau', 'Voluptatem facere at dolores culpa est laboriosam. Cum quo dolores accusamus labore. Laboriosam repellat vel iusto et. Harum nam deserunt labore suscipit.', 'https://via.placeholder.com/200x300.png/0055bb?text=soluta', 'théâtre', 20, 1992, 'Guillou S.A.R.L.', 'français', 259, 'poche', '9787594192052', 1, 'distinctio-iure-non-qui-est'),
(130, 'Consectetur praesentium reprehenderit iusto.', 'Anastasie Millet', 'Laboriosam cumque aut facilis officiis velit dolor libero praesentium. Rerum cum et qui praesentium tempora commodi. Autem suscipit voluptatum qui id.', 'https://via.placeholder.com/200x300.png/00cc55?text=ut', 'poésie', 22, 1920, 'Pierre et Fils', 'espagnol', 426, 'broché', '9789745605138', 1, 'dolorem-voluptatem-sunt-consequatur'),
(131, 'marsupilami', 'test', NULL, NULL, 'essai', NULL, 1992, NULL, NULL, NULL, NULL, '777-555-5432', NULL, 'marsupilami'),
(132, 'mars', 'toto', NULL, NULL, 'biographie', NULL, 1995, NULL, NULL, NULL, NULL, '23409765432', NULL, 'mars'),
(133, 'toto au tableau', 'titi', NULL, NULL, 'biographie', NULL, 1992, NULL, NULL, NULL, NULL, '999-90876-987', NULL, 'toto-au-tableau'),
(134, 'Titre1', 'Auteur1', NULL, NULL, 'théâtre', NULL, 1995, NULL, NULL, NULL, NULL, '777-888-999-9', NULL, 'titre1'),
(135, 'titre2', 'Auteur2', NULL, NULL, 'essai', NULL, 1933, NULL, NULL, NULL, NULL, '888-555-222', NULL, 'titre2'),
(136, 'titre4', 'auteur4', NULL, NULL, 'biographie', NULL, 1922, NULL, NULL, NULL, NULL, '888-777-666-9', NULL, 'titre4'),
(137, 'tt', 'aa', NULL, NULL, 'biographie', NULL, 1999, NULL, NULL, NULL, NULL, '888-111-333-2', NULL, 'tt'),
(139, 'rrrrrrr', 'aaaaaaaaaaaa', NULL, NULL, 'biographie', NULL, 1111, NULL, NULL, NULL, NULL, '2222222222222', NULL, 'rrrrrrr'),
(140, 'test1', 'test1', NULL, NULL, 'essai', NULL, 1991, NULL, NULL, NULL, NULL, '4444444444444', NULL, 'test1');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int NOT NULL,
  `deposit` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `firstName`, `lastName`, `address`, `city`, `country`, `year`, `deposit`) VALUES
(1, 'Michel', 'Olivier', '456, boulevard de Pereira\n20 335 Masson', 'GilbertBourg', 'France', 1956, 1),
(2, 'Raymond', 'Gillet', '213, place de Jacques\n32520 Mercier', 'Dubois', 'France', 1971, 0),
(3, 'Yves', 'Barbier', '76, chemin Denis\n60503 Lemaitre', 'Langlois', 'France', 2015, 0),
(4, 'Jérôme', 'Albert', '86, rue Riou\n94603 Sanchezdan', 'AugerVille', 'France', 1951, 0),
(5, 'Victor', 'Dias', '19, rue Colette Coste\n65592 Duval', 'Mendes', 'France', 1973, 0),
(6, 'Noël', 'Marchal', '34, boulevard de Valette\n18577 Renaud', 'Loiseau', 'France', 1980, 1),
(7, 'Anouk', 'Leclercq', '93, rue de Robert\n02 305 MeunierVille', 'Rolland', 'France', 2005, 0),
(8, 'Georges', 'Petit', 'avenue Henri Launay\n93 075 Mercier', 'Blot-sur-Mer', 'France', 1981, 0),
(9, 'Valentine', 'Lambert', '7, boulevard Gérard Potier\n01 055 GonzalezVille', 'Barbier', 'France', 1986, 1),
(10, 'Luc', 'Gerard', '29, avenue de Blot\n22 632 Dijoux', 'Gonzalez-les-Bains', 'France', 2008, 1),
(11, 'Emmanuel', 'Roche', '12, rue Roger\n38663 Voisinboeuf', 'Bourgeois', 'France', 1955, 0),
(12, 'Vincent', 'Rousseau', 'rue Lebon\n32561 Alvesdan', 'GrondinVille', 'France', 1993, 1),
(13, 'Anne', 'Charles', '841, avenue Gerard\n43 361 Collet', 'Becker', 'France', 1975, 0),
(14, 'Martin', 'Mary', '14, chemin Chauvet\n07 558 Cordier-les-Bains', 'Riviere-la-Forêt', 'France', 1952, 0),
(15, 'Philippe', 'Briand', '849, impasse Roger Fleury\n67010 Clerc', 'Grondindan', 'France', 1957, 0),
(16, 'Laure', 'Laporte', '20, place David Rodriguez\n39 872 Picard', 'De Oliveiranec', 'France', 1969, 1),
(17, 'Denise', 'Huet', '31, rue Nicolas Guyon\n26182 Ruiz', 'Maillet-les-Bains', 'France', 2001, 1),
(18, 'Camille', 'Julien', '2, place Frédéric Delorme\n13004 Weber', 'Gomez-les-Bains', 'France', 2022, 1),
(19, 'Lucie', 'Girard', 'avenue Lacroix\n27034 Schmitt-sur-Bruneau', 'Gallet', 'France', 1992, 0),
(20, 'Patrick', 'Robert', '9, boulevard de Thibault\n50 137 Gay-sur-Dumont', 'Fournier', 'France', 1957, 1),
(21, 'Philippe', 'Teixeira', '35, avenue Masson\n84548 Georges-les-Bains', 'Chevallier', 'France', 2019, 1),
(22, 'Henriette', 'Allain', '20, rue de Lacroix\n54 228 Besson', 'Guichard', 'France', 2008, 0),
(23, 'Agathe', 'Mary', '37, avenue Dumas\n98100 Dijoux', 'Pires', 'France', 1998, 1),
(24, 'Nicolas', 'Brunet', 'chemin Pinto\n22647 Riou-sur-Schmitt', 'Carpentierdan', 'France', 1997, 0),
(25, 'Jean', 'Langlois', '65, rue de Rodriguez\n67708 Legros-les-Bains', 'Masson', 'France', 1951, 0),
(26, 'Aimée', 'Marques', '161, rue de Boulay\n90 444 Roy', 'LambertVille', 'France', 1966, 1),
(27, 'Tristan', 'Guillaume', '677, rue de Clerc\n75375 Vidal', 'Pascal-sur-Auger', 'France', 1958, 0),
(28, 'Julie', 'Giraud', '44, rue de Mercier\n78 140 Fleury-sur-Mer', 'Le Gall', 'France', 1962, 1),
(29, 'Amélie', 'Torres', '312, impasse de Briand\n66 134 Caron', 'Didierdan', 'France', 1956, 0),
(30, 'Sabine', 'Ferreira', '5, rue de Ramos\n30 977 Bernard', 'Pineau', 'France', 1986, 0),
(31, 'Gérard', 'Coste', 'rue de Petitjean\n62507 Jacques', 'Leger', 'France', 1981, 1),
(32, 'Sabine', 'Lelievre', '80, rue Colette Martel\n82017 Wagner', 'Brun', 'France', 2006, 1),
(33, 'Océane', 'Delahaye', '93, boulevard Blanchet\n90 361 Bourgeois', 'Bruneaudan', 'France', 2008, 0),
(34, 'Patrick', 'Charpentier', '61, place de Gillet\n07239 Lefebvre-sur-Mer', 'Weiss', 'France', 1982, 0),
(35, 'Arnaude', 'Laine', '29, rue de Lefebvre\n50441 Gay', 'Blot', 'France', 1963, 0),
(36, 'Astrid', 'Boulay', '95, rue Lebon\n27 979 Pascalnec', 'Langlois', 'France', 2002, 0),
(37, 'Aurélie', 'Guibert', '14, rue Manon Nicolas\n37759 Michel-les-Bains', 'Grenier', 'France', 1982, 1),
(38, 'Théophile', 'Hubert', '11, avenue Charles Dubois\n97251 Normand', 'Barbier-la-Forêt', 'France', 2011, 0),
(39, 'Nicole', 'Fournier', '98, boulevard Jérôme Voisin\n41 688 Lucas', 'Samson-sur-Didier', 'France', 1991, 0),
(40, 'Théodore', 'Lebreton', '1, chemin Bernier\n53 321 Chretien', 'Vallet', 'France', 1963, 1),
(41, 'Colette', 'Durand', '402, impasse Roussel\n53914 Klein', 'Guillou', 'France', 1995, 0),
(42, 'Vincent', 'Gilles', '3, boulevard de Hubert\n86 813 Monnier-la-Forêt', 'Marechalnec', 'France', 2000, 1),
(43, 'Martine', 'Guibert', '767, place de Leger\n95 060 Nicolas', 'BoulayBourg', 'France', 1976, 1),
(44, 'Gérard', 'Teixeira', '670, rue Laetitia Barre\n12179 Allard', 'Besson', 'France', 2008, 0),
(45, 'Édouard', 'Collet', '43, avenue Pierre\n49 890 Evrard-les-Bains', 'Lemonnier-sur-Mer', 'France', 1966, 1),
(46, 'Franck', 'Langlois', 'impasse Cousin\n81081 Duhamel-sur-Coulon', 'Deschamps-sur-Morel', 'France', 2022, 0),
(47, 'Frédérique', 'Delannoy', '532, avenue de Garcia\n02 782 Pereira', 'Albert', 'France', 1958, 1),
(48, 'Aurélie', 'Lopes', '623, rue de Riviere\n66 023 Jacquet', 'Lemonnier-la-Forêt', 'France', 1985, 1),
(49, 'Alexandrie', 'Ledoux', '4, rue Lucas\n95496 Michaud', 'Boyer-les-Bains', 'France', 1982, 0),
(50, 'Maggie', 'Jourdan', '487, boulevard de Gauthier\n29 764 Bertin', 'Gonzalezboeuf', 'France', 1963, 0);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int NOT NULL,
  `deposit` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `address`, `city`, `country`, `year`, `deposit`) VALUES
(1, 'Mathilde', 'Paris', '77, impasse de Meunier\n69740 Lacombe-sur-Hernandez', 'Perrot', 'France', 1982, 0),
(2, 'Claudine', 'Leroy', '478, rue Teixeira\n24 577 Leveque', 'Arnaud-sur-Lemoine', 'France', 2008, 1),
(3, 'Stéphane', 'Seguin', '8, place de Guilbert\n48 621 Da Costa-sur-Faivre', 'Mahe', 'France', 1974, 0),
(4, 'Grégoire', 'Godard', '65, rue de Garnier\n70 677 Maury', 'Ledoux-sur-Morvan', 'France', 1953, 0),
(5, 'Corinne', 'Guyon', '11, rue Sébastien Jacob\n43 294 Cohen', 'Jourdan', 'France', 1983, 1),
(6, 'Hélène', 'Dos Santos', '66, chemin Denis Vasseur\n66 393 Meyer', 'Texier', 'France', 1986, 1),
(7, 'Paul', 'Langlois', 'place Hoareau\n31 773 Diallo-sur-Barre', 'Colin', 'France', 2006, 0),
(8, 'Tristan', 'Bailly', '798, avenue Nathalie Courtois\n31482 Legendre', 'Dupuy-sur-Mer', 'France', 1954, 1),
(9, 'Thierry', 'Georges', '20, avenue de Marie\n29 539 Gaudin', 'Bonneau', 'France', 2002, 1),
(10, 'Guy', 'Huet', '98, place de Levy\n39621 Lemaitre', 'Ferrand', 'France', 2009, 1),
(11, 'Noémi', 'Brunet', '65, rue Yves Lemonnier\n28527 Ribeiro', 'Ollivier-sur-Michel', 'France', 1967, 0),
(12, 'Eugène', 'Courtois', 'chemin Alice Collin\n50 273 Lefort-sur-Fischer', 'Dos Santos-la-Forêt', 'France', 1988, 0),
(13, 'Nathalie', 'Renard', 'chemin de Guillot\n53807 Mathieu-la-Forêt', 'Dijoux', 'France', 1987, 1),
(14, 'Alexandre', 'Gallet', '634, avenue Martine Gaudin\n68 495 Didier', 'Blot', 'France', 1969, 0),
(15, 'Raymond', 'Moreno', '868, impasse David Blanc\n99212 Aubry-les-Bains', 'MoulinVille', 'France', 1974, 0),
(16, 'Renée', 'Valentin', '43, rue Tristan Gomes\n45343 Chevallierboeuf', 'Raymond', 'France', 1965, 0),
(17, 'Bernard', 'Turpin', 'rue de Diallo\n43 697 LefevreBourg', 'Guerin', 'France', 1958, 0),
(18, 'Marie', 'Pineau', '18, chemin Alain Etienne\n05744 Andre', 'Benard', 'France', 1989, 1),
(19, 'Éric', 'Blanchet', '27, boulevard Evrard\n27 738 Pires', 'Collinnec', 'France', 1980, 0),
(20, 'Gilles', 'Grondin', '686, boulevard de Bouvier\n23 782 Raynaud', 'DelaunayVille', 'France', 2011, 0),
(21, 'Alfred', 'Hoarau', '498, rue Gérard Delaunay\n74 168 Lefevre-sur-Daniel', 'Moreau', 'France', 2003, 0),
(22, 'Grégoire', 'Pineau', '2, impasse de Thierry\n21 675 Courtois-sur-Mer', 'Weiss-sur-Pineau', 'France', 2017, 1),
(23, 'Inès', 'Descamps', '23, chemin Duhamel\n46 153 Rodrigues-sur-Mer', 'Teixeira-la-Forêt', 'France', 1977, 1),
(24, 'Luce', 'Gomez', '81, impasse de Meunier\n43014 BarbeBourg', 'Garcia', 'France', 1975, 0),
(25, 'Louis', 'Pierre', 'place Luc Faure\n76 696 Blanchet', 'Fernandezdan', 'France', 1953, 1),
(26, 'Roger', 'Didier', '963, place Théodore Lejeune\n13330 Bouvet', 'Jean-la-Forêt', 'France', 1998, 0),
(27, 'Susanne', 'Potier', '60, chemin Martine Leroy\n40 172 MailletVille', 'Foucher-les-Bains', 'France', 1997, 1),
(28, 'Amélie', 'Gerard', 'rue Dorothée Colas\n70 136 ClercBourg', 'Leduc-sur-Mer', 'France', 1960, 1),
(29, 'Emmanuel', 'Letellier', '760, avenue de Marchand\n12892 TorresVille', 'Parent-la-Forêt', 'France', 1987, 0),
(30, 'Manon', 'Delmas', '4, rue Briand\n61 117 MorvanBourg', 'Couturier', 'France', 2012, 0),
(31, 'Jérôme', 'Loiseau', '52, place De Sousa\n16 786 Gaillard', 'Picard', 'France', 1996, 1),
(32, 'Maggie', 'Foucher', 'boulevard de Turpin\n48 391 Potier', 'Roussel', 'France', 1981, 1),
(33, 'Guillaume', 'Paul', '30, rue Boyer\n20 733 Guillot-sur-Gaudin', 'BonninBourg', 'France', 1977, 1),
(34, 'Gilles', 'Dijoux', '42, rue Marcel Renaud\n72 544 DelormeVille', 'Couturier-la-Forêt', 'France', 2020, 0),
(35, 'Dominique', 'Delattre', '64, rue Aubert\n93 036 Leger-sur-Lelievre', 'Perez', 'France', 1967, 1),
(36, 'Thibaut', 'Renaud', '23, rue Brunet\n54 417 Mauryboeuf', 'Delaunay', 'France', 1967, 1),
(37, 'Alfred', 'Bernier', '72, avenue de Vaillant\n06 172 Mallet-sur-Techer', 'Bonnet', 'France', 2022, 0),
(38, 'Marine', 'Aubert', '99, rue Dupuis\n15 341 Pereiradan', 'Georgesnec', 'France', 1976, 1),
(39, 'Augustin', 'Gallet', '7, avenue Guillon\n60512 Ferreiradan', 'Diallo-sur-Mer', 'France', 1980, 0),
(40, 'Zacharie', 'Blanchet', '97, impasse Honoré Dos Santos\n51258 MarquesVille', 'Merledan', 'France', 2023, 0),
(41, 'Auguste', 'Maillet', 'place de Moreno\n62 784 Morel-les-Bains', 'Lefort', 'France', 2007, 0),
(42, 'Hugues', 'Rossi', 'chemin Matthieu Girard\n16 500 Lefebvre', 'Rodriguesdan', 'France', 2004, 0),
(43, 'Diane', 'Samson', '90, rue de Hernandez\n73468 Cordier', 'Weber-les-Bains', 'France', 2004, 1),
(44, 'Auguste', 'Noel', '80, chemin Gilbert David\n31 326 Laroche-sur-Evrard', 'Guilbert-sur-Lecomte', 'France', 2003, 0),
(45, 'Honoré', 'Vaillant', '8, impasse de Rousseau\n67071 Masson', 'Lebon', 'France', 2009, 1),
(46, 'Étienne', 'Maurice', 'place Riviere\n27 393 Carlier-sur-Fouquet', 'Clement', 'France', 1995, 1),
(47, 'Audrey', 'Guillot', '3, chemin Lebon\n52149 Hoareau', 'Fouquet-les-Bains', 'France', 1966, 0),
(48, 'Édouard', 'Duval', '2, impasse Charles Lombard\n63 672 Chevallier', 'Clercboeuf', 'France', 1984, 1),
(49, 'Thérèse', 'Charpentier', '39, rue Benjamin Renard\n39050 DidierVille', 'Delaunay-sur-Gosselin', 'France', 2000, 1),
(50, 'Véronique', 'Lebreton', '742, place Thomas Nicolas\n04435 Maillet', 'Chauvet', 'France', 1964, 0);

-- --------------------------------------------------------

--
-- Structure de la table `clients_books_reservations`
--

DROP TABLE IF EXISTS `clients_books_reservations`;
CREATE TABLE IF NOT EXISTS `clients_books_reservations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `date_return` date DEFAULT NULL,
  `isClosed` tinyint(1) DEFAULT NULL,
  `isArchived` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `client_id` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients_books_reservations`
--

INSERT INTO `clients_books_reservations` (`id`, `book_id`, `client_id`, `date_start`, `date_end`, `date_return`, `isClosed`, `isArchived`) VALUES
(2, 64, 9, '2023-09-23', '2023-09-30', '2023-09-21', 1, 0),
(3, 115, 23, '2023-09-16', '2023-09-30', NULL, 0, 0),
(5, 51, 23, '2023-09-01', '2023-09-21', '2023-09-21', 1, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
