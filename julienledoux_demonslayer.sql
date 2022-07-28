-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db.3wa.io
-- Généré le : ven. 10 juin 2022 à 09:43
-- Version du serveur :  5.7.33-0ubuntu0.18.04.1-log
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `julienledoux_demonslayer`
--

-- --------------------------------------------------------

--
-- Structure de la table `arcs`
--

CREATE TABLE `arcs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `arcs`
--

INSERT INTO `arcs` (`id`, `name`, `description`, `picture`) VALUES
(6, 'Arc de la SÃ©lection Finale', '<p>AprÃ¨s une nuit passÃ©e hors de chez lui, Tanjiro Kamado rejoint sa famille. Il les trouve tous morts, Ã  l\'exception de sa sÅ“ur, Nezuko, qui semble avoir perdu beaucoup de sang. Il s\'en va en la portant sur son dos dans le but d\'aller chercher de l\'aide. Nezuko se rÃ©veille alors, et attaque son frÃ¨re. Giyu Tomioka, un pourfendeur de dÃ©mons assiste Ã  la scÃ¨ne et empÃªche Nezuko de tuer Tanjiro puis tente de l\'Ã©liminer mais Tanjiro continu de dÃ©fendre sa sÅ“ur et aprÃ¨s un certain moment, Nezuko s\'interpose afin que son frÃ¨re ne soit pas blessÃ©. Giyu cesse alors de se battre, Ã©tonnÃ© qu\'un dÃ©mon puisse vouloir aider un humain. Il dÃ©cide alors de diriger Nezuko et Tanjiro Ã  son ancien maÃ®tre, Sakonji Urokodaki. Ce dernier accepte de prendre les deux jeunes gens sous son aile et enseigne Ã  Tanjiro le Souffle de l\'Eau. Il lui donne ensuite un dernier dÃ©fi pour passer l\'examen des Pourfendeurs de dÃ©mon : couper avec son sabre un rocher en deux. Apparaissent alors deux anciens disciples de Sakonji, Sabito et Makomo qui lâ€™entraÃ®nent chaque jours au maniement du sabre. Ã€ la fin, Tanjiro rÃ©ussi Ã  Ãªtre plus rapide Sabito. Celui-ci disparaÃ®t alors, laissant place au rocher, que Tanjiro a finalement coupÃ© en deux.</p>\r\n\r\n<p>Tanjiro part alors pour le Mont Fujikasane, le lieu de la SÃ©lection Finale aprÃ¨s avoir saluÃ© Sakonji et Nezuko, profondÃ©ment endormie depuis deux ans. Les lieux sont entourÃ©s de glycines, empÃªchant les dÃ©mons d\'y sortir. L\'examen constitue Ã  survivre dans la montagne pendant sept nuits.</p>\r\n\r\n<p>Lors de l\'examen, Tanjiro tombe sur un dÃ©mon qui lui en veut particuliÃ¨rement. Il explique alors qu\'il a Ã©tÃ© emprisonnÃ© ici par Sakonji et qu\'il s\'est mis en tÃªte de tuer tous ses disciples pour le faire payer. Il les reconnait grÃ¢ce aux masques de conjuration que leur maÃ®tre leur offre. Pendant son combat contre Tanjiro, il fait allusion Ã  Sabito puis Ã  Makomo, et lui dit alors qu\'il les a tous deux mangÃ©s. Tanjiro manque de perdre pied aprÃ¨s avoir compris que Sabito et Makomo avaient pÃ©ris mais se rattrape, rÃ©ussissant Ã  tuer le dÃ©mon. Ã€ la fin des sept nuits, il se rend au pied de la montagne. Il ne reste que cinq survivants sur la vingtaine prÃ©sents au dÃ©but dont quatre qui sont au pied de la montagne avec lui : Zenitsu Agatsuma, Kanao Tsuyuri et Genya Shinazugawa. Kiriya Ubuyashiki et Kanata Ubuyashiki leurs confient alors leurs uniformes et des corbeaux de liaison, Ã  part pour Zenitsu qui lui, a un moineau, et les informent que leurs sabres du Soleil arriveront bientÃ´t.</p>\r\n\r\n<p>Tanjiro retourne chez son maÃ®tre et trouve alors Nezuko, rÃ©veillÃ©e. Le maÃ®tre lui explique alors qu\'elle est sous hypnose. Il lui a rÃ©pÃ©tÃ© pendant son sommeil : Â« Les humains sont ta famille, protÃ¨ge les. Ce sont les dÃ©mons tes ennemis, ce sont eux qu\'il faut punir quand ils font du mal aux gens. Â» et lui explique que pour Nezuko, le sommeil a le mÃªme effet que la chair humaine chez un dÃ©mon normal et que c\'est donc de cette maniÃ¨re qu\'elle se rÃ©gÃ©nÃ¨re.</p>\r\n\r\n<p>Peut de temps aprÃ¨s, Tanjiro reÃ§oit son Ã©pÃ©e du Soleil. Sa lame se teinte alors de noir, chose trÃ¨s rare.</p>', 'A1.webp'),
(7, 'Arc de la PremiÃ¨re Mission', '<p>AprÃ¨s avoir passÃ© la SÃ©lection Finale, Tanjiro Kamado commence sa premiÃ¨re mission en tant que pourfendeurs de dÃ©mons. Il est envoyÃ© dans une ville voisine pour enquÃªter sur les disparitions de jeunes filles, qui pourraient impliquer un dÃ©mon, sa premiÃ¨re mission est donc de la traquer afin de l\'Ã©liminer. Il rencontre un jeune homme du nom de Kazumi qui est alors blÃ¢mer Ã  cause de la disparition de sa fiancÃ©e et rencontre le dangereux DÃ©mon du Marais responsable des disparitions.</p>\r\n\r\n<p>Avec son aide, il retrouve le dÃ©mon capable d\'ouvrir des portails marÃ©cageux de dans le sol. Et sous une suggestion hypnotique de Sakonji, Nezuko combat avec Tanjiro ce dÃ©mon au multiples formes dans le but de protÃ©ger les humains. Tanjiro plonge avec le dÃ©mon dans le marÃ©cage et vainc deux de ses trois formes en utilisant son entraÃ®nement au Mont Sagiri, il interroge par la suite la troisiÃ¨me forme dans l\'espoir d\'en savoir plus sur Muzan Kibutsuji.</p>\r\n\r\n<p>Il apprend alors que Muzan est celui qui a tuÃ© toute sa famille et transformÃ© sa sÅ“ur en dÃ©mon. Il fait ses adieux Ã  Kazumi, qui se rend compte que le garÃ§on a perdu des gens tout comme sa fiancÃ©e. Peu de temps aprÃ¨s, Tanjiro reÃ§oit sa prochaine mission.</p>', 'A2.webp'),
(8, 'Arc Asakusa', '<p>Tanjiro et Nezuko sont envoyÃ©s pour enquÃªter sur les rapports d\'un dÃ©mon dans la ville peuplÃ©e d\'Asakusa. Pendant son sÃ©jour, Tanjiro rencontre le tristement cÃ©lÃ¨bre seigneur dÃ©mon, Muzan Kibutsuji et se lie d\'amitiÃ© avec le dÃ©mon mÃ©dical Tamayo et son assistant Yushiro. Tout en essayant de s\'enquÃ©rir des mÃ©thodes pour ramener Nezuko Ã  la normale, ils sont attaquÃ©s par les dÃ©mons Yahaba et Susamaru, envoyÃ©s par le seigneur dÃ©mon pour tuer Tanjiro une fois pour toutes.</p>', 'A3.webp'),
(9, 'Arc Maison aux Tambours', '<p>Tanjiro s\'aventure dans le sud-est oÃ¹ il rencontre un jeune homme lÃ¢che nommÃ© Zenitsu Agatsuma. C\'est un autre survivant de la SÃ©lection Finale et son moineau demande Ã  Tanjiro de l\'aider Ã  garder le cap.</p>\r\n\r\n<p>Ensemble, Tanjiro et Zenitsu s\'aventurent dans une montagne oÃ¹ ils trouvent une maison mystÃ©rieuse. Ils rencontrent Shoichi et Teruko, deux jeunes enfants dont le frÃ¨re a Ã©tÃ© enlevÃ© et emmenÃ© dans la maison. Le son d\'un Tsuzumi rÃ©sonne Ã  travers le manoir de temps en temps, et tout appartient Ã  un dÃ©mon.</p>\r\n\r\n<p>Tanjiro et Zenitsu entrent dans la maison mais sont sÃ©parÃ©s peu de temps aprÃ¨s, chargÃ©s de protÃ©ger chacun l\'un des enfants. Zenitsu dÃ©couvre accidentellement un autre jeune tueur de dÃ©mons qui porte une peau de sanglier comme masque. Le sanglier Inosuke charge Ã  travers la maison en essayant de tuer le mÃªme dÃ©mon que les autres.</p>\r\n\r\n<p>Inosuke et Tanjiro en viennent aux mains avec le DÃ©mon aux Tambours contrÃ´lant la maison. Ils sont finalement tous les deux transportÃ©s tandis que Zenitsu et Shoichi sont poursuivis dans toute la maison par le DÃ©mon Ã  la Langue. Pendant son sommeil, Zenitsu montre ses incroyables capacitÃ©s Souffle de la Foudre. Dans le mÃªme temps, le sanglier montre ses techniques de respiration de bÃªte autodidacte contre le DÃ©mon Ã  Corne.</p>\r\n\r\n<p>Tanjiro et Teruko localisent Kiyoshi et apprennent que les dÃ©mons souhaitent le manger parce qu\'il possÃ¨de un rare Â« sang de marechi Â». Tanjiro et Kyogai se retrouvent face Ã  face dans une bataille oÃ¹ Kyogai change constamment l\'orientation de la piÃ¨ce en utilisant son Pouvoir Sanguinaire. Kyogai se rÃ©vÃ¨le Ã©galement Ãªtre un ancien membre des Douze Lunes DÃ©moniaques.</p>\r\n\r\n<p>Au dÃ©but, Tanjiro se dÃ©bat en raison des blessures qu\'il a subies Ã  Asakusa. AprÃ¨s avoir retrouvÃ© son esprit, Tanjiro est capable de s\'adapter aux changements en changeant la forme de ses propres techniques aquatiques. Il juge bon de ne pas piÃ©tiner l\'Ã©criture de Kyogai et complimente mÃªme son Pouvoir Sanguinaire avant de lui couper la tÃªte. Kyogai meurt en paix sachant que ses talents ont Ã©tÃ© reconnus par quelqu\'un.</p>\r\n\r\n<p>Tout le monde se regroupe Ã  l\'extÃ©rieur oÃ¹ Inosuke en vient aux mains avec Tanjiro et Zenitsu sur la boÃ®te de Nezuko. Inosuke essaie de tuer le dÃ©mon sans comprendre la situation. MÃªme si Zenitsu est dans le mÃªme bateau, il fait de son mieux pour protÃ©ger la boÃ®te de Tanjiro. Tanjiro avait mentionnÃ© plus tÃ´t que cette boÃ®te Ã©tait plus prÃ©cieuse que sa propre vie.</p>\r\n\r\n<p>Tanjiro et Inosuke se lancent dans une fÃ©roce bagarre Ã  mains nues qui se termine par Tanjiro donnant au sanglier une commotion cÃ©rÃ©brale avec sa tÃªte dure comme de la pierre. Les pourfendeurs de dÃ©mons et les enfants se sÃ©parent et le nouveau trio rÃ©cupÃ¨re Ã  la Maison de la famille Fuji. LÃ -bas, ils font connaissance et s\'affrontent. Nezuko apparaÃ®t Ã©galement et Zenitsu apprend la vÃ©ritÃ© sur les raisons pour lesquelles Tanjiro voyage avec une dÃ©mone.</p>', 'A4.webp'),
(15, 'Arc Mont Natagumo', '<p>Tanjiro, Zenitsu et Inosuke partent ensemble pour leur premiÃ¨re mission et s\'aventurent au Mont Natagumo.</p>\r\n\r\n<p>Trop peur de s\'aventurer dans cette Â« montagne effrayante Â» avec Tanjiro et Inosuke, Zenitsu reste derriÃ¨re. Tanjiro et Inosuke rencontrent une montagne couverte de toiles d\'araignÃ©es et contrÃ´lÃ©e par des dÃ©mons araignÃ©es. Ces dÃ©mons ont dÃ©jÃ  tuÃ© d\'innombrables tueurs de dÃ©mons, forÃ§ant Kagaya Ã  envoyer les Piliers en renfort.</p>\r\n\r\n<p>Zenitsu gravit malgrÃ© tout la montagne aprÃ¨s avoir rÃ©alisÃ© que Tanjiro avait mis Nezuko en danger. AprÃ¨s avoir convaincu Inosuke de travailler ensemble, Tanjiro et le sanglier battent la mÃ¨re du clan des araignÃ©es. Zenitsu rencontre le frÃ¨re et affine ses capacitÃ©s au maximum. MalgrÃ© son empoisonnement, Zenitsu bat seul le dÃ©mon.</p>\r\n\r\n<p>Alors que Tanjiro essaie de soigner les blessures d\'Inosuke au combat, ils rencontrent la Grande SÅ“ur AraignÃ©e DÃ©mon, puis son pÃ¨re. Le PÃ¨re AraignÃ©e sÃ©pare Tanjiro d\'Inosuke et s\'attaque au sanglier. Pendant ce temps, Tanjiro rencontre Rui, le crÃ©ateur de la famille.</p>\r\n\r\n<p>Giyu, le Pilier de l\'Eau, arrive avec Shinobu Kocho, le Pilier de l\'Insecte, sur la montagne et sauve Zenitsu et Inosuke. Tanjiro qualifie de faux les liens entre la Famille AraignÃ©e, exaspÃ©rant Rui. Ils s\'engagent dans un combat acharnÃ© oÃ¹ Rui a l\'intention de tuer Tanjiro et de faire de Nezuko sa propre sÅ“ur.</p>\r\n\r\n<p>Refusant de rompre leurs propres liens, Tanjiro et Nezuko ripostent et vainquent presque le dÃ©mon avec des capacitÃ©s nouvellement Ã©veillÃ©es. Tanjiro dÃ©verrouille sa capacitÃ© Ã  utiliser la Danse du Dieu du Feu de son pÃ¨re et Nezuko libÃ¨re son propre Pouvoir Sanguinaire.</p>\r\n\r\n<p>Cependant, Rui survit Ã  la bataille et les tue presque tous les deux. Giyu les sauve Ã  temps et bat sans effort Rui. Dans le mÃªme temps, Shinobu rencontre la sÅ“ur de la famille, achevant la dÃ©mone. Rui retrouve ses souvenirs humains et regrette ses actions avant d\'entrer dans l\'au-delÃ , oÃ¹ il retrouve sa famille.</p>\r\n\r\n<p>Shinobu tente de tuer Nezuko parce qu\'elle est une dÃ©mone mais Giyu la dÃ©fend. Tanjiro essaie de s\'Ã©chapper avec Nezuko mais ils sont attrapÃ©s par l\'assistant de Shinobu, Kanao Tsuyuri. Shinobu avertit Giyu et Tanjiro qu\'ils vont tous les deux Ã  l\'encontre des rÃ¨gles de l\'ArmÃ©e des pourfendeurs de dÃ©mons en aidant un dÃ©mon. Avant que les choses ne dÃ©gÃ©nÃ¨rent, un corbeau annonce que les deux frÃ¨res et sÅ“urs doivent Ãªtre placÃ©s en dÃ©tention.</p>', 'A5.webp'),
(16, 'Arc EntraÃ®nement de RÃ©cupÃ©ration', '<p>Tanjiro est conduit devant les Piliers et jugÃ© pour avoir voyagÃ© avec sa sÅ“ur dÃ©moniaque Nezuko. Tanjiro essaie d\'expliquer sa situation, mais les Piliers ne l\'acceptent pas ; Tous sauf Giyu, qui a Ã©galement enfreint les rÃ¨gles en protÃ©geant Nezuko. Le Pilier du Vent, Sanemi Shinazugawa, rÃ©fute le plus Tanjiro et blesse mÃªme Nezuko, la poignardant trois fois Ã  travers sa boÃ®te en bois.</p>\r\n\r\n<p>Le maÃ®tre du manoir, Kagaya Ubuyashiki, arrive et demande aux Piliers de leur pardonner. Une lettre a Ã©tÃ© envoyÃ©e par Sakonji, expliquant la situation et demandant Ã  l\'ArmÃ©e des pourfendeurs de dÃ©mons de ne pas en tenir rigueur, disant mÃªme que lui et Giyu commettraient Ã©galement un seppuku si Nezuko faisait du mal aux humains. Sanemi essaie de prouver que Nezuko est un dÃ©mon diabolique en la laissant sortir de la boÃ®te, puis en l\'appÃ¢tant avec son propre sang. Cependant, Nezuko rÃ©siste malgrÃ© ses blessures et prouve qu\'elle ne fera pas de mal aux humains.</p>\r\n\r\n<p>AprÃ¨s la conclusion du procÃ¨s, Shinobu amÃ¨ne Tanjiro et Nezuko au Domaine des Papillons, oÃ¹ Zenitsu et Inosuke guÃ©rissent Ã©galement leurs blessures. Les Piliers commencent leur conseil avec MaÃ®tre Kagaya, tandis que les autres pourfendeurs de dÃ©mons guÃ©rissent. Une fois leurs blessures suffisamment guÃ©ries, Tanjiro et les garÃ§ons suivent une formation de rÃ©adaptation sous la tutelle d\'Aoi Kanzaki, l\'une des infirmiÃ¨res du manoir, et l\'apprenti de Shinobu Kanao Tsuyuri.</p>\r\n\r\n<p>Tanjiro apprend Ã©galement le passÃ© de Shinobu avec un dÃ©mon qui a tuÃ© sa sÅ“ur. Tanjiro, Zenitsu et Inosuke ont du mal Ã  s\'entraÃ®ner au dÃ©but, incapables de battre Kanao sous quelque forme que ce soit. Finalement, les garÃ§ons retrouvent leur endurance et maÃ®trisent le Souffle de Concentration IntÃ©gral, la capacitÃ© d\'utiliser la technique de Souffle toute la journÃ©e et toute la nuit.</p>\r\n\r\n<p>Une fois leur entraÃ®nement terminÃ©, le groupe de Tanjiro se dirige vers l\'ouest pour rejoindre le Pilier de la Flamme, Kyojuro Rengoku, pour la mission du Train de l\'Infini. Pendant ce temps, Muzan dÃ©mantÃ¨le les Rangs InfÃ©rieurs et poursuit ses plans pour Ã©craser l\'ArmÃ©e des pourfendeurs.</p>', 'A6.webp'),
(17, 'Arc Train de l\'Infini', '<p>Tanjiro, Zenitsu, Inosuke et Nezuko prennent le train de l\'Infini pour rejoindre KyÅjurÅ Rengoku, le Pilier de la Flamme, rÃ©putÃ© comme Ã©tant le plus fort des chasseurs de dÃ©mons. Ce dernier, dotÃ© d\'un optimisme Ã  toute Ã©preuve, leur montre l\'Ã©tendu de ses talents en tuant un dÃ©mon dans le train et les 3 jeunes \"apprentis\" ne tardent pas Ã  vouloir Ãªtre pris sous son aile. Le Pilier cherche, en effet, Ã  rÃ©soudre le mystÃ¨re de ce train oÃ¹ les voyageurs disparaissent mystÃ©rieusement.</p>\r\n\r\n<p>Les chasseurs et l\'ensemble des passagers s\'endorment cependant trÃ¨s rapidement dÃ» au pouvoir d\'Enmu, qui, aidÃ© du contrÃ´leur, piÃ¨ge ses victimes dans leur plus beau rÃªve. Ainsi, Tanjiro retrouve sa famille, tuÃ©e par Muzan au dÃ©but de l\'histoire, Zenitsu et Inosuke vivent chacun des aventures en compagnie de Nezuko tandis que Rengoku retrouve son pÃ¨re, l\'ancien Pilier du Feu, qui avait arrÃªtÃ© sa vie de chasseur qu\'il jugeait comme une perte de temps. Rengoku retrouve aussi Senjirou, son jeune frÃ¨re, qu\'il encourage dans son voeu de devenir un grand chasseur.</p>\r\n\r\n<p>Des humains alliÃ©s du dÃ©mon s\'introduisent Ã©galement dans leur rÃªves pour les tuer mais dÃ©chantent rapidement devant la force spirituelle de leurs adversaires. AidÃ© de Nezuko (qui n\'a pas Ã©tÃ© victime d\'Enmu), Tanjiro comprend qu\'il s\'agit d\'une illusion et se tranche la gorge pour revenir Ã  la rÃ©alitÃ©. Une fois les complices d\'Enmu mis hors d\'Ã©tat de nuire, Rengoku part protÃ©ger les passagers pendant que Tanjiro monte sur le toit du train et affronte le monstre. Le garÃ§on n\'a aucun mal Ã  en venir Ã  bout avant de se rendre compte que le dÃ©mon a fusionnÃ© avec le vÃ©hicule et menace de tuer l\'entiÃ¨retÃ© des passagers. AidÃ© d\'Inosuke, Tanjiro remonte jusqu\'Ã  la locomotive oÃ¹ Enmu est enfin vaincu. MalgrÃ© le dÃ©raillement du train, aucun passager n\'est blessÃ© grÃ¢ce aux chasseurs et Rengoku montre Ã  Tanjiro comment soigner ses blessures grÃ¢ce Ã  sa respiration. C\'est Ã  ce moment qu\'Akaza, la 3eme Lune SupÃ©rieure, fait son apparition.</p>\r\n\r\n<p>Le dÃ©mon se moque des jeunes chasseurs qu\'il juge insignifiants et propose au Pilier de rejoindre leurs rangs en lui faisant miroiter l\'immortalitÃ©. Rengoku s\'y oppose catÃ©goriquement et un violent combat s\'engage, sans que personne d\'autre ne puisse intervenir. BlessÃ©, Rengoku revoit sa mÃ¨re qui lui avait fait promettre de protÃ©ger les faibles avant sa mort et redouble d\'efforts pour tuer son adversaire. Le dÃ©mon arrive cependant Ã  lui donner le coup de grÃ¢ce, mais Rengoku arrive presque Ã  le dÃ©capiter, avant que le monstre ne fuit en voyant l\'aube approcher.</p>\r\n\r\n<p>Tanjiro hurle qu\'il le traquera oÃ¹ qu\'il aille et que Rengoku est le vÃ©ritable vainqueur du duel. Avant de s\'Ã©teindre, Rengoku fÃ©licite ses \"apprentis\" et leur promet qu\'il deviendront de formidables Piliers. Le film se termine sur la rÃ©action des autres Piliers qui jurent de tuer les dÃ©mons restants pour venger la mort de leur frÃ¨re d\'arme.</p>', 'A7.webp'),
(18, 'Arc Quartier des plaisirs', '<p>GuidÃ© par un corbeau, Tanjiro Kamado se rend Ã  la rÃ©sidence Rengoku pour transmettre les derniers messages de Kyojuro Rengoku Ã  son pÃ¨re et son petit frÃ¨re. Le groupe de Tanjiro retourne au Domaine des Papillons.</p>\r\n\r\n<p>AprÃ¨s que Tanjiro ait visitÃ© la rÃ©sidence Rengoku et rencontrÃ© le frÃ¨re cadet de Kyojuro, Senjuro, pour transmettre le dernier message de Kyojuro, Tanjiro passe ses journÃ©es Ã  sâ€™entraÃ®ner et Ã  accomplir des missions. Un jour, il retourne au Butterfly Mansion pour trouver SoundHashira, Tengen Uzui, essayant dâ€™emmener Aoi et Naho en mission contre leur grÃ©. Tanjiro, Zenitsu et Inosuke proposent de se lancer dans cette mission Ã  la place, et ils se dirigent vers leur prochaine destination â€“ le quartier des plaisirs.</p>\r\n\r\n<p>AprÃ¨s leur arrivÃ©e, Tanjiro et ses camarades sâ€™infiltrent dans chaque maison oÃ¹ travaillent les femmes dâ€™Uzui; Suma, Makio et Hinatsuru. Alors quâ€™il travaillait comme apprenti et cherchait oÃ¹ ils se trouvaient, Inosuke apprend que Makio sâ€™est fermÃ©e Ã  tout le monde dans sa chambre. RÃ©alisant que Zenitsu a maintenant disparu, Tanjiro et Inosuke enquÃªtent. MalgrÃ© lâ€™hÃ©sitation de Tengen Ã  les laisser se battre. ils se rÃ©arment et recherchent des signes du dÃ©mon. DÃ©tectant une odeur dans la maison Tokito, Tanjiro entre seul et est confrontÃ© Ã  la SixiÃ¨me Lune SupÃ©rieure.</p>\r\n\r\n<p>Face Ã  Daki seul, Tanjiro essaie dâ€™utiliser Hinokami Kagura mais est gÃªnÃ© par le stress extrÃªme que cela provoque dans son corps. Inosuke et Tengen localisent les victimes du dÃ©mon et rencontrent le dÃ©mon responsable de lâ€™enlÃ¨vement de Zenitsu et de ses femmes. Furieux du mÃ©pris de Daki pour la vie, Tanjiro la confronte avec colÃ¨re, lui faisant dÃ©couvrir les souvenirs de Muzan dâ€™un vieil ennemi. Son utilisation excessive de Hinokami Kagura lâ€™a bientÃ´t mis Ã  genoux de douleur. Mais alors que Daki se prÃ©pare Ã  le tuer, un nouvel ennemi apparaÃ®t ; Nezuko, maintenant pleinement dÃ©mon et refusant de laisser sa famille mourir Ã  nouveau.</p>\r\n\r\n<p>Alors que Nezuko se bat et Ã©crase Daki, elle manque de se perdre et oblige Tanjiro Ã  lâ€™arrÃªter. Daki se prÃ©pare Ã  se venger quand soudain Tengen arrive et la dÃ©capite. MoquÃ©e pour sa faiblesse, Daki se met Ã  rÃ¢ler et Ã  pleurer, provoquant lâ€™Ã©mergence de son autre moitiÃ© qui se bat, la vÃ©ritable dÃ©tentrice du SixiÃ¨me Rang SupÃ©rieur des Douze Lunes DÃ©moniaques.</p>\r\n\r\n<p>Pendant que Zenitsu et Inosuke se battent contre Daki, Tengen et Tanjiro sont forcÃ©s Ã  plusieurs reprises Ã  se dÃ©fendre par Gyutaro. La SixiÃ¨me Lune tente de tuer Hinatsuru mais Tanjiro combine ses deux Styles de Souffles pour lâ€™attaquer. MalgrÃ© ce coup de pouce, ils ne parviennent pas Ã  dÃ©capiter Gyutaro ensemble, Gyutaro se dÃ©chaÃ®nant avec sa sÅ“ur, Tengen doit combattre Gyutaro seul. Tanjiro rejoint Zenitsu et Inosuke dans une charge coordonnÃ©e pour vaincre Daki. Lorsque le plan rÃ©ussit, leur victoire sâ€™effondre lorsque les deux lunes de rang supÃ©rieur ripostent avec un effet dÃ©vastateur.<p/>\r\n\r\n<p>Avec ses amis gravement blessÃ©s et laissÃ©s pour morts ainsi que Yoshiwara en flammes, Tanjiro est confrontÃ© Ã  Gyutaro. Il propose de transformer Tanjiro en dÃ©mon mais Tanjiro, refusa et prit sa derniÃ¨re chance et attaqua malgrÃ© ses graves blessures. Tanjiro rassemble ses derniÃ¨res forces et enfonce son Ã©pÃ©e dans le cou de Gyutaro, au moment oÃ¹ Zenitsu se fait rejoindre par Inosuke et lâ€™aide Ã  couper celle de Daki. Les deux Lunes SupÃ©rieures se firent dÃ©capitÃ©s, mais Ã  lâ€™issue du combat, Gyutaro tente une derniÃ¨re fois de se venger.</p>\r\n\r\n<p>AprÃ¨s avoir vaincu les 6e Lunes SupÃ©rieures , Nezuko arrÃªte la vague de lames de sang avec son feu, et guÃ©rit rapidement Tanjiro, Inosuke et Tengen du poison. AprÃ¨s cela, Tanjiro se dirige vers les dÃ©mons pour sâ€™assurer de leurs disparitions, mais les voit se disputer entre eux alors quâ€™ils meurent. Tanjiro vient les calmer mais Daki disparu, parla suite Gyutaro se remÃ©more son passÃ©, nÃ© comme un paria dans des circonstances terribles. Sa sÅ“ur a apportÃ© une joie de courte durÃ©e avant quâ€™ils ne soient horriblement attaquÃ©s en reprÃ©sailles de ses actions. Dans lâ€™au-delÃ , Daki refuse de le quitter et marchent ensemble vers lâ€™enfer comme un seul homme.</p>\r\n\r\n<p>Obanai vient et se moque de la retraite que Tengen Ã  dÃ©cidÃ© de mener mais est stupÃ©fait dâ€™apprendre que Tanjiro a survÃ©cu Ã  la bataille. Ailleurs, Akaza est tÃ©lÃ©porter vers la Forteresse Dimensionnelle Infinie et rÃ©alise, quâ€™une des Lunes est morte. Du cÃ´tÃ© des pourfendeurs; Tengen et ses Ã©pouses ainsi que Tanjiro, Nezuko et ses amis sont heureux en cÃ©lÃ©brant leurs victoires.</p>', 'A8.webp');

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `characters`
--

INSERT INTO `characters` (`id`, `name`, `description`, `picture`) VALUES
(13, 'Tanjiro Kamado', '<p>Tanjiro a grandi sur une montagne avec ses jeunes frÃ¨res et sÅ“urs et ses parents en tant que fils aÃ®nÃ© de la famille Kamado. Lorsqu\'il Ã©tait enfant, Tanjiro appris la Danse du Dieu du Feu de par son pÃ¨re, Tanjuro Kamado, sachant inconsciemment que la danse Ã©tait en rÃ©alitÃ© le Souffle du Soleil, un Style de Souffle utilisÃ© au combat pour tuer les dÃ©mons. Plus tard dans son enfance son pÃ¨re meurt d\'une maladie, ce qu\'il amÃ¨ne Ã  avoir des responsabilitÃ©s trÃ¨s tÃ´t et Ã  Ãªtre une figure paternelle pour ses frÃ¨res et sÅ“urs.</p>\r\n\r\n<p>Tanjiro Ã©tait trÃ¨s affectueux envers ses frÃ¨res et sÅ“urs, faisant tout son possible pour s\'occuper d\'eux. Lorsqu\'un de ses frÃ¨res a accidentellement renversÃ© une bouilloire, il l\'a protÃ©gÃ© et a reÃ§u une cicatrice de brÃ»lure au front. Tanjiro Ã©tait responsable de la vente de charbon de bois dans la ville la plus proche afin de gagner de l\'argent pour la famille et semblait frÃ©quenter la ville assez souvent, car les habitants le reconnaissaient facilement et demandaient rÃ©guliÃ¨rement son aide.</p>', 'tanj.webp'),
(14, 'Zenitsu Agatsuma', '<p>Zenitsu n\'a pas Ã©tÃ© Ã©levÃ© par ses parents, il n\'a donc pas eu de bons conseils. Quand il Ã©tait jeune, Zenitsu est tombÃ© amoureux d\'une fille et a dÃ©cidÃ© de lui donner de l\'argent pour faire appel Ã  elle, mais la fille a fini par s\'enfuir avec un autre gars, laissant Zenitsu se noyer dans les dettes. Voyant qu\'il avait des problÃ¨mes financiers avec les agents de recouvrement, Jigoro Kuwajima a remboursÃ© la dette de Zenitsu et a dÃ©cidÃ© de le former comme Ã©pÃ©iste.</p>\r\n\r\n<p>Zenitsu a commencÃ© Ã  se rÃ©fÃ©rer Ã  Jigoro comme \"Grand-PÃ¨re\" et a commencÃ© Ã  s\'entraÃ®ner aux cÃ´tÃ©s de l\'autre disciple de Grand-PÃ¨re, Kaigaku. Un jour, alors qu\'il s\'entraÃ®nait, Zenitsu a grimpÃ© dans un arbre de peur d\'Ãªtre entraÃ®nÃ© Ã  mort et alors qu\'il commenÃ§ait Ã  paniquer, un coup de foudre l\'a frappÃ©, faisant devenir ses cheveux blonds.</p>\r\n\r\n<p>Zenitsu et Kaigaku se dÃ©testaient. Cependant, Zenitsu le respectait toujours en tant que son aÃ®nÃ© et pour sa forte ambition. Zenitsu a souhaitÃ© se battre aux cÃ´tÃ©s de Kaigaku en tant qu\'Ã©gal un jour et a dÃ©veloppÃ© son propre septiÃ¨me mouvement, Dieu du Feu CÃ©leste.</p>', 'zenlove.gif'),
(15, 'Nezuko Kamado', '<p>Nezuko a grandi sur une montagne aux cÃ´tÃ©s de son frÃ¨re aÃ®nÃ©, Tanjiro, et du reste de ses frÃ¨res et sÅ“urs et de sa mÃ¨re, en tant que fille aÃ®nÃ©e de la famille Kamado. Elle s\'est vraisemblablement occupÃ©e de ses jeunes frÃ¨res et sÅ“urs en tant qu\'assistante de sa mÃ¨re, comme cela a Ã©tÃ© briÃ¨vement vu avant la mort de sa famille. Contrairement Ã  Tanjiro, qui Ã©tait chargÃ© de vendre du bois de chauffage en ville, Nezuko aidait gÃ©nÃ©ralement Ã  la maison familiale.</p>\r\n\r\n<p>La famille Ã©tait quelque peu pauvre et, par consÃ©quent, Nezuko devait parfois se passer de choses comme de nouveaux vÃªtements afin de s\'assurer que le reste de ses frÃ¨res et sÅ“urs avait suffisamment de nourriture Ã  manger. Elle ne semblait pas considÃ©rer cela comme un fardeau et se contentait simplement d\'aider sa famille.</p>', 'nezukobrille.webp'),
(16, 'Inosuke Hashibira', '<p>Inosuke a Ã©tÃ© Ã©levÃ© par les sangliers pour une bonne partie de sa vie avant la SÃ©lection Finale. Il a Ã©tÃ© rÃ©vÃ©lÃ© plus tard qu\'il est nÃ© dans une famille avec un pÃ¨re violent et s\'est Ã©chappÃ© de son pÃ¨re avec sa mÃ¨re.</p>\r\n\r\n<p>Par la suite, Inosukeâ€”qui Ã©tait encore un bÃ©bÃ© Ã  l\'Ã©poque, sa mÃ¨re a Ã©tÃ© emmenÃ©e par Doma dans son culte Paradise Faith. Kotoha aimait chanter pour Inosuke mais changeait apparemment les paroles de la chanson Ã  chaque fois. Cependant, aprÃ¨s avoir dÃ©couvert que Doma mangeait ses adorateurs, Kotoha s\'est enfuie avec son fils. Courant sans but vers un village humain, Kotoha s\'est finalement retrouvÃ© au sommet d\'une falaise. Ne voyant aucune issue de secours, elle a fait un dernier effort pour sauver Inosuke en le laissant tomber dans la riviÃ¨re sous la falaise. Elle a ensuite Ã©tÃ© dÃ©vorÃ©e par Doma. Plus tard, Inosuke a Ã©tÃ© dÃ©couvert et Ã©levÃ© par des sangliers.</p>', 'tanjiro-inosuke.gif');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `date`, `total`) VALUES
(1, 13, '2022-06-02 14:20:59', NULL),
(2, 20, '2022-06-06 15:05:29', NULL),
(3, 37, '2022-06-07 17:00:17', NULL),
(4, 38, '2022-06-08 13:11:16', NULL),
(5, 39, '2022-06-08 13:17:19', NULL),
(6, 40, '2022-06-08 13:17:24', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `picture`, `description`, `price`) VALUES
(5, 'Sweat Giyu Tomioka', 'giyu-tomioka_82.jpg', '<ul><li>Sweat de grande qualitÃ©</li><li>MatÃ©riaux de grande qualitÃ©</li><li>MatiÃ¨re : Coton Polyester</li><li>Sweat avec un tissu confortable</li><li>Type dâ€™ajustement : Regular</li><li>Genre : Unisexe</li><li>Lavable Ã  la machine Simple et rapide Ã  30 Â°C</li></ul>', '34.90'),
(6, 'Sweat Ã  Ã‰paules DÃ©nudÃ©es Nezuko', 'Demon-Slayer-Kimetsu-no-Yaiba-Women-Nezuko-Kamado.jpg', '<ul>\r\n<li>\r\nSweat Ã  Ã‰paules DÃ©nudÃ©es de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©e\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton\r\n</li>\r\n<li>\r\nType de motif : Imprimer\r\n</li>\r\n<li>\r\nVÃªtements femme : Sweat Ã  capuche femme\r\n</li>\r\n</ul>', '49.99'),
(7, 'Sweat Blood Tanjiro', 'product-image-1303712417.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '44.99'),
(8, 'Sweat Zenitsu x Pokemon', 'product-image-1495649278.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '39.99'),
(9, 'Sweat Nezuko Kamado Poche', '25706_weat-shirt-demon-slayer-anime-pour-homm_variants-3.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '29.90'),
(10, 'Sweat Zenitsu Agatsuma Poche', '25707_weat-shirt-demon-slayer-anime-pour-homm_variants-4.jpg', '<ul><li>Sweat de grande qualitÃ©</li><li>MatÃ©riaux de grande qualitÃ©</li><li>MatiÃ¨re : Coton Polyester</li><li>Sweat avec un tissu confortable</li><li>Type dâ€™ajustement : Regular</li><li>Genre : Unisexe</li><li>Lavable Ã  la machine simple et rapide Ã  30 Â°C</li></ul>', '29.90'),
(11, 'Sweat Giyu Tomioka Poche', '25709_weat-shirt-demon-slayer-anime-pour-homm_variants-6.jpg', '<ul><li>Sweat de grande qualitÃ©</li><li>MatÃ©riaux de grande qualitÃ©</li><li>MatiÃ¨re : Coton Polyester</li><li>Sweat avec un tissu confortable</li><li>Type dâ€™ajustement : Regular</li><li>Genre : Unisexe</li><li>Lavable Ã  la machine simple et rapide Ã  30 Â°C</li></ul>', '29.90'),
(12, 'Sweat Demon Slayer Pourfendeurs de DÃ©mons', '25720_weat-shirt-demon-slayer-anime-pour-homm_variants-17.jpg', '<ul><li>Sweat de grande qualitÃ©</li><li>MatÃ©riaux de grande qualitÃ©</li><li>MatiÃ¨re : Coton Polyester</li><li>Sweat avec un tissu confortable</li><li>Type dâ€™ajustement : Regular</li><li>Genre : Unisexe</li><li>Lavable Ã  la machine simple et rapide Ã  30 Â°C</li></ul>', '29.90'),
(13, 'Sweat Inosuke Crocs du Sanglier', 'sweat-demon-slayer-inosuke-crocs-du-sanglier___83.jpg', '<ul><li>Sweat de grande qualitÃ©</li><li>MatÃ©riaux de grande qualitÃ©</li><li>MatiÃ¨re : Coton Polyester</li><li>Sweat avec un tissu confortable</li><li>Type dâ€™ajustement : Regular</li><li>Genre : Unisexe</li><li>Lavable Ã  la machine simple et rapide Ã  30 Â°C</li></ul>', '34.90'),
(14, 'Sweat Tous les Personnages', 'Demon-Slayer-Anime-Tanjiro-i-Nezuko-Rengoku-bluza-z-kapturem-bluza-UNISEX-ANIME-Kimetsu-nie-Yaiba.jpg_640x640mm.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '39.90'),
(15, 'Sweat Kyojuro Rengoku VS Akaza', 'Sweat-shirt-capuche-pour-homme-et-femme-v-tement-imprim-dessin-anim-Demon-Slayer-Rengoku-Kyoujurou-1.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '45.90'),
(16, 'Sweat Kokushibo DÃ©mon', 'product-image-1679084277.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '39.99'),
(17, 'Sweat uniforme Officiel', 'product-image-1303712424.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '42.99'),
(18, 'Sweat Demon Slayer Tenue du Manoir des Papillons', 'demon-slayer-butterfly-mansion-hoodie-demon-slayer-merch-747.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '44.99'),
(19, 'Sweat Souffle de la BÃªte', 'sweat-demon-slayer-souffle-de-la-bete__102.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '34.90'),
(20, 'Sweat Blanc Zenitsu CouchÃ© de Soleil', 'Sweat-capuche-avec-imprim-Demon-Slayer-pour-homme-et-femme-sweat-shirt-ample-la-mode-pour-2.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '39.90'),
(21, 'Sweat DÃ©mon Akaza', 'Sweat-capuche-avec-dessin-anim-japonais-Demon-Slayer-pour-femme-haut-imprim-douze-lunes-en-bois-1.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '39.90'),
(22, 'Sweat Tanjiro Nezuko Inosuke Zenitsu Kawaii', 'H25d3e035b0b04dd5b8e7dc7d7c81439fQ.png', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '34.99'),
(23, 'Sweat Blanc Tanjiro', 'product-image-1443927709.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '44.99'),
(24, 'Sweat Demon Slayer Nezuko rose', 'product-image-1691198463.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '34.99'),
(25, 'Sweat Masque de Renard Blanc et Rouge', 'product-image-1540399742.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '48.99'),
(26, 'Sweat Ã  Ã‰paules DÃ©nudÃ©es Haganezuka', 'Demon-Slayer-Kimetsu-no-Yaiba-patchwork-Hoodie-girls-Women-Off-Shoulder-sexy-hoodies-Nezuko-Kamado-Cosplay_a63ca729-f473-4b2d-94eb-623db207965a.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '52.68'),
(27, 'Sweat Tanjiro x Pokemon', 'product-image-1495649276.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '42.97'),
(28, 'Sweat Demon Slayer Zenitsu Thunders', 'product-image-1780462210.jpg', '<ul>\r\n<li>\r\nSweat de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatÃ©riaux de grande qualitÃ©\r\n</li>\r\n<li>\r\nMatiÃ¨re : Coton Polyester\r\n</li>\r\n<li>\r\nSweat avec un tissu confortable\r\n</li>\r\n<li>\r\nType dâ€™ajustement : Regular\r\n</li>\r\n<li>\r\nGenre : Unisexe\r\n</li>\r\n<li>\r\nLavable Ã  la machine simple et rapide Ã  30 Â°C\r\n</li>\r\n</ul>', '59.90');

-- --------------------------------------------------------

--
-- Structure de la table `products_orders`
--

CREATE TABLE `products_orders` (
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `size` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products_orders`
--

INSERT INTO `products_orders` (`product_id`, `order_id`, `size`) VALUES
(22, 1, 'M'),
(28, 1, 'M'),
(20, 1, 'M'),
(17, 1, 'M'),
(5, 2, 'M'),
(8, 2, 'M'),
(15, 3, 'S'),
(14, 1, 'S'),
(6, 4, 'XXL'),
(7, 5, 'L'),
(8, 6, 'S'),
(17, 5, 'L'),
(28, 5, 'L'),
(21, 5, 'L'),
(19, 5, 'L'),
(17, 6, 'S');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `adresse`, `email`, `password`, `telephone`, `avatar`, `admin`) VALUES
(13, 'LEDOUX', 'Julien', '17 rue de Gigant, 44100 Nantes', 'admin@admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '0666474575', 'admin.png', 1),
(19, 'Ledoux', 'julien', '17 rue de Gigant', 'jled44@hotmail.fr', 'e23c3d7ff76f6e6235ce091f2fcd5fd35748677799d1637acf5ba2bca350e258', '0666474575', 'camel-1615446_1280.jpg', 0),
(20, 'ju', 'ju', 'ju', 'ju@ju', '27c47b28fb5f4545bda5d276ab55d84ccf9cc790581904c72fecdb4d623ce049', '', 'IMG_20220609_160722.jpg', 0),
(21, 'Axel', 'Axel', 'Axel', 'axel@axel.fr', '4183b9f5ed14b64d012ce1e728cfa1e7afc399cb82b6729b222784db6b1a50a7', 'axel', '', 0),
(37, 'juu', 'juu', 'juu', 'juu@juu', '615d0d69302ab961599a1e09f4284ff1740aa74857c7e9875a1b487b913c1bb5', 'juu', 'tanjfeu.png', 0),
(38, 'Madame', 'Pouet', 'allÃ©e du pouet', 'pouet@pouet.fr', '7ed8eda08e2d4a11a5459cc3453f54171591c0a39a113eaacc1f421deb5a9792', '0202020202', 'brenda.jpg', 0),
(39, 'Max', 'Max', '1 rue max, 44000 Nantes', 'max@max.com', '9baf3a40312f39849f46dad1040f2f039f1cffa1238c41e9db675315cfad39b6', '', '', 0),
(40, 'Maupas', 'Camille', '5 boulevard vincent gache', 'pouet@pouet.com', '7ed8eda08e2d4a11a5459cc3453f54171591c0a39a113eaacc1f421deb5a9792', '', 'image.jpg', 0),
(42, 'er', 'er', 'er', 'er@er', 'cc7e4412564ba8a761bd32ab4cc6086bac3c2c9e580367e0b0eb32a4316f9154', 'er', '', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `arcs`
--
ALTER TABLE `arcs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products_orders`
--
ALTER TABLE `products_orders`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `arcs`
--
ALTER TABLE `arcs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `products_orders`
--
ALTER TABLE `products_orders`
  ADD CONSTRAINT `products_orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_orders_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
