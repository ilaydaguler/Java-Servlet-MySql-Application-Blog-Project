-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Ağu 2021, 21:02:44
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name_surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `name_surname`, `email`, `password`) VALUES
(1, 'İlayda Güler', 'ilayda@mail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact`
--

CREATE TABLE `contact` (
  `cid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `contact`
--

INSERT INTO `contact` (`cid`, `name`, `email`, `phone`, `message`) VALUES
(1, 'İlayda Güler', 'i@gmail.com', '05327001000', 'Merhaba'),
(2, 'Ayşe Bilmem', 'ayse@mail.com', '56332147895', 'hello');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `post`
--

CREATE TABLE `post` (
  `pid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `explanation` text NOT NULL,
  `detail` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `post`
--

INSERT INTO `post` (`pid`, `title`, `explanation`, `detail`, `id`) VALUES
(2, 'Özgürlük ve sağlık sokakta', 'Bu özgür tekerleklerle outdoor aktiviteleri hayatımıza nasıl faydalar sağlıyor?', 'Outdoor aktivitelerinin hem fiziksel hem de psikolojik sağlık için çok önemli olduğunu artık biliyoruz. Bir zamanlar “çocuk oyunu” diye tanımlanan kaykay ve bisiklet artık her yaştan insan için yaşamın vazgeçilmez parçasına dönüşüyor. Peki bu özgür tekerleklerle outdoor aktiviteleri hayatımıza nasıl faydalar sağlıyor?\r\n\r\nKarbonhidrat temelli beslenme alışkanlığı modern dünyanın en büyük sorununa dönüşmüş durumda. Bir zamanlar insanoğlu medeniyetinin yerleşik hayata geçerek, vahşi hayvanlardan, saldırgan kabilelerden korunmak ve toplu şekilde güven içinde yaşamak için fırsat olarak değerlendirdiği tahıl tarımı, medeniyetin gelişmesine gerçekten büyük katkı yaptı. Tarım nedeniyle yerleşik toplumlar oluştu, işbirliği sayesinde insanoğlunun sosyal yönü gelişti, ticaret, teknoloji, bilim üretmek mümkün hale geldi.\r\n\r\nAncak karbonhidrat temelli beslenme alışkanlığı binlerce yıl sonra bugün artık kontrolden çıktığı gibi, bu alışkanlığın sağladığı yüksek kaloriyi yakacak zorlu yaşam koşulları da ortadan kalktığı için dünya ülkeleri ağır bir obezite ve obezitenin getirdiği ölümcül hastalıklar riskiyle boğuşmaya başladı.\r\n\r\nSorunun çözümü ise çok basit. Hareketli, sportif, aktif bir yaşam sürmek… Bu gerçek fark edildiğinden beri son 20-30 yılda gözden düşen, “çocuk oyuncağı” diye küçümsenebilen bisikletler ve kaykaylar yeniden yetişkin dünyasının gündemine girdi.\r\n\r\nArtık bisikletler ve kaykaylar/scooter’lar modern dünyanın ve modern insanın “hayat arkadaşlarına” dönüştüler. Sağlıklı beslenmek kadar, hareketli bir yaşam sürmek, kaslarımızı tembelleştirmeden hareketten kaçınmadan yaşamak, sağlıklı ve kaliteli bir yaşam sürmek için kilit role sahip alışkanlıklar olarak kabul ediliyorlar.\r\n\r\nArtık bisikletler kadar, elektrikli scooter, hoverboard gibi seçenekler de şehir içi ulaşımda yardımımıza koşuyor. İsimlerindeki “elektrikli” ifadesi sizi yanıltmasın, elektrikli motor desteğine rağmen bu araçları kullanmak hala kas gücü gerektiriyor ve bireyleri hareketli yaşamaya sevk ediyor.\r\n\r\nÖzellikle ABD’de, obezitenin ağır bir probleme dönüşmesinin ardından, bu araçların kullanımı son on senede giderek yaygınlaştı. Bugün büyük şehirlerde hem trafik sıkışıklığından kaçmak isteyen hem de hareket ederek sağlık kazanmak isteyen şehir sakinleri, hoverboard, elektrikli scooter ve bisiklet seçenekleri ile ulaşımı tercih ediyor.\r\n\r\nOn milyarlarca dolarlık piyasa değerine ve yıllık milyarlarca dolar kazanca sahip Uber ve Lyft gibi dev araç paylaşım şirketleri, hızla artan bu talebe cevap vermek için kendi scooter kiralama servislerini hayata geçiriyorlar.\r\n\r\nFlorida’da geçtiğimiz aylarda yaşanan bir kasırga öncesinde yapılan çalışmalara göre, şehrin sokaklarında binlerce kiralık scooter bulunduğu anlaşılmıştı. Belediyenin kasırga hazırlığındaki ilk refleksi ise şirket yetkililerini arayıp tüm scooter’ların sokaklardan çekilmesini istemek olmuştu. Çünkü, kasırga anında bu araçların etrafa hızla savrularak ağır zarar vereceği tahmin ediliyordu.\r\n\r\nBisiklet fiyatları ile karşılaştırıldığında daha uygun seçenekler sunan scooter ve hoverboard gibi araçların yanında, elbette bisikletler de hala çok değerli ve konforlu outdoor araçları olarak hayatımıza yer alıyor.\r\n\r\nKatlanan bisikletler kullanmadığımız anlarda onları saklamak için avantaj sağlarken, elektrikli bisikletler de şehir içindeki zor yokuşları tırmanırken sürücüye destek oluyor. Böylece “kan ter içinde” kalmadan ama kaslarımızı da hareket ettirerek, yürümeye oranla çok daha hızlı ve pratik şekilde ulaşım ihtiyacını karşılayabiliyoruz.\r\n\r\n\r\n', 1),
(3, 'Samanyolu’nu Ultra Yüksek Çözünürlükte Gösteren 2,2 Gigapiksellik Fotoğraf', 'Astrofotoğrafçı Bartosz Wojczyński, galaksimiz Samanyolu’nun 2,2 gigapiksel çözünürlüğe sahip ultra yüksek çözünürlüklü bir fotoğrafını çekti.', 'Astrofotoğrafçı Bartosz Wojczyński, galaksimiz Samanyolu’nun 2,2 gigapiksel çözünürlüğe sahip ultra yüksek çözünürlüklü bir fotoğrafını çekti. Yalnızca 4,5 saatte çekilen fotoğraf, Samanyolu’nu daha önce hiç görmediğiniz kadar detaylı gösteriyor.\r\n\r\nŞehir ışıklarından uzakta, bulutların gökyüzünü örtmediği(!) bir yere gidip gece başınızı yukarı kaldırdığınızda Güneş Sisteminin de içinde bulunduğu Samanyolu Galaksisinin muhteşem manzarasını görebilirsiniz. Astrofotoğrafçı Bartosz Wojczyński, bu manzarayı görmekle kalmadı, ultra yüksek çözünürlüklü bir fotoğrafını da çekti.\r\n\r\nHemen aşağıda görmekte olduğunuz fotoğraf, Nambia’da bulunan Tivoli Astro Çiftliğinde çekildi. Toplam değeri 25 bin doları bulan iki adet Nikon D810A kamera ve iki adet Takahashi Epsilon 130D (odak uzaklığı 430mm, diyafram açıklığı f/3.3) astrofotografi lensi ile yalnızca 4,5 saatte gerçekleşen çekimde daha geniş bir görüş açısı yakalamak için iki kamera tamamen paralel yerleştirilmek yerine hafif açılı yerleştirildi.', 1),
(4, 'İklim Değişikliğinin İnsan Sağlığına Etkileri', 'Bir kriz yaşıyoruz. Gerçek ve hepimizin hayatını kökünden etkileyen bir kriz...', 'İklim krizi nedeniyle biz çocukların, dünyamızın geleceği yok oluyor.\r\n\r\nYıllardır herkesin konuştuğu ama engellemek için gereken önlemlerin bir türlü alınamadığı iklim değişliğine artık iklim krizi diyoruz. Dünya iklim değişikliği nedeniyle geri dönülmesi mümkün olmayan bir noktaya doğru hızla gidiyor. Bu yaşadığımız tam anlamıyla bir kriz. Bu nedenle artık iklim değişikliği değil, iklim krizi diyoruz.\r\n\r\nİklim krizinin temel nedeni küresel ısıtma. Günlük hayatımızda farklı amaçlar için kullandığımız fosil yakıtlar, tüketildikten sonra dünya atmosferinin etrafında bir sera gazı katmanı oluşturuyor. Bu katman yeryüzüne ulaşan güneş ışınlarının dünyadan geri sekip uzaya dönmesine engel olarak ısıyı hapsediyor. Bu da küresel ısınma adıyla bilinen ama insan eliyle yaratılmış olduğu için artık “küresel ısıtma” olarak tanımladığımız sonucu doğuruyor. Küresel ısıtma, iklimin dengesini bozarak birçok bölgede yine eskiden iklim değişikliği diye adlandırdığımız, ama artık “iklim krizi” dediğimiz duruma sebep oluyor.\r\n\r\nBunu durdurabilmek içinse sadece 10 senemiz kaldı! Daha fazla değil. Eğer 10 yıl içinde küresel ısınmayı 1,5 derecenin altında tutamazsak, küresel yok oluşun artık geri dönüşü olmayacak.\r\n\r\nİklim krizi yüzünden şu anda bile on binlerce insan yaşadığı yeri terk edip göç etmek zorunda kalıyor. Her gün birçok canlıya ev sahipliği yapan tonlarca buzul eriyerek hayvanları ölüme mahkum ediyor. Bununla da kalmıyor eriyen buzullar deniz seviyesini yükselterek kıyı kentlerini sular altında bırakıyor. Daha geçtiğimiz haftalarda kutuplarda 21 derecenin görüldüğünü biliyor muydunuz?\r\n\r\nAsıl adaletsizlik şu ki, krizin acısını onu asıl yaratan bölgeler çekmiyor, krizde en az etkisi olan gelişmemiş ülkeler çekiyor! Tabii bir de hayvanlar, ki onların krizde hiçbir etkisi yok… Üstelik bu sadece felaketin küçük bir kısmı. Çoğu insan küresel ısıtmayı sadece hava sıcaklıklarının artması olarak bilir. Sadece buzulların erimesinden ibaret sanır. Ama küresel ısıtma normalde o bölgede hiç olmaması gereken soğuklara da sebep oluyor! Her gün dünyanın bir yerlerinde kasırgalara, sellere, orman yangınlarına, soğuk girdaplarına, donlara yol açıyor iklim krizi! Yaz ortasında dolu yağmurları nereden çıktı sanıyorsunuz?', 1),
(5, 'Atmosferin Ağırlığı Altında Neden Ezilmiyoruz?', '“Hava” kelimesini duyduğumuzda aklımıza ne gelir?', 'Bilim insanlarına göre atmosferin ağırlığı altında ezilmememizin sebebi, dışımızdaki hava içe doğru basınç uygularken vücudumuzda akciğer gibi hava dolu olan organlarımızın yanı sıra kan basıncının da dışa doğru bir basınç uygulaması.\r\n\r\n“Hava” kelimesini duyduğumuzda aklımıza ne gelir? Yağmur, kar, dolu gibi hava olayları mı yoksa mevsimsel sıcaklıklar mı? Aklımıza ne gelirse gelsin çoğumuz havayı soyut bir kavram gibi düşünürüz. Fakat havanın da bir kütlesi var.\r\n\r\nAtmosferi oluşturan gazların yani havanın %78’i azot, %21’i oksijendir. Geriye kalan %1’lik kısım ise argon, hidrojen, helyum, neon, metan, kripton, ksenon, karbondioksit ve ozon gibi gazlardan oluşur. Tüm bu gazların toplam kütlesi yaklaşık 5,1 katrilyon tondur (5,1×1018 kilogram). Bu da ortalama 5.100 kilogramlık 1.000.000.000.000.000 tane yetişkin Hint filinin kütlesi kadardır.\r\nhttps://uzay.org/atmosferin-agirligi-altinda-neden-ezilmiyoruz/', 1),
(6, 'DNA araştırması: İnsanlar önce köpekleri evcilleştirdi', 'İngiltere’de yapılan bir araştırma, köpeklerin son Buzul Çağı’nın sonunda yani yaklaşık 11 bin yıl önce evcilleştirilmiş olabileceğini gösterdi.', 'İngiltere’de yapılan bir araştırma, köpeklerin son Buzul Çağı’nın sonunda yani yaklaşık 11 bin yıl önce evcilleştirilmiş olabileceğini gösterdi.\r\n \r\n\r\nBu da köpeklerin, insanlar tarafından evcilleştirilen ilk hayvan olduğunu doğruluyor.\r\n\r\nAraştırmayı yürüten uluslararası bir ekip, antik dönemden kalma ve farklı kültürlere ait 27 köpek kalıntısının DNA haritasını çıkarıp inceleyerek bunları birbirleriyle ve modern köpeklerin genomlarıyla kıyasladı.\r\n\r\nAraştırmaya göre önce Kuzey Yarımküre’de yayılan köpeklerin beş farklı türü evrildi.\r\n\r\nAvrupa kıtasındaki köpeklerin Orta Doğu ve Sibirya olmak üzere iki kökene dayandıkları ve başlangıçta çeşitlilik gösterdikleri ancak muhtemelen Bronz Çağı ile birlikte tek bir soyun giderek yaygınlık kazandığı tahmin ediliyor.\r\n\r\nGüney Afrika ve Meksika’ya özgü bazı modern köpek cinslerinin antik dönemdekilerin genetik özelliklerini taşıdıkları görüldü.\r\n\r\nDoğu Asya’da ise durumun biraz daha karışık olduğu, Çin’deki bazı cinslerin Avustralya dingosu ve Yeni Gine köpeğinin özelliklerine sahip oldukları, diğerlerinin ise Avrupa ve Rus steplerine özgü köpeklere dayandıkları tespit edidli.\r\n\r\nElde edilen sonuçların, tüm köpeklerin bir tek kurt grubundan veya onlara çok yakın birkaç kurttan türediğini belirten senaryo ile uyumlu olduğu belirtiliyor.\r\n\r\n‘Köpekler hayvanlar arasında bizim en eski ve en yakın dostumuz’\r\nSonuçları Science dergisinde yayımlanan araştırmayı yürüten ekipten Oxford Üniversitesi Arkeoloji Profesörü Greger Larson, “Köpekler hayvanlar arasında bizim en eski ve en yakın dostumuz” dedi.\r\n\r\nLarson, “Eski köpeklerden incelediğimiz DNA örnekleri bize, ortak geçmişimizin ne kadar geriye gittiğini gösteriyor. Bu araştırma nihayetinde, bu derin ilişkinin ne zaman ve nerede başladığını anlamamıza yardımcı olacak” diye konuştu.\r\n\r\nLondra’daki Crick Enstitüsü’nde Antik Dönem Genom Laboratuvarı’ndan ve araştırma ekibinden Dr Pontus Skoglund da evcilleştirilme süreçlerine atfen köpekler için “eşsizler” diyor.\r\n\r\nSkoglund, insanların hala avcı-toplayıcı toplumun parçası oldukları bir dönemde, korku duyulan vahşi bir etobur olan kurtları evcilleştirmesinin ilginç olduğunu ve buna neden ihtiyaç duyduklarını araştırdıklarını belirtiyor.\r\n\r\nKaynak: BBC\r\nhttps://uzay.org/dna-arastirmasi-insanlar-once-kopekleri-evcillestirdi/', 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Tablo için indeksler `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `post`
--
ALTER TABLE `post`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
