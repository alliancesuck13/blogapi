-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Янв 18 2023 г., 14:29
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii_api`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`, `description`) VALUES
(1, 'Еда', 'Всё о еде.');

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` varchar(256) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `author_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `content`, `created_at`, `author_id`, `post_id`) VALUES
(1, 'Вау, ну просто восхитительно!', '2023-01-18 16:45:40', 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `created_at`, `updated_at`, `author_id`, `category_id`) VALUES
(1, 'Как я жарил яичницу!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor eros sit amet nunc semper, cursus scelerisque lorem tristique. In ultrices sapien sapien, vel porttitor nisi semper eu. Sed imperdiet lacus nec quam tempor, id condimentum dui fermentum. In vel fringilla diam. Nulla fringilla ipsum ut leo pharetra, ut faucibus elit ultrices. Etiam porta nisl sit amet nisi mattis scelerisque. Integer tincidunt nisl fermentum mauris viverra efficitur. Quisque justo turpis, tincidunt at tincidunt nec, luctus eu dolor. Nulla placerat mollis sollicitudin. Suspendisse non lorem nec est vestibulum sollicitudin at ac leo. Duis vitae metus ut turpis mollis imperdiet at ac metus.\r\n\r\nAenean non enim mattis, viverra urna quis, molestie leo. Etiam non nisl neque. Integer interdum at libero sit amet convallis. Curabitur elementum neque sed quam sollicitudin, eu lacinia mi aliquet. Duis lacinia pharetra nunc sed sagittis. Morbi augue nulla, euismod eu urna a, tincidunt rutrum orci. Donec pretium risus velit, sed tempus odio congue vestibulum. Fusce vitae ante ipsum.\r\n\r\nInteger vitae aliquam neque. Proin ut interdum eros. Curabitur maximus nibh sapien, at imperdiet turpis gravida quis. Suspendisse sed viverra purus. Donec vel luctus purus. Nunc ipsum augue, viverra et aliquet sit amet, venenatis quis mi. Duis id leo pellentesque, gravida ante eget, mollis elit. Etiam mattis aliquam porttitor. Duis vestibulum sem vitae ligula varius, vitae posuere neque congue. Quisque tortor erat, bibendum lobortis sagittis eu, convallis sit amet tortor. Sed vitae scelerisque orci.\r\n\r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec non feugiat erat. Phasellus euismod molestie volutpat. Suspendisse at nulla vitae dui pretium malesuada. Aliquam id volutpat lorem. Vivamus consequat velit id erat suscipit porta. Vestibulum rutrum quis orci nec elementum. Aenean lacinia, turpis a placerat ultrices, sapien libero laoreet libero, sed condimentum dolor mi et mauris. Maecenas elementum feugiat sem sagittis efficitur. Proin gravida erat a lorem auctor semper. Donec tempus ut enim eu ultricies. Sed sed ornare odio.\r\n\r\nSed eu gravida odio, at dapibus lacus. Proin mauris lacus, porta id nisl eget, commodo consequat orci. Ut sed massa non nisi aliquet maximus a eu neque. Curabitur cursus metus a nisi facilisis ornare. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque aliquet elit in neque faucibus congue. Praesent at lectus at mi molestie varius vel sit amet lectus. Cras aliquet est sed nisl sollicitudin, eu ultrices massa maximus. Cras semper dui nulla, id dignissim massa dapibus et. Sed nulla nisi, sagittis quis lectus eget, consequat pellentesque tortor. Morbi vulputate velit pellentesque, volutpat ante eget, porta nulla. Vivamus varius venenatis pellentesque. Maecenas dignissim ipsum vel arcu eleifend ultrices. Morbi laoreet efficitur purus, tristique facilisis velit. Fusce vehicula nisi a sodales suscipit. Vivamus eu commodo lectus.\r\n\r\nCras vehicula mi eu ante congue, non commodo sem vestibulum. Vivamus hendrerit ultricies neque, ut dictum ex. Aenean ut velit massa. Quisque tellus purus, pellentesque sit amet volutpat sed, egestas nec est. Vestibulum congue pharetra felis. Aenean consequat, mi a mollis vehicula, ipsum enim imperdiet risus, non hendrerit magna nibh in.', '2023-01-18 16:45:12', '2023-01-18 16:45:12', 1, 1),
(2, 'sunt aut facere repellat provident occaecati excepturi optio reprehenderit', 'quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto', '2023-01-18 19:44:08', '2023-01-18 19:44:08', 1, 1),
(3, 'qui est esse', 'est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla', '2023-01-18 19:44:22', '2023-01-18 19:44:22', 1, 1),
(4, 'ea molestias quasi exercitationem repellat qui ipsa sit aut', 'et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\nvoluptatem doloribus vel accusantium quis pariatur\nmolestiae porro eius odio et labore et velit aut', '2023-01-18 19:44:26', '2023-01-18 19:44:26', 1, 1),
(5, 'eum et est occaecati', 'ullam et saepe reiciendis voluptatem adipisci\nsit amet autem assumenda provident rerum culpa\nquis hic commodi nesciunt rem tenetur doloremque ipsam iure\nquis sunt voluptatem rerum illo velit', '2023-01-18 19:44:30', '2023-01-18 19:44:30', 1, 1),
(6, 'nesciunt quas odio', 'repudiandae veniam quaerat sunt sed\nalias aut fugiat sit autem sed est\nvoluptatem omnis possimus esse voluptatibus quis\nest aut tenetur dolor neque asdasd asd asd asd asd asd asda sda sd', '2023-01-18 19:44:47', '2023-01-18 19:44:47', 1, 1),
(7, 'dolorem eum magni eos aperiam quia', 'ut aspernatur corporis harum nihil quis provident sequi\nmollitia nobis aliquid molestiae\nperspiciatis et ea nemo ab reprehenderit accusantium quas\nvoluptate dolores velit et doloremque molestiae', '2023-01-18 19:45:01', '2023-01-18 19:45:01', 1, 1),
(8, 'magnam facilis autem', 'dolore placeat quibusdam ea quo vitae\nmagni quis enim qui quis quo nemo aut saepe\nquidem repellat excepturi ut quia\nsunt ut sequi eos ea sed qua asda sdasdasd as dasd asds', '2023-01-18 19:45:11', '2023-01-18 19:45:11', 1, 1),
(9, 'dolorem dolore est ipsam', 'dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint suscipit qui sint possimus cum\nquaerat magni maiores excepturi\nipsam ut commodi dolor voluptatum modi aut vitae', '2023-01-18 19:45:16', '2023-01-18 19:45:16', 1, 1),
(10, 'nesciunt iure omnis dolorem tempora et accusantium', 'consectetur animi nesciunt iure dolore\nenim quia ad\nveniam autem ut quam aut nobis\net est aut quod aut provident voluptas autem voluptasvoluptasvoluptasvoluptasvoluptas', '2023-01-18 19:45:29', '2023-01-18 19:45:29', 1, 1),
(11, 'optio molestias id quia eum', 'quo et expedita modi cum officia vel magni\ndoloribus qui repudiandae\nvero nisi sit\nquos veniam quod sed accusamus veritatis errorerrorerrorerrorerrorerrorerror', '2023-01-18 19:45:39', '2023-01-18 19:45:39', 1, 1),
(12, 'et ea vero quia laudantium autem', 'delectus reiciendis molestiae occaecati non minima eveniet qui voluptatibus\naccusamus in eum beatae sit\nvel qui neque voluptates ut commodi qui incidunt\nut animi commodi', '2023-01-18 19:45:43', '2023-01-18 19:45:43', 2, 1),
(13, 'in quibusdam tempore odit est dolorem', 'itaque id aut magnam\npraesentium quia et ea odit et ea voluptas et\nsapiente quia nihil amet occaecati quia id voluptatem\nincidunt ea est distinctio odio', '2023-01-18 19:45:48', '2023-01-18 19:45:48', 2, 1),
(14, 'dolorum ut in voluptas mollitia et saepe quo animi', 'aut dicta possimus sint mollitia voluptas commodi quo doloremque\niste corrupti reiciendis voluptatem eius rerum\nsit cumque quod eligendi laborum minima\nperferendis recusandae assumenda consectetur porro architecto ipsum ipsam', '2023-01-18 19:45:52', '2023-01-18 19:45:52', 2, 1),
(15, 'voluptatem eligendi optio', 'fuga et accusamus dolorum perferendis illo voluptas\nnon doloremque neque facere\nad qui dolorum molestiae beatae\nsed aut voluptas totam sit illumillumillumillumillumillum', '2023-01-18 19:46:00', '2023-01-18 19:46:00', 2, 1),
(16, 'eveniet quod temporibus', 'reprehenderit quos placeat\nvelit minima officia dolores impedit repudiandae molestiae nam\nvoluptas recusandae quis delectus\nofficiis harum fugiat vitae', '2023-01-18 19:46:05', '2023-01-18 19:46:05', 2, 1),
(17, 'sint suscipit perspiciatis velit dolorum rerum ipsa laboriosam odio', 'suscipit nam nisi quo aperiam aut\nasperiores eos fugit maiores voluptatibus quia\nvoluptatem quis ullam qui in alias quia est\nconsequatur magni mollitia accusamus ea nisi voluptate dicta', '2023-01-18 19:46:09', '2023-01-18 19:46:09', 2, 1),
(18, 'fugit voluptas sed molestias voluptatem provident', 'eos voluptas et aut odit natus earum\naspernatur fuga molestiae ullam\ndeserunt ratione qui eos\nqui nihil ratione nemo velit ut aut id quoquoquoquoquoquoquoquo', '2023-01-18 19:46:16', '2023-01-18 19:46:16', 2, 1),
(19, 'voluptate et itaque vero tempora molestiae', 'eveniet quo quis\nlaborum totam consequatur non dolor\nut et est repudiandae\nest voluptatem vel debitis et magnammagnammagnammagnammagnammagnammagnammagnam', '2023-01-18 19:46:26', '2023-01-18 19:46:26', 2, 1),
(20, 'adipisci placeat illum aut reiciendis qui', 'illum quis cupiditate provident sit magnam\nea sed aut omnis\nveniam maiores ullam consequatur atque\nadipisci quo iste expedita sit quos voluptasvoluptasvoluptasvoluptasvoluptasvoluptas', '2023-01-18 19:46:33', '2023-01-18 19:46:33', 2, 1),
(21, 'doloribus ad provident suscipit at', 'qui consequuntur ducimus possimus quisquam amet similique\nsuscipit porro ipsam amet\neos veritatis officiis exercitationem vel fugit aut necessitatibus totam\nomnis rerum consequatur expedita quidem cumque explicabo', '2023-01-18 19:46:38', '2023-01-18 19:46:38', 2, 1),
(22, 'asperiores ea ipsam voluptatibus modi minima quia sint', 'repellat aliquid praesentium dolorem quo\nsed totam minus non itaque\nnihil labore molestiae sunt dolor eveniet hic recusandae veniam\ntempora et tenetur expedita sunt', '2023-01-18 19:46:42', '2023-01-18 19:46:42', 3, 1),
(23, 'dolor sint quo a velit explicabo quia nam', 'eos qui et ipsum ipsam suscipit aut\nsed omnis non odio\nexpedita earum mollitia molestiae aut atque rem suscipit\nnam impedit esseesseesseesseesseesseesse', '2023-01-18 19:46:49', '2023-01-18 19:46:49', 3, 1),
(24, 'maxime id vitae nihil numquam', 'veritatis unde neque eligendi\nquae quod architecto quo neque vitae\nest illo sit tempora doloremque fugit quod\net et vel beatae sequi ullam sed tenetur perspiciatis', '2023-01-18 19:46:53', '2023-01-18 19:46:53', 3, 1),
(25, 'autem hic labore sunt dolores incidunt', 'enim et ex nulla\nomnis voluptas quia qui\nvoluptatem consequatur numquam aliquam sunt\ntotam recusandae id dignissimos aut sed asperiores deseruntdeseruntdeseruntdeseruntdeseruntdeseruntdeserunt', '2023-01-18 19:47:01', '2023-01-18 19:47:01', 3, 1),
(26, 'rem alias distinctio quo quis', 'ullam consequatur ut\nomnis quis sit vel consequuntur\nipsa eligendi ipsum molestiae et omnis error nostrum\nmolestiae illo tempore quia et distinctiodistinctiodistinctiodistinctiodistinctio', '2023-01-18 19:47:08', '2023-01-18 19:47:08', 3, 1),
(27, 'est et quae odit qui non', 'similique esse doloribus nihil accusamus\nomnis dolorem fuga consequuntur reprehenderit fugit recusandae temporibus\nperspiciatis cum ut laudantium\nomnis aut molestiae vel vero', '2023-01-18 19:47:12', '2023-01-18 19:47:12', 3, 1),
(28, 'quasi id et eos tenetur aut quo autem', 'eum sed dolores ipsam sint possimus debitis occaecati\ndebitis qui qui et\nut placeat enim earum aut odit facilis\nconsequatur suscipit necessitatibus rerum sed inventore temporibus consequatur', '2023-01-18 19:47:17', '2023-01-18 19:47:17', 3, 1),
(29, 'delectus ullam et corporis nulla voluptas sequi', 'non et quaerat ex quae ad maiores\nmaiores recusandae totam aut blanditiis mollitia quas illo\nut voluptatibus voluptatem\nsimilique nostrumnostrumnostrumnostrumnostrumnostrum eum', '2023-01-18 19:47:27', '2023-01-18 19:47:27', 3, 1),
(30, 'iusto eius quod necessitatibus culpa ea', 'odit magnam ut saepe sed non qui\ntempora atque nihil\naccusamus illum doloribus illo dolor\neligendi repudiandae odit magni similique sed cumcumcumcum maiores', '2023-01-18 19:47:35', '2023-01-18 19:47:35', 3, 1),
(31, 'a quo magni similique perferendis', 'alias dolor cumque\nimpedit blanditiis non eveniet odio maxime\nblanditiis amet eius quis tempora quia autem rem\na provident perspiciatis quiaquiaquiaquiaquiaquia', '2023-01-18 19:47:42', '2023-01-18 19:47:42', 3, 1),
(32, 'ullam ut quidem id aut vel consequuntur', 'debitis eius sed quibusdam non quis consectetur vitae\nimpedit ut qui consequatur sed aut in\nquidem sit nostrum et maiores adipisci atque\nquaerat voluptatem adipisci repudiandae', '2023-01-18 19:47:46', '2023-01-18 19:47:46', 4, 1),
(33, 'doloremque illum aliquid sunt', 'deserunt eos nobis asperiores et hic\nest debitis repellat molestiae optio\nnihil ratione ut eos beatae quibusdam distinctio maiores\nearum voluptates et aut adipisci ea maiores voluptas maxime', '2023-01-18 19:47:52', '2023-01-18 19:47:52', 4, 1),
(34, 'qui explicabo molestiae dolorem', 'rerum ut et numquam laborum odit est sit\nid qui sint in\nquasi tenetur tempore aperiam et quaerat qui in\nrerum officiis sequi cumque quodquodquodquodquodquodquodquodquodquodquodquodquodquodquodquodquodquod', '2023-01-18 19:47:59', '2023-01-18 19:47:59', 4, 1),
(35, 'magnam ut rerum iure', 'ea velit perferendis earum ut voluptatem voluptate itaque iusto\ntotam pariatur in\nnemo voluptatem voluptatem autem magni tempora minima in\nest distinctio qui assumenda accusamus dignissimos officia nesciunt nobis', '2023-01-18 19:48:03', '2023-01-18 19:48:03', 4, 1),
(36, 'id nihil consequatur molestias animi provident', 'nisi error delectus possimus ut eligendi vitae\nplaceat eos harum cupiditate facilis reprehenderit voluptatem beatae\nmodi ducimus quo illum voluptas eligendi\net nobis quia fugit', '2023-01-18 19:48:07', '2023-01-18 19:48:07', 4, 1),
(37, 'fuga nam accusamus voluptas reiciendis itaque', 'ad mollitia et omnis minus architecto odit\nvoluptas doloremque maxime aut non ipsa qui alias veniam\nblanditiis culpa aut quia nihil cumque facere et occaecati\nqui aspernatur quia eaque ut aperiam inventore', '2023-01-18 19:48:11', '2023-01-18 19:48:11', 4, 1),
(38, 'provident vel ut sit ratione est', 'debitis et eaque non officia sed nesciunt pariatur vel\nvoluptatem iste vero et ea\nnumquam aut expedita ipsum nulla in\nvoluptates omnis consequatur aut enim officiis in quam qui', '2023-01-18 19:48:23', '2023-01-18 19:48:23', 4, 1),
(39, 'explicabo et eos deleniti nostrum ab id repellendus', 'animi esse sit aut sit nesciunt assumenda eum voluptas\nquia voluptatibus provident quia necessitatibus ea\nrerum repudiandae quia voluptatem delectus fugit aut id quia\nratione optio eos iusto veniam iure', '2023-01-18 19:48:33', '2023-01-18 19:48:33', 4, 1),
(40, 'eos dolorem iste accusantium est eaque quam', 'corporis rerum ducimus vel eum accusantium\nmaxime aspernatur a porro possimus iste omnis\nest in deleniti asperiores fuga aut\nvoluptas sapiente vel dolore minus voluptatem incidunt ex', '2023-01-18 19:48:35', '2023-01-18 19:48:35', 4, 1),
(41, 'enim quo cumque', 'ut voluptatum aliquid illo tenetur nemo sequi quo facilis\nipsum rem optio mollitia quas\nvoluptatem eum voluptas qui\nunde omnis voluptatem iure quasi maxime voluptas nam', '2023-01-18 19:49:14', '2023-01-18 19:49:14', 4, 1),
(42, 'non est facere', 'molestias id nostrum\nexcepturi molestiae dolore omnis repellendus quaerat saepe\nconsectetur iste quaerat tenetur asperiores accusamus ex ut\nnam quidem est ducimus sunt debitis saepe', '2023-01-18 19:49:25', '2023-01-18 19:49:25', 5, 1),
(43, 'commodi ullam sint et excepturi error explicabo praesentium voluptas', 'odio fugit voluptatum ducimus earum autem est incidunt voluptatem\nodit reiciendis aliquam sunt sequi nulla dolorem\nnon facere repellendus voluptates quia\nratione harum vitae ut', '2023-01-18 19:49:38', '2023-01-18 19:49:38', 5, 1),
(44, 'eligendi iste nostrum consequuntur adipisci praesentium sit beatae perferendis', 'similique fugit est\nillum et dolorum harum et voluptate eaque quidem\nexercitationem quos nam commodi possimus cum odio nihil nulla\ndolorum exercitationem magnam ex et a et distinctio debitis', '2023-01-18 19:49:46', '2023-01-18 19:49:46', 5, 1),
(45, 'optio dolor molestias sit', 'temporibus est consectetur dolore\net libero debitis vel velit laboriosam quia\nipsum quibusdam qui itaque fuga rem aut\nea et iure quam sed maxime ut distinctio quae', '2023-01-18 19:49:53', '2023-01-18 19:49:53', 5, 1),
(46, 'ut numquam possimus omnis eius suscipit laudantium iure', 'est natus reiciendis nihil possimus aut provident\nasdasdasdassdasdex et dolor\nrepellat pariatur est\nnobis rerum repellendus dolorem autemasdasdasdadasdasdasdas', '2023-01-18 19:50:11', '2023-01-18 19:50:11', 5, 1),
(47, 'aut quo modi neque nostrum ducimus', 'voluptatem quisquam iste\nvoluptatibus natus officiis facilis dolorem\nquis quas ipsam\nvel et voluptatum in aliquid asd asd asd asd asda sda asd asd asd asdas d', '2023-01-18 19:50:23', '2023-01-18 19:50:23', 5, 1),
(48, 'quibusdam cumque rem aut deserunt', 'voluptatem assumenda ut qui ut cupiditate aut impedit veniam\noccaecati nemo illum voluptatem laudantium\nmolestiae beatae rerum ea iure soluta nostrum\neligendi et voluptate', '2023-01-18 19:50:29', '2023-01-18 19:50:29', 5, 1),
(49, 'ut voluptatem illum ea doloribus itaque eos', 'voluptates quo voluptatem facilis iure occaecati\nvel assumenda rerum officia et\nillum perspiciatis ab deleniti\nlaudantium repellat ad ut et autem reprehenderit', '2023-01-18 19:50:34', '2023-01-18 19:50:34', 5, 1),
(50, 'laborum non sunt aut ut assumenda perspiciatis voluptas', 'inventore ab sint\nnatus fugit id nulla sequi architecto nihil quaerat\neos tenetur in in eum veritatis non\nquibusdam officiis aspernatur cumque aut commodi aut', '2023-01-18 19:50:39', '2023-01-18 19:50:39', 5, 1),
(51, 'repellendus qui recusandae incidunt voluptates tenetur qui omnis exercitationem', 'error suscipit maxime adipisci consequuntur recusandae\nvoluptas eligendi et est et voluptates\nquia distinctio ab amet quaerat molestiae et vitae\nadipisci impedit sequi nesciunt quis consectetur', '2023-01-18 19:50:48', '2023-01-18 19:50:48', 5, 1),
(52, 'soluta aliquam aperiam consequatur illo quis voluptas', 'sunt dolores aut doloribus\ndolore doloribus voluptates tempora et\ndoloremque et quo\ncum asperiores sit consectetur dolorem asd asdasdassssdsdsdasdasdasdasdasd ', '2023-01-18 19:51:02', '2023-01-18 19:51:02', 6, 1),
(53, 'qui enim et consequuntur quia animi quis voluptate quibusdam', 'iusto est quibusdam fuga quas quaerat molestias\na enim ut sit accusamus enim\ntemporibus iusto accusantium provident architecto\nsoluta esse reprehenderit qui laborum', '2023-01-18 19:51:07', '2023-01-18 19:51:07', 6, 1),
(54, 'ut quo aut ducimus alias', 'minima harum praesentium eum rerum illo dolore\nquasi exercitationem rerum nam\nporro quis neque quo\nconsequatur minus dolor quidem veritatis sunt non explicabo similique', '2023-01-18 19:51:14', '2023-01-18 19:51:14', 6, 1),
(55, 'sit asperiores ipsam eveniet odio non quia', 'totam corporis dignissimos\nvitae dolorem ut occaecati accusamus\nex velit deserunt\net exercitationem vero incidunt corrupti mollitia asdasdasdasdasda sdfsdfsdfsdfsd', '2023-01-18 19:51:26', '2023-01-18 19:51:26', 6, 1),
(56, 'sit vel voluptatem et non libero', 'debitis excepturi ea perferendis harum libero optio\neos accusamus cum fuga ut sapiente repudiandae\net ut incidunt omnis molestiae\nnihil ut eum odit dfiogjdfoigdfojgdifjgidfijgidjfgd ', '2023-01-18 19:51:37', '2023-01-18 19:51:37', 6, 1),
(57, 'qui et at rerum necessitatibus', 'aut est omnis dolores\nneque rerum quod ea rerum velit pariatur beatae excepturi\net provident voluptas corrupti\ncorporis harum reprehenderit dolores eligendi', '2023-01-18 19:51:43', '2023-01-18 19:51:43', 6, 1),
(58, 'sed ab est est', 'at pariatur consequuntur earum quidem\nquo est laudantium soluta voluptatem\nqui ullam et est\net cum voluptas voluptatum repellat est dfogjkfdogdfokgdopfgopidfogdofgodfog', '2023-01-18 19:51:56', '2023-01-18 19:51:56', 6, 1),
(59, 'voluptatum itaque dolores nisi et quasi', 'veniam voluptatum quae adipisci id\net id quia eos ad et dolorem\naliquam quo nisi sunt eos impedit error\nad similique veniam dfuguoifsdjgojiufsdoigdjsfigdfgidfg', '2023-01-18 19:52:07', '2023-01-18 19:52:07', 6, 1),
(60, 'qui commodi dolor at maiores et quis id accusantium', 'perspiciatis et quam ea autem temporibus non voluptatibus qui\nbeatae a earum officia nesciunt dolores suscipit voluptas et\nanimi doloribus cum rerum quas et magni\net hic ut ut commodi expedita sunt', '2023-01-18 19:52:12', '2023-01-18 19:52:12', 6, 1),
(61, 'consequatur placeat omnis quisquam quia reprehenderit fugit veritatis facere', 'asperiores sunt ab assumenda cumque modi velit\nqui esse omnis\nvoluptate et fuga perferendis voluptas\nillo ratione amet aut et omnis fdoigjdfoigjoisfdigojdfsijgijsdfjigsd', '2023-01-18 19:52:22', '2023-01-18 19:52:22', 6, 1),
(62, 'voluptatem doloribus consectetur est ut ducimus', 'ab nemo optio odio\ndelectus tenetur corporis similique nobis repellendus rerum omnis facilis\nvero blanditiis debitis in nesciunt doloribus dicta dolores\nmagnam minus velit', '2023-01-18 19:52:28', '2023-01-18 19:52:28', 7, 1),
(63, 'beatae enim quia vel', 'enim aspernatur illo distinctio quae praesentium\nbeatae alias amet delectus qui voluptate distinctio\nodit sint accusantium autem omnis\nquo molestiae omnis ea eveniet optio', '2023-01-18 19:52:33', '2023-01-18 19:52:33', 7, 1),
(64, 'voluptas blanditiis repellendus animi ducimus error sapiente et suscipit', 'enim adipisci aspernatur nemo\nnumquam omnis facere dolorem dolor ex quis temporibus incidunt\nab delectus culpa quo reprehenderit blanditiis asperiores\naccusantium ut quam in voluptatibus voluptas ipsam dicta', '2023-01-18 19:52:38', '2023-01-18 19:52:38', 7, 1),
(65, 'et fugit quas eum in in aperiam quod', 'id velit blanditiis\neum ea voluptatem\nmolestiae sint occaecati est eos perspiciatis\nincidunt a error provident eaque aut aut qui dfijgdfigidjfigjdifgdfg', '2023-01-18 19:52:47', '2023-01-18 19:52:47', 7, 1),
(66, 'consequatur id enim sunt et et', 'voluptatibus ex esse\nsint explicabo est aliquid cumque adipisci fuga repellat labore\nmolestiae corrupti ex saepe at asperiores et perferendis\nnatus id esse incidunt pariatur', '2023-01-18 19:52:52', '2023-01-18 19:52:52', 7, 1),
(67, 'repudiandae ea animi iusto', 'officia veritatis tenetur vero qui itaque\nsint non ratione\nsed et ut asperiores iusto eos molestiae nostrum\nveritatis quibusdam et nemo iusto saepe sdfsdfdsfsdfsfsfsd', '2023-01-18 19:53:01', '2023-01-18 19:53:01', 7, 1),
(68, 'aliquid eos sed fuga est maxime repellendus', 'reprehenderit id nostrum\nvoluptas doloremque pariatur sint et accusantium quia quod aspernatur\net fugiat amet\nnon sapiente et consequatur necessitatibus molestiae', '2023-01-18 19:53:07', '2023-01-18 19:53:07', 7, 1),
(69, 'odio quis facere architecto reiciendis optio', 'magnam molestiae perferendis quisquam\nqui cum reiciendis\nquaerat animi amet hic inventore\nea quia deleniti quidem saepe porro velit asd asdasdsddsdsdsdsdsd', '2023-01-18 19:53:17', '2023-01-18 19:53:17', 7, 1),
(70, 'fugiat quod pariatur odit minima', 'officiis error culpa consequatur modi asperiores et\ndolorum assumenda voluptas et vel qui aut vel rerum\nvoluptatum quisquam perspiciatis quia rerum consequatur totam quas\nsequi commodi repudiandae asperiores et saepe a', '2023-01-18 19:53:23', '2023-01-18 19:53:23', 7, 1),
(71, 'voluptatem laborum magni', 'sunt repellendus quae\nest asperiores aut deleniti esse accusamus repellendus quia aut\nquia dolorem unde\neum tempora esse dolore sdfsdfsdfsdfssdfgfgfdgdfgfdgdfgfdfsdf', '2023-01-18 19:53:35', '2023-01-18 19:53:35', 7, 1),
(72, 'et iusto veniam et illum aut fuga', 'occaecati a doloribus\niste saepe consectetur placeat eum voluptate dolorem et\nqui quo quia voluptas\nrerum ut id enim velit est perferendi dfgdfgdfgdfgfdgdfgdgf', '2023-01-18 19:53:45', '2023-01-18 19:53:45', 8, 1),
(73, 'sint hic doloribus consequatur eos non id', 'quam occaecati qui deleniti consectetur\nconsequatur aut facere quas exercitationem aliquam hic voluptas\nneque id sunt ut aut accusamus\nsunt consectetur expedita inventore velit', '2023-01-18 19:53:50', '2023-01-18 19:53:50', 8, 1),
(74, 'consequuntur deleniti eos quia temporibus ab aliquid at', 'voluptatem cumque tenetur consequatur expedita ipsum nemo quia explicabo\naut eum minima consequatur\ntempore cumque quae est et\net in consequuntur voluptatem voluptates aut', '2023-01-18 19:53:57', '2023-01-18 19:53:57', 8, 1),
(75, 'enim unde ratione doloribus quas enim ut sit sapiente', 'odit qui et et necessitatibus sint veniam\nmollitia amet doloremque molestiae commodi similique magnam et quam\nblanditiis est itaque\nquo et tenetur ratione occaecati molestiae tempora', '2023-01-18 19:54:02', '2023-01-18 19:54:02', 8, 1),
(76, 'dignissimos eum dolor ut enim et delectus in', 'commodi non non omnis et voluptas sit\nautem aut nobis magnam et sapiente voluptatem\net laborum repellat qui delectus facilis temporibus\nrerum amet et nemo voluptate expedita adipisci error dolorem', '2023-01-18 19:54:09', '2023-01-18 19:54:09', 8, 1),
(77, 'doloremque officiis ad et non perferendis', 'ut animi facere\ntotam iusto tempore\nmolestiae eum aut et dolorem aperiam\nquaerat recusandae totam odio asdasdfgjbfgbhifggifsdhguoihdsofgosdhfgsdofgouihsdfgsdufguhsdfugdshfgod', '2023-01-18 19:54:19', '2023-01-18 19:54:19', 8, 1),
(78, 'necessitatibus quasi exercitationem odio', 'modi ut in nulla repudiandae dolorum nostrum eos\naut consequatur omnis\nut incidunt est omnis iste et quam\nvoluptates sapiente aliquam asperiores nobis amet corrupti repudiandae provident', '2023-01-18 19:54:26', '2023-01-18 19:54:26', 8, 1),
(79, 'quam voluptatibus rerum veritatis', 'nobis facilis odit tempore cupiditate quia\nassumenda doloribus rerum qui ea\nillum et qui totam\naut veniam repellendus dfglkpdfpgodfikpgdfikgdkfgkdfkgkdgfkd', '2023-01-18 19:54:35', '2023-01-18 19:54:35', 8, 1),
(80, 'pariatur consequatur quia magnam autem omnis non amet', 'libero accusantium et et facere incidunt sit dolorem\nnon excepturi qui quia sed laudantium\nquisquam molestiae ducimus est\nofficiis esse molestiae iste et quos', '2023-01-18 19:54:40', '2023-01-18 19:54:40', 8, 1),
(81, 'labore in ex et explicabo corporis aut quas', 'ex quod dolorem ea eum iure qui provident amet\nquia qui facere excepturi et repudiandae\nasperiores molestias provident\nminus incidunt vero fugit rerum sint sunt excepturi provident', '2023-01-18 19:54:46', '2023-01-18 19:54:46', 8, 1),
(82, 'tempora rem veritatis voluptas quo dolores vero', 'facere qui nesciunt est voluptatum voluptatem nisi\nsequi eligendi necessitatibus ea at rerum itaque\nharum non ratione velit laboriosam quis consequuntur\nex officiis minima doloremque voluptas ut aut', '2023-01-18 19:54:52', '2023-01-18 19:54:52', 9, 1),
(83, 'laudantium voluptate suscipit sunt enim enim', 'ut libero sit aut totam inventore sunt\nporro sint qui sunt molestiae\nconsequatur cupiditate qui iste ducimus adipisci\ndolor enim assumenda soluta laboriosam amet iste delectus hic', '2023-01-18 19:54:57', '2023-01-18 19:54:57', 9, 1),
(84, 'odit et voluptates doloribus alias odio et', 'est molestiae facilis quis tempora numquam nihil qui\nvoluptate sapiente consequatur est qui\nnecessitatibus autem aut ipsa aperiam modi dolore numquam\nreprehenderit eius rem quibusdam', '2023-01-18 19:55:02', '2023-01-18 19:55:02', 9, 1),
(85, 'optio ipsam molestias necessitatibus occaecati facilis veritatis dolores aut', 'sint molestiae magni a et quos\neaque et quasi\nut rerum debitis similique veniam\nrecusandae dignissimos dolor incidunt consequatur odidfigjdfigdjfgjidfigdifgo', '2023-01-18 19:55:10', '2023-01-18 19:55:10', 9, 1),
(86, 'dolore veritatis porro provident adipisci blanditiis et sunt', 'similique sed nisi voluptas iusto omnis\nmollitia et quo\nassumenda suscipit officia magnam sint sed tempora\nenim provident pariatur praesentium atque animi amet ratione', '2023-01-18 19:55:15', '2023-01-18 19:55:15', 9, 1),
(87, 'placeat quia et porro iste', 'quasi excepturi consequatur iste autem temporibus sed molestiae beatae\net quaerat et esse ut\nvoluptatem occaecati et vel explicabo autem\nasperiores pariatur deserunt optio', '2023-01-18 19:55:19', '2023-01-18 19:55:19', 9, 1),
(88, 'nostrum quis quasi placeat', 'eos et molestiae\nnesciunt ut a\ndolores perspiciatis repellendus repellat aliquid\nmagnam sint rem ipsum est foghdfgihjdfoighjiofdihojgfodjhjoidfhoijgdfojghoijdfghjoifdghojidfjighiofd', '2023-01-18 19:55:30', '2023-01-18 19:55:30', 9, 1),
(89, 'sapiente omnis fugit eos', 'consequatur omnis est praesentium\nducimus non iste\nneque hic deserunt\nvoluptatibus veniam cum et rerum sed desogksfdoigsdfigisdfgijdsjfgjdjgjfgjd asdfsdfsdfsdfsdfdsfds', '2023-01-18 19:55:44', '2023-01-18 19:55:44', 9, 1),
(90, 'sint soluta et vel magnam aut ut sed qui', 'repellat aut aperiam totam temporibus autem et\narchitecto magnam ut\nconsequatur qui cupiditate rerum quia soluta dignissimos nihil iure\ntempore quas est', '2023-01-18 19:55:49', '2023-01-18 19:55:49', 9, 1),
(91, 'ad iusto omnis odit dolor voluptatibus', 'minus omnis soluta quia\nqui sed adipisci voluptates illum ipsam voluptatem\neligendi officia ut in\neos soluta similique molestias praesentium blanditiis', '2023-01-18 19:55:53', '2023-01-18 19:55:53', 9, 1),
(92, 'aut amet sed', 'libero voluptate eveniet aperiam sed\nsunt placeat suscipit molestias\nsimilique fugit nam natus\nexpedita consequatur consequatur dolores quia eos et placeat', '2023-01-18 19:55:58', '2023-01-18 19:55:58', 10, 1),
(93, 'ratione ex tenetur perferendis', 'aut et excepturi dicta laudantium sint rerum nihil\nlaudantium et at\na neque minima officia et similique libero et\ncommodi voluptate qui asdfkijdsfigojdasfigdjfigijdfijg', '2023-01-18 19:56:08', '2023-01-18 19:56:08', 10, 1),
(94, 'beatae soluta recusandae', 'dolorem quibusdam ducimus consequuntur dicta aut quo laboriosam\nvoluptatem quis enim recusandae ut sed sunt\nnostrum est odit totam\nsit error sed sunt eveniet provident qui nulla', '2023-01-18 19:56:14', '2023-01-18 19:56:14', 10, 1),
(95, 'qui qui voluptates illo iste minima', 'aspernatur expedita soluta quo ab ut similique\nexpedita dolores amet\nsed temporibus distinctio magnam saepe deleniti\nomnis facilis nam ipsum natus sint similique omnis', '2023-01-18 19:56:19', '2023-01-18 19:56:19', 10, 1),
(96, 'id minus libero illum nam ad officiis', 'earum voluptatem facere provident blanditiis velit laboriosam\npariatur accusamus odio saepe\ncumque dolor qui a dicta ab doloribus consequatur omnis\ncorporis cupiditate eaque assumenda ad nesciunt', '2023-01-18 19:56:23', '2023-01-18 19:56:23', 10, 1),
(97, 'quaerat velit veniam amet cupiditate aut numquam ut sequi', 'in non odio excepturi sint eum\nlabore voluptates vitae quia qui et\ninventore itaque rerum\nveniam non exercitationem delectus aut asfdasijddijasidjaijdijaisjdaijd', '2023-01-18 19:56:37', '2023-01-18 19:56:37', 10, 1),
(98, 'quas fugiat ut perspiciatis vero provident', 'eum non blanditiis soluta porro quibusdam voluptas\nvel voluptatem qui placeat dolores qui velit aut\nvel inventore aut cumque culpa explicabo aliquid at\nperspiciatis est et voluptatem dignissimos dolor itaque sit nam', '2023-01-18 19:56:48', '2023-01-18 19:56:48', 10, 1),
(99, 'laboriosam dolor voluptates', 'doloremque ex facilis sit sint culpa\nsoluta assumenda eligendi non ut eius\nsequi ducimus vel quasi\nveritatis est dolores dfsgkodfsojkgdfjgdsgjdsjg fsdghoijfsdghgiofsijhfihgijogsijf', '2023-01-18 19:57:06', '2023-01-18 19:57:06', 10, 1),
(100, 'temporibus sit alias delectus eligendi possimus magni', 'quo deleniti praesentium dicta non quod\naut est molestias\nmolestias et officia quis nihil\nitaque dolorem quisdfijgsifdgjsidgjjifgdigdakdfsijgdfijgdfjifgjidgfjigdfidfjigdfjigdfia', '2023-01-18 19:57:19', '2023-01-18 19:57:19', 10, 1),
(101, 'at nam consequatur ea labore ea harum', 'cupiditate quo est a modi nesciunt soluta\nipsa voluptas error itaque dicta in\nautem qui minus magnam et distinctio eum\naccusamus ratione fsdgjgfdjdfgsjdgfjdjfgdjgfjdgfjdgfjdgfjj aut', '2023-01-18 19:57:25', '2023-01-18 19:57:25', 10, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `surname` varchar(64) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password_hash` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `username`, `password_hash`) VALUES
(1, 'Андрей', 'Стругальченко', 'mikha_xx', '__changedByPostman'),
(2, 'Андрей', 'Малахов', 'bruhov_a', '__magic'),
(3, 'Гораций', 'Андреев', 'theBig_goracius', '__restWorks'),
(4, 'Leanne', 'Graham', 'Bret23', 'Sincere@april.biz'),
(5, 'Ervin', 'Howell', 'Antonette', 'Shanna@melissa.tv'),
(6, 'Clementine', 'Bauch', 'Samantha', 'Nathan@yesenia.net'),
(7, 'Patricia', 'Lebsack', 'Karianne', 'Julianne.OConner@kory.org'),
(8, 'Chelsey', 'Dietrich', 'Kamren', 'Lucio_Hettinger@annie.ca'),
(9, 'Dennis', 'Schulist', 'Leopoldo_Corkery', 'Karley_Dach@jasper.info'),
(10, 'Kurtis', 'Weissnat', 'Elwyn.Skiles', 'Telly.Hoeger@billy.biz'),
(11, 'Nicholas', 'Runolfsdottir V', 'Maxime_Nienow', 'Sherwood@rosamond.me'),
(12, 'Glenna', 'Reichert', 'Delphine', 'Chaim_McDermott@dana.io'),
(13, 'Clementina', 'DuBuque', 'Moriah.Stanton', 'Rey.Padberg@karina.biz');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`,`post_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Ограничения внешнего ключа таблицы `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
