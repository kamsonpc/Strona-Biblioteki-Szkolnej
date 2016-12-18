-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Gru 2016, 19:54
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

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `books`
--

CREATE TABLE `books` (
  `id_book` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `author` varchar(40) NOT NULL,
  `describe` varchar(250) NOT NULL,
  `img_src` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `books`
--

INSERT INTO `books` (`id_book`, `name`, `author`, `describe`, `img_src`) VALUES
(8, 'Zostaw mnie', 'Gayle Forman', 'Maribeth Klein to wiecznie zabiegana pracujÄ…ca matka. Wszystko co wiÄ…Å¼e siÄ™ z domem, z mÄ™Å¼em i z dzieÄ‡mi spoczywa na jej barkach â€“ nawet w czasie rekonwalescencji po zawale zwolniona jest jedynie od obowiÄ…zkÃ³w zawodowych. W Maribeth Klein ', 'img/books/532919-352x500.jpg'),
(9, 'Cybulski. PodwÃ³jne salto', 'Dorota KaraÅ›', 'Brawurowa biografia czÅ‚owieka, ktÃ³ry zostaÅ‚ legendÄ…BYÅO ICH DWÃ“CH.Pierwszego znajÄ… wszyscy: â€žpolski James Deanâ€, najwiÄ™kszy gwiazdor filmowy epoki, obiekt westchnieÅ„ tysiÄ™cy kobiet. Kultowy Maciek CheÅ‚micki w Popiele i diamencie. Ginie', 'img/books/517724-352x500.jpg');

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
(6, '10/2010r.', 'Wypracowanie: Napisz felieton na temat: ,,Å»ycie w szufladzieâ€. Postaw na peÅ‚nÄ… dowolnoÅ›Ä‡, wyobraÅºniÄ™, skojarzenia \r\nJÄ™zyk niemiecki: Wiederholung - powtÃ³rka z gramatyki \r\nJÄ™zyk angielski: Repetition - czasowniki modalne, okresy warunkowe, strona bierna \r\nMatematyka: Czy coÅ› wam w gÅ‚owie zostaÅ‚o? PowtÃ³rka dla klas drugich '),
(7, '3/2012r.', 'Fakty z historii i z WOS-u: Quiz faktograficzny, pojÄ™ciownik na WOS \r\n\r\n\r\nOdpytka z lektury: â€žDziadyâ€ i â€žKordianâ€\r\n\r\n \r\nSkarbiec epok: Dwudziestolecie miÄ™dzywojenne na Å›wiecie\r\n\r\n \r\nPomysÅ‚ na prezentacjÄ™: MiÅ‚oÅ›Ä‡ w utworach Adama Mickiewicza. Temat prezentacji maturalnej brzmi: Jak Adam Mickiewicz postrzegaÅ‚ miÅ‚oÅ›Ä‡? OmÃ³w zagadnienie, odwoÅ‚ujÄ…c siÄ™ do wybranych utworÃ³w \r\n\r\n\r\nEnglish class: Science and technology. Writing with no mistakes. List nieformalny na maturze i rozumienie ze sÅ‚uchu \r\nDeutschraum: Buch oder E-book? PowtÃ³rka do matury. Czas przeszÅ‚y Imperfekt\r\n\r\n \r\nGeografia na plus: Trening przed egzaminem. Koszty degradacji Å›rodowiska przyrodniczego\r\n\r\n \r\nBiologia w piguÅ‚ce: Trening przed egzaminem. Gospodarka wodna i mineralna organizmÃ³w, cz. I \r\n\r\n\r\nArkusz maturalny z matematyki: PrzykÅ‚adowy arkusz egzaminacyjny z matematyki. Poziom podstawowy \r\n\r\n');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(45) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `data` date NOT NULL,
  `autor` varchar(15) NOT NULL,
  `tresc` longtext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `news`
--

INSERT INTO `news` (`id`, `nazwa`, `data`, `autor`, `tresc`, `img`) VALUES
(30, 'WraÅ¼enia z finaÅ‚u WTEM', '2016-12-18', 'Kamil', '22 kwietnia odbyÅ‚ siÄ™ finaÅ‚owy etap tegorocznej edycji WTEM. WziÄ™Å‚o w nim udziaÅ‚ szesnaÅ›cie osÃ³b z caÅ‚ej Polski. NaszÄ… szkoÅ‚Ä™ reprezentowaÅ‚ uczeÅ„ klasy 2 technikum informatycznego Åukasz MÄ…czka. FinaÅ‚owy etap wymagaÅ‚ wykazania siÄ™ wiedzÄ… oraz umiejÄ™tnoÅ›ciami medialnymi, informacyjnymi i cyfrowymi. Pierwszym zadaniem byÅ‚o udzielenie pisemnych odpowiedzi na pytania z zakresu m.in. dziennikarstwa obywatelskiego, wolnych licencji, prywatnoÅ›ci, a raczej jej braku w sieci w obliczu rozwoju nowych technologii, dostÄ™pnoÅ›ci mediÃ³w, prawa autorskiego.\r\n\r\nDrugi etap to zadanie praktyczne. PolegaÅ‚o ono na stworzeniu nowego serwisu spoÅ‚ecznoÅ›ciowego. Aby wcieliÄ‡ swÃ³j pomysÅ‚ w Å¼ycie finaliÅ›ci mieli zaÅ‚oÅ¼yÄ‡ startup, zaplanowaÄ‡, jakie funkcje bÄ™dzie oferowaÅ‚o nowe narzÄ™dzie (liczyÅ‚a siÄ™ innowacyjnoÅ›Ä‡) oraz zaprojektowaÄ‡ stronÄ™ gÅ‚Ã³wnÄ…, dbajÄ…c o uÅ¼ytecznoÅ›Ä‡ i dostÄ™pnoÅ›Ä‡ serwisu, a takÅ¼e daÄ‡ odpowiedÅº na pytanie: na jakie potrzeby uÅ¼ytkownikÃ³w/uÅ¼ytkowniczek bÄ™dzie odpowiadaÅ‚ nowy serwis? Do zadaÅ„ uczestnikÃ³w naleÅ¼aÅ‚o rÃ³wnieÅ¼ opracowanie krÃ³tkiego regulaminu korzystania z serwisu. SwojÄ… uwagÄ™ mieli skupiÄ‡ na zapewnieniu uÅ¼ytkownikom bezpiecznego korzystania z nowego narzÄ™dzia i ochronÄ™ ich prywatnoÅ›ci. Na koniec finaliÅ›ci prezentowali swoje pomysÅ‚y przed komisjÄ…, ktÃ³ra ich oceniaÅ‚a.\r\n\r\nUdziaÅ‚ w finale byÅ‚ dla Åukasza cennym doÅ›wiadczeniem i sprawdzianem umiejÄ™tnoÅ›ci wystÄ…pieÅ„ przed jury. W przyszÅ‚oÅ›ci planuje wziÄ…Ä‡ udziaÅ‚ w kolejnej edycji WTEM.', 'upload/wtem-maczka-Resizer-_400x600Q100.jpg');

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
(2, 'kamson', '12345678'),
(3, 'biblioteka', 'Bi$liotek@2017');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id_book`);

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
-- AUTO_INCREMENT dla tabeli `books`
--
ALTER TABLE `books`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT dla tabeli `folder`
--
ALTER TABLE `folder`
  MODIFY `id_folder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
