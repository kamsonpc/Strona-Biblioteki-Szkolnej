-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Gru 2016, 21:12
-- Wersja serwera: 10.1.19-MariaDB
-- Wersja PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `biblioteka`
--
CREATE DATABASE IF NOT EXISTS `biblioteka` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `biblioteka`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `folder`
--

CREATE TABLE `folder` (
  `id_folder` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `folder`
--

INSERT INTO `folder` (`id_folder`, `name`, `content`) VALUES
(4, '10/2009r.', 'JÄ™zyk polski: Z epoki w epokÄ™ \r\nJÄ™zyk angielski: Zaimki i przedimki \r\nBiologia: KomÃ³rka. Budowa i funkcje organelli komÃ³rkowych \r\nGeografia: Mapa fizyczna \r\nWOS: SpoÅ‚eczeÅ„stwo obywatelskie, wspÃ³Å‚tworzenie Å›wiata w ktÃ³rym Å¼yjemy. Czym jest prawo i paÅ„stwo? '),
(5, '8/2010r.', 'JÄ™zyk polski: TwÃ³rczoÅ›Ä‡ Zygmunta KrasiÅ„skiego, Marii Pawlikowskiej- Jasnorzewskiej i Jana Twardowskiego \r\nWypracowanie: Erazm z Rotterdamu w ,,Pochwale gÅ‚upoty" pisaÅ‚: ,,A caÅ‚e Å¼ycie ludzkie czymÅ¼e jest innym jak nie jakÄ…Å› komediÄ…, w ktÃ³rej kaÅ¼dy wystÄ™puje w innej masce i gra innÄ… rolÄ™, dopÃ³ki reÅ¼yser nie sprowadzi go ze sceny". RozwaÅ¼ topos czÅ‚owieka marionetki, dostarczajÄ…cego rozrywki siÅ‚om wyÅ¼szym i historii na wybranych tekstach kultury \r\nJÄ™zyk polski: Buntownicy, kaskaderzy i protestujÄ…cy, czyli przed upadkiem komuny \r\nJÄ™zyk niemiecki: Willkommen, Deutschland! UdzieliÄ‡ informacji, zrelacjonowaÄ‡ wydarzenie, coÅ› wynegocjowaÄ‡ â€“ czyli tzw. rozmowy sterowane \r\nJÄ™zyk angielski: Matura Exam in English. List formalny i nieformalny, rozmowy sterowane na maturze ustnej \r\nWOS: Kalendarium Polski i Å›wiata \r\nMatematyka: Generalna powtÃ³rka przed maturÄ… cz. II. Funkcje, ciÄ…gi i figury \r\nBiologia: Matura z biologii \r\nGeografia: Matura z geografii '),
(6, '10/2010r.', 'Wypracowanie: Napisz felieton na temat: ,,Å»ycie w szufladzieâ€. Postaw na peÅ‚nÄ… dowolnoÅ›Ä‡, wyobraÅºniÄ™, skojarzenia \r\nJÄ™zyk niemiecki: Wiederholung - powtÃ³rka z gramatyki \r\nJÄ™zyk angielski: Repetition - czasowniki modalne, okresy warunkowe, strona bierna \r\nMatematyka: Czy coÅ› wam w gÅ‚owie zostaÅ‚o? PowtÃ³rka dla klas drugich ');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(45) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `data` datetime NOT NULL,
  `autor` varchar(15) NOT NULL,
  `tresc` longtext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `news`
--

INSERT INTO `news` (`id`, `nazwa`, `data`, `autor`, `tresc`, `img`) VALUES
(8, 'â€žCzytamy razemâ€', '2016-12-14 00:00:00', 'Kamson', 'Z okazji przypadajÄ…cego w kwietniu MiÄ™dzynarodowego Dnia KsiÄ…Å¼ki i Praw Autorskich, w bibliotece szkolnej odbyÅ‚a siÄ™ impreza â€žCzytamy razemâ€, ktÃ³rej ideÄ… byÅ‚o propagowanie czytelnictwa. Grupa kilkunastu uczniÃ³w, wsparta nauczycielkami: JoannÄ… JakuckÄ… i SylwiÄ… KrukowieckÄ… â€“ Niemiec, czytaÅ‚a fragmenty wybranych przez siebie ksiÄ…Å¼ek. KaÅ¼dy musiaÅ‚ teÅ¼ obroniÄ‡ wybÃ³r swojej lektury. Podczas jednej z obron, wywiÄ…zaÅ‚a siÄ™ dyskusja miÄ™dzy uczestnikami, czy warto najpierw przeczytaÄ‡ ksiÄ…Å¼kÄ™ czy obejrzeÄ‡ film. PadaÅ‚y rÃ³Å¼ne argumenty za i przeciw tej kolejnoÅ›ci. Z kolei czytajÄ…cy fragment â€žHobbitaâ€ Dawid Dec z klasy I TI, wprowadziÅ‚ nas w niezwykÅ‚Ä… atmosferÄ™ Å›wiata elfÃ³w. PochÅ‚oniÄ™ty caÅ‚kowicie przez tÄ… magicznÄ… powieÅ›Ä‡, czytaÅ‚ tak dÅ‚ugo, Å¼e trzeba byÅ‚o mu przerwaÄ‡. \r\n\r\nCzytamy, bo lubimy â€“ tak w skrÃ³cie moÅ¼na podsumowaÄ‡ imprezÄ™. A najlepszym komentarzem niech bÄ™dzie fakt, iÅ¼ kilka ksiÄ…Å¼ek, ktÃ³rych fragmenty byÅ‚y czytane, zostaÅ‚y w tym samym dniu wypoÅ¼yczone przez publicznoÅ›Ä‡. \r\n', ''),
(9, 'Konkurs â€žNapisz to zwiÄ™Åºle', '2016-12-14 00:00:00', 'Kamson', 'Konkurs â€žNapisz to zwiÄ™Åºlejâ€ JednÄ… z imprez zorganizowanÄ… w ramach MiÄ™dzynarodowego MiesiÄ…ca Bibliotek Szkolnych, byÅ‚ konkurs â€žNapisz to zwiÄ™Åºlejâ€. W zmaganiach, ktÃ³re miaÅ‚y miejsce 19 paÅºdziernika w czytelni biblioteki, uczestniczyÅ‚y dwuosobowe reprezentacje klas maturalnych, ktÃ³re musiaÅ‚y wykazaÄ‡ siÄ™ umiejÄ™tnoÅ›ciami streszczania rÃ³Å¼nych form wypowiedzi. Zadania konkursowe wymagaÅ‚y bowiem m.in.: przedstawienia koledze treÅ›ci filmu przy uÅ¼yciu 160 znakÃ³w pisarskich (tj. tylu, ile liczy jeden SMS), uÅ‚oÅ¼enia tytuÅ‚Ã³w prasowych, streszczajÄ…cych podane wiadomoÅ›ci, zredagowania lidÃ³w do tekstÃ³w prasowych, napisania streszczenia. ', ''),
(10, 'WTEM 2016 WraÅ¼enia', '2016-12-14 00:00:00', 'Kamson', '22 kwietnia odbyÅ‚ siÄ™ finaÅ‚owy etap tegorocznej edycji WTEM. WziÄ™Å‚o w nim udziaÅ‚ szesnaÅ›cie osÃ³b z caÅ‚ej Polski. NaszÄ… szkoÅ‚Ä™ reprezentowaÅ‚ uczeÅ„ klasy 2 technikum informatycznego Åukasz MÄ…czka. FinaÅ‚owy etap wymagaÅ‚ wykazania siÄ™ wiedzÄ… oraz umiejÄ™tnoÅ›ciami medialnymi, informacyjnymi i cyfrowymi. Pierwszym zadaniem byÅ‚o udzielenie pisemnych odpowiedzi na pytania z zakresu m.in. dziennikarstwa obywatelskiego, wolnych licencji, prywatnoÅ›ci, a raczej jej braku w sieci w obliczu rozwoju nowych technologii, dostÄ™pnoÅ›ci mediÃ³w, prawa autorskiego.', ''),
(11, 'â€žEkspres Szkolnyâ€ nagrodzony', '2016-12-14 00:00:00', 'Kamson', 'Redakcja gazetki szkolnej â€žEkspres Szkolnyâ€ zajÄ™Å‚a III miejsce w VII Podkarpackim Konkursie Gazetek Szkolnych organizowanym przez PedagogicznÄ… BibliotekÄ™ WojewÃ³dzkÄ… w Rzeszowie FiliÄ™ w LeÅ¼ajsku oraz Stowarzyszenie na Rzecz Promocji i Rozwoju Pedagogicznej Biblioteki WojewÃ³dzkiej w Rzeszowie. 28 kwietnia 2015r. w siedzibie Polskiego Radia RzeszÃ³w odbyÅ‚a siÄ™ uroczystoÅ›Ä‡ wrÄ™czenia nagrÃ³d. W spotkaniu uczestniczyÅ‚o 19 redakcji gazetek szkolnych wraz z opiekunami. W imieniu naszej redakcji dyplom i upominki odebrali: Sylwia NÄ™dza z klasy 2 TI, Damian PÅ‚oszaj i Mateusz Misiak z klasy 3 TI. ', ''),
(12, 'OGÃ“LNOPOLSKIE WYBORY KSIÄ„Å»E', '2016-12-14 00:00:00', 'Kamson', '31 marca 2015 r. w naszej szkole zakoÅ„czyÅ‚y siÄ™ OGÃ“LNOPOLSKIE WYBORY KSIÄ„Å»EK. AkcjÄ™ zainicjowaÅ‚ miesiÄ™cznik â€žBiblioteka w Szkoleâ€ pod Honorowym Patronatem Minister Edukacji Narodowej Joanny Kluzik- Rostkowskiej. Wybory zorganizowaÅ‚a biblioteka szkolna. Celem tej akcji byÅ‚o poznanie i upowszechnienie faktycznych zainteresowaÅ„ czytelniczych uczniÃ³w, a tym samym dostosowanie ksiÄ™gozbiorÃ³w do uczniowskich preferencji. MÅ‚odzieÅ¼ naszej szkoÅ‚y wziÄ™Å‚a udziaÅ‚ w gÅ‚osowaniu na tytuÅ‚y najciekawszych ksiÄ…Å¼ek przeczytanych w ciÄ…gu ostatnich dwÃ³ch lat lub takich, po ktÃ³re chciaÅ‚aby siÄ™gnÄ…Ä‡ w najbliÅ¼szym czasie. W wyborach wziÄ™Å‚o udziaÅ‚ 74 uczniÃ³w. W sumie zagÅ‚osowano na 59 tytuÅ‚y ksiÄ…Å¼ek. NajwiÄ™cej gÅ‚osÃ³w zdobyÅ‚y ksiÄ…Å¼ki: â€žGra o tronâ€ G. R. R. Martin, â€žHobbit, czyli tam i z powrotemâ€ J. R. R. Tolkien, â€žThe Walking Dead â€“ komiksâ€ Robert Kirkman, â€žWorld War Zâ€ Max Brooks.', ''),
(13, 'Konkurs chemiczny', '2016-12-14 00:00:00', 'Kamson', 'W Å›rodÄ™ 25.02.2015r. w bibliotece szkolnej odbyÅ‚ siÄ™ konkurs chemiczny z 52 numeru â€žEkspresu Szkolnegoâ€. SkÅ‚adaÅ‚ siÄ™ z dwÃ³ch czÄ™Å›ci â€“ pierwsza polegaÅ‚a na odnalezieniu hasÅ‚a z wykreÅ›lanki chemicznej, a druga czeÅ›Ä‡ dotyczyÅ‚a uzupeÅ‚nienia podanych definicji. W zmaganiach wziÄ™Å‚o udziaÅ‚ 18 uczniÃ³w.', ''),
(16, 'Åšwiatowy DzieÅ„ KsiÄ…Å¼ki', '2016-12-14 00:00:00', 'Kamson', '29 kwietnia w ramach Åšwiatowego Dnia KsiÄ…Å¼ki i Praw Autorskich w bibliotece szkolnej  odbyÅ‚o siÄ™ spotkanie czytelnikÃ³w z naszej szkoÅ‚y .\r\n', 'upload/dzien_ksiazki.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `login` varchar(30) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id_user`, `login`, `password`) VALUES
(1, 'admin', 'zaq12wsx'),
(2, 'kamson', '12345678');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`id_folder`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `folder`
--
ALTER TABLE `folder`
  MODIFY `id_folder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Baza danych: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Zrzut danych tabeli `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"biblioteka","table":"folder"},{"db":"biblioteka","table":"users"},{"db":"test","table":"users"},{"db":"biblioteka","table":"news"}]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Zrzut danych tabeli `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'biblioteka', 'news', '{"CREATE_TIME":"2016-12-03 08:29:39","col_visib":["1","1","1","1","1"]}', '2016-12-03 16:14:46');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Zrzut danych tabeli `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-12-03 07:28:50', '{"lang":"pl","collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Baza danych: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `login` varchar(30) CHARACTER SET latin1 NOT NULL,
  `password` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id_user`, `login`, `password`) VALUES
(1, 'admin', 'zaq12wsx');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
