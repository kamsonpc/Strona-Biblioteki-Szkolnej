-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Gru 2016, 18:03
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
(2, 'Cybulski. PodwÃ³jne salto', '', 'Brawurowa biografia czÅ‚owieka, ktÃ³ry zostaÅ‚ legendÄ… BYÅO ICH DWÃ“CH.Pierwszego znajÄ… wszyscy: â€žpolski James Deanâ€, najwiÄ™kszy gwiazdor filmowy epoki, obiekt westchnieÅ„ tysiÄ™cy kobiet. Kultowy Maciek CheÅ‚micki w Popiele i diamencie. Gini', 'img/books/517724-352x500.jpg'),
(3, 'Fanfik', '', 'Zgodnie z zaleceniem MEN-u KaÅ¼dy uczeÅ„ oraz rogal, Aby nie marnowaÄ‡ tlenu, Ma byÄ‡ czymÅ› na ksztaÅ‚t pieroga. Sama sÅ‚odycz, garnir z krost, Jedna waga, jeden wzrost, Pulchne lico, grzbiet garbaty, W Å›rodku pulpa i opiaty. W poznaÅ„skim liceum t', 'img/books/523699-352x500.jpg'),
(4, 'Muza', '', 'Åšwiat wielkiej sztuki, jeszcze wiÄ™kszych namiÄ™tnoÅ›ci i tajemniczy obraz, ktÃ³ry skrywa wiÄ™cej niÅ¼ tysiÄ…c sÅ‚Ã³w. Po jednej stronie pÅ‚Ã³tna dziewczyna trzyma odciÄ™tÄ… gÅ‚owÄ™ swojej siostry, po drugiej âˆ’ lew, ktÃ³ry za chwilÄ™ poderwie siÄ™', 'img/books/533655-352x500.jpg'),
(5, 'Rok krÃ³lika', '', 'Autorka bestsellerowych romansÃ³w historycznych Julia Mrok kieruje siÄ™ dwoma pragnieniami: rozkoszy i opowieÅ›ci. By je zaspokoiÄ‡, z nikim siÄ™ nie liczy i nie zwaÅ¼a na skutki swoich poczynaÅ„, ale kiedy posuwa siÄ™ za daleko, w koÅ„cu musi zniknÄ', 'img/books/526787-352x500.jpg');

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
(20, 'Konkurs â€žNapisz to zwiÄ™Åºlejâ€', '2016-12-15', 'Kamil', 'Konkurs â€žNapisz to zwiÄ™Åºlejâ€ JednÄ… z imprez zorganizowanÄ… w ramach MiÄ™dzynarodowego MiesiÄ…ca Bibliotek Szkolnych, byÅ‚ konkurs â€žNapisz to zwiÄ™Åºlejâ€. W zmaganiach, ktÃ³re miaÅ‚y miejsce 19 paÅºdziernika w czytelni biblioteki, uczestniczyÅ‚y dwuosobowe reprezentacje klas maturalnych, ktÃ³re musiaÅ‚y wykazaÄ‡ siÄ™ umiejÄ™tnoÅ›ciami streszczania rÃ³Å¼nych form wypowiedzi. Zadania konkursowe wymagaÅ‚y bowiem m.in.: przedstawienia koledze treÅ›ci filmu przy uÅ¼yciu 160 znakÃ³w pisarskich (tj. tylu, ile liczy jeden SMS), uÅ‚oÅ¼enia tytuÅ‚Ã³w prasowych, streszczajÄ…cych podane wiadomoÅ›ci, zredagowania lidÃ³w do tekstÃ³w prasowych, napisania streszczenia. ', 'upload/napisztozwiezlej-Resizer-_400x600Q100.jpg'),
(21, 'Bierzemy udziaÅ‚ w biciu rekord', '2016-12-15', 'Kamil', 'Na zaproszenie organizatora â€“ Miejskiej Biblioteki Publicznej w LeÅ¼ajsku, stu uczniÃ³w naszej szkoÅ‚y wraz z opiekunami, wziÄ™Å‚o udziaÅ‚ w biciu rekordu LeÅ¼ajska w moÅ¼liwie najwiÄ™kszej liczbie osÃ³b czytajÄ…cych na wolnym powietrzu. 15 wrzeÅ›nia w wÄ…wozie przy placu targowym zebraÅ‚o siÄ™ 1005 osÃ³b, ktÃ³re przez minutÄ™ gÅ‚oÅ›no czytaÅ‚y przyniesione ze sobÄ… ksiÄ…Å¼ki, e â€“ booki, gazety i podrÄ™czniki. Oto niektÃ³re tytuÅ‚y przyniesione przez naszych uczniÃ³w i opiekunÃ³w: Martin Pollack Po Galicji, Cicha 5 â€“ zbiÃ³r opowiadaÅ„ najpopularniejszych polskich pisarek, m.in. Sylwii Chutnik, Katarzyny Bondy, Nataszy Sochy, MaÅ‚gorzaty Wardy, MaÅ‚gorzaty KaliciÅ„skiej, Marian Pilot Panny szczerbate, Ransom Riggs Osobliwy dom pani Peregrine, Sanderson Brandon Droga krÃ³lÃ³w, Orson Scott Card Zaginione wrota, Tom Clancy Czerwony krÃ³lik, seria Uniwersum Metro 2033, WiesÅ‚aw Rychlicki Od matematyki do programowania. ImprezÄ™ zakoÅ„czyÅ‚o losowanie nagrÃ³d wÅ›rÃ³d uczestnikÃ³w bicia rekordu. SzczÄ™Å›cie uÅ›miechnÄ™Å‚o siÄ™ i do jednego z naszych uczniÃ³w, ktÃ³ry otrzymaÅ‚ ksiÄ…Å¼kÄ™ Cliva Cusslera Korsarz.', 'upload/czytamyrazem2016-Resizer-_400x600Q100.jpg');

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
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `folder`
--
ALTER TABLE `folder`
  MODIFY `id_folder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
