# Cobol_Research_Learning_Informations

## Informations 
COBOL (Common Business Oriented Language), özellikle büyük işletmelerde finansal ve muhasebe işlemleri gibi işletme yönetimi alanlarında kullanılan bir programlama dilidir. COBOL, ilk olarak 1959 yılında IBM tarafından geliştirilmiş ve bugün hala yaygın olarak kullanılmaktadır.

COBOL, büyük veri işleme ve işletme yönetimi için optimize edilmiş bir programlama dilidir. Genellikle işletme dünyasında kullanılan ana bilgisayar sistemleri için kullanılır. Örneğin, bankalar, sigorta şirketleri, finans kuruluşları ve diğer büyük kuruluşlar gibi işletmelerde yaygın olarak kullanılır.

COBOL, özellikle büyük işletmelerin finansal işlemlerinin yönetimi için kullanılan çok sayıda uygulamada kullanılır. Bu uygulamalar arasında finansal raporlama, fatura işleme, müşteri hesapları, stok takibi ve müşteri siparişleri gibi birçok farklı işlem yer alabilir.

COBOL, aynı zamanda güçlü bir veri işleme yeteneğine sahiptir. Büyük veri tabanlarını işleyebilir, veri dosyalarını işleyebilir ve karmaşık işlemleri gerçekleştirebilir.

Bu nedenle, büyük işletmelerin finansal işlemlerinin yönetimi ve veri işleme ihtiyaclarını karşılamak amacıyla kullanılabilir.
## İnstall
Kurabileceğimiz birden fazla derleyici vardır

- IBM Enterprise COBOL - IBM mainframe'leri için COBOL derleyicisi.
- Micro Focus COBOL - Windows, Linux, Unix, IBM z/OS ve VSE gibi farklı platformlar için COBOL derleyicisi.
- OpenCOBOL - Unix, Linux ve Windows için açık kaynaklı bir COBOL derleyicisi.
- Fujitsu NetCOBOL - Windows ve Linux için COBOL derleyicisi.
- ACUCOBOL-GT - Windows, Linux, Unix ve OpenVMS için COBOL derleyicisi.
- COBOL-IT - Windows, Linux ve Unix için COBOL derleyicisi.

Benim tercihim OpenCOBOL yani GnuCOBOL oldu 
- sudo apt install update
- sudo apt install open-cobol
- cobc -v

## Amaç
- Hedefimiz 0 dan başlayarak cobol dilinin ana yapısını anlayıp basit projelerde kod yazabilir hale gelmektir.
- C diline benzeyen yapısından dolayı daha önce C öğrenirken kullandığım Libft projesindeki dökümanlara uyarak hareket edicem.
- Temel yapıların tamamını kullanıp dil hakkında bilgi edinip kullanabilir hale gelmek ilk hedefimiz.
- İkincil hedef daha sonralardan OOP yapısını kullanılabilir hale getirildiğini okudğum 2002 ve 2014 standartlarını anlamak ve kullanmak olucak.

## Notlar
### Soru 1) Ana yapı nasıldır ?
İlk izlenimim de öğrendiğim şey kodun kolay anlaşılabilir ve yönetibilir olabilimesi için Division ve Section olarak adlandırlılan bölümlere sahip olduğu oldu.
#### Denk geldiğim division ve Section bölümleri.
- Identification Division: Programın adı, yazılım şirketi, sürüm numarası ve tarih gibi bilgileri içeren bölümdür.
- Environment Division: Programın çalıştığı ortamın tanımlandığı bölümdür. Bu bölüm, veritabanı yönetimi, girdi/çıktı kontrolü, işletim sistemi kaynakları vb. gibi sistem kaynaklarının tanımlanmasını içerir.
- Data Division: Program veri yapılarının tanımlandığı bölümdür. Bu bölüm, değişkenlerin tipleri, boyutları ve diğer özelliklerini tanımlar.
- Procedure Division: Programın asıl işlevinin gerçekleştirildiği bölümdür. Bu bölüm, programın iş mantığını ve işleme algoritmasını içerir.
- Configuration Section: Çalıştırma zamanında değiştirilebilen program ayarlarını tanımlamak için kullanılan bir section'dır.
- Input-Output Section: Programın girdi ve çıktı işlemlerinin tanımlandığı bir section'dır.
- File Section: Dosya işlemleri için kullanılan bir section'dır.
- Working-Storage Section: Programın çalışması sırasında kullanılan geçici değişkenleri ve diğer veri yapılarını tanımlayan bir section'dır.
- Local-Storage Section: Procedure Division içinde tanımlanan geçici değişkenlerin saklanacağı bölümdür.

### Soru 2) Dilin duyarlılıkları nelerdir
Burada tüm duyarlılıklardan bahsetmem olanaksız araştırmalarım sonucu bulduğum ana duyarlılıkları listeleyeceğim.
#### Bazı duyarlılıklar.
- Satır sonlarına nokta (.) konulmalıdır. Bu nokta, satırın sonlandığını ve bir sonraki satıra geçildiğini belirtir.
COBOL dili tab karakterine karşı hassastır. Bir satırda tab kullanılmak isteniyorsa, TAB karakteri yerine SPACES anahtar kelimesi kullanılabilir. Ancak, tab kullanımı önerilmez.
- Değişken isimleri 1 ila 30 karakter uzunluğunda olmalıdır ve yalnızca alfanumerik karakterlerden oluşabilir. İlk karakter bir harf olmalıdır ve sonraki karakterler harf, sayı veya alt çizgi olabilir.
- COBOL, büyük harf ve küçük harf duyarlı değildir. Bu nedenle, bir değişken ismi büyük harfle veya küçük harfle yazılabilir, ancak standart uygulama genellikle tüm değişken isimlerinin büyük harfle yazılmasıdır.
- Kod blokları, ilgili belirteçlerin açılış ve kapanış anahtar sözcükleriyle belirtilir. Örneğin, bir "PERFORM" bloğu "PERFORM" ve "END-PERFORM" anahtar sözcükleri arasında yer alır.
- COBOL, boşlukların bazı durumlarda önemli olduğu bir dildir. Örneğin, değişken isimleri ve anahtar sözcükler arasında boşluk bırakmak gerekir. Ancak sayısal değerlerde boşluklar önemsizdir.
- Her satırın sonunda noktalı virgül veya nokta kullanmak gerekir.
- COBOL, başlıkları belirlemek için belli bir sıralamayı takip eder. Örneğin, "IDENTIFICATION DIVISION" bölümü her zaman en üstte yer alır ve "PROCEDURE DIVISION" bölümü her zaman en altta yer alır.
- COBOL, "PICTURE" kavramı ile veri tiplerini belirler. Bu kavramda, verinin uzunluğu ve türü belirtilir. Örneğin, "PIC X(10)" ifadesi, 10 karakter uzunluğunda bir metin veri tipini belirtir.
- COBOL, veri tipleri belirtirken, bazı durumlarda alanın boyutunu da belirlemek gerekir. Örneğin, bir "PIC X" ifadesi, yalnızca bir karakteri temsil ederken, "PIC X(10)" ifadesi, 10 karakter uzunluğunda bir metni temsil eder.

### Soru 3) Dilde malloc benzeri bir yapı mevcutmudur ?

- COBOL dilinde malloc gibi bir yapı bulunmaz. COBOL'da bellek yönetimi farklı şekilde yapılır. Bellek ayırma ve serbest bırakma işlemleri, programcı tarafından kodda tanımlanmaz, ancak işletim sistemi tarafından yönetilir.
- COBOL programları, bellek tahsisi için "WORKING-STORAGE" veya "LINKAGE" bölümlerinde değişkenler tanımlar. Bu değişkenler, programın çalışması sırasında bellek alanına yerleştirilir. Ayrıca, COBOL'da veri bölümleri tanımlanırken veri tiplerinin boyutu ve bellek hizalaması otomatik olarak işletim sistemi tarafından belirlenir.
- Bu nedenle, programcıların bellek ayırma veya serbest bırakma gibi işlemlerle ilgilenmeleri gerekmez. Ancak, COBOL programcıları bellek kullanımını optimize etmek için çalışma zamanı bellek tahsisi yöntemlerini öğrenebilir ve kullanabilirler.

## Yardımcı araçlar
Burada kullandığım yararlandığım kaynakların tamamını listeleyeceğim
- https://publibfp.dhe.ibm.com/epubs/pdf/igy6lr40.pdf
- https://www.tutorialspoint.com/cobol/index.htm
- ChatGPT çok yoğun şekilde kullanılmıştır.
