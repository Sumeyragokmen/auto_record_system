# w3_homework

Merhaba,

3. hafta odevini bu zamana kadar neler ogrendiysek, onlarla yapabilirsiniz. Ancak `class` lari kullanamaniz zorunlu oldugunu belirtmek isterim. Odevi 9 Ekim Cuma saat 23:59'a kadar gondermeniz gerekiyor. Bu odevde sizden iki sey istiyorum. Birincisi bir RubyGem'i ve ikincisi ise bu RubyGem'i kullanan bir Ruby projesi.

Odev bi dosyadan olusmali. O dosya icinde bir RubyGem ve o RubyGem'ini kullanan bir Ruby projesi olmali. Ruby projesinin icinde ise istediginiz kadar dosya olabilir o sizin odevi nasil tasarladiginiza bagli ama ben kodu bilgisayarima indirdigim zaman sadece bir Ruby dosyasi calistirmak istiyorum. Yani demek istedigim `$ ruby homework.rb` calistiracagim ve projede neler istedimse yapmasini istiyorum. 

## Odev

### Araba Kayit Sistemi
#### Ekleme
```
$ ruby auto_record_system.rb
#=> Plaka:
# 34 AA 1010
#=> Model:
# OPEL
#=> Ad/Soyad:
# Kemalettin Tugcu
#=> 34 AA 1010 vehicle was added.
```

Burada alacaginiz bilgileri bir `yml` dosyasina yazmanizi istiyorum. Dosyanin icinde yazilacaklar su sekilde olmali

```
KEMALETTIN TUGCU - Istanbul - OPEL - 34 AA 1010
HASAN HUSEYINOGLU - Konya - MERCEDES - 42 AA 0101
JENIFER LOPEZ - ORDU - RENOAULT - 52 AB 4444
```

Dosyada olmasi gerekenler bunlar ama format bu sekilde olmasi gerekmiyor. Kisacasi dosyada isim soyisim, Il, Aracin modeli, Aracin plakasi olmali.

Plakayi alip, il bulmaniz icin bir RubyGem yazmaniz gerekiyor. Bu gem plakadaki il kodunu alacak ve il adini donecek. Siz de bunu Ruby projenizde kullacaksaniz. Plakalari ve illeri okumak icin `cities.json` dosyasini kullanabilirsiniz.

Bu projede bir takim validation'lar var. Onlar da su sekilde;

```
1. validation
  99KK001
    Plaka formati uygun degil. (01-81 arasinda giriniz) [Ekrana bu yazacak]
2. validation:
  Model:
    KAMIL
      Bulunmayan arac modeli. [Ekrana bu yazacak]
3. validation:
  Plaka:
    34 AA 
      Bu plakali arac var. [Ekrana bu yazacak]
```

Birinci validation'da plakanin ilk sayi girilen yeri 1 ile 81 arasinda olmali. Bunlarin disinda olursa validation mesaji gorulecek ve program kapanacak.
Ikinci validation'da projede olan `models.json` dosyasi icindeki modeller haric model girilirse validation mesaji donecek ve program kapanacak.
Ucuncu validation'da ise yazdigin `yml` dosyasindaki aracla ayni plakaya sahip arac girilemez olacak. Girilirse bu validation mesaji ekrana basacak ve program kapanacak.

#### Arama
Bir araci plakasi ile arabilmeliyiz. Eger arac listemizde yoksa uyari ekrani cikmali.
```
$ ruby auto_record.rb -s 34 AA 1010
#=> 34 AA 1010 plakali arac sistemde yok.

$ ruby auto_record.rb -s 34AA
#=> KEMALETTIN TUGCU - Istanbul - OPEL - 34 AA 1010
```

## Adim adim yapilacaklar
- Programi calistir.
- Yukaridaki gibi ciktilari gor.

## Dikkat edilecekler
- Custom bir RubyGem yazilmali.
- Ruby projesi icinde RubyGem kullanilmali.
- Class kullanilmali.
- Disaridan alinan veriler, bir dosyaya yazilmali ve bu dosya git'e gonderilmesine engel olunmali. Yani bir `.gitignore` dosyasi ile bu dosyanin gonderilmesi engellenmeli.
- Programiniz dosya_adi.rb seklinde olmali ve console'da ruby dosya_adi.rb diyince calismali. Calismayan programlarin neden calismadigina bakilmayacaktir.
- Bu zamana kadar gordugumuz tum konulari kullanabilirsiniz. Fazlasini istemiyorum.
- Kodun icine comment yazmayin. Eger kodunuz anlatamiyorsa yaptiginizi daha acik yazin kodunuzu.
- Turkce degiskenler vs kullanmayin.
- Kod okunabilirligi ve degisken adlari onemli. x = 5 gibi degisken adlarini lutfen kullanmayin.
- Ciktilar odevde yazdigi gibi olmali. Baska dilde ya da kendiniz degistirerek yazmayiniz.

## Son teslim
- Cuma gunu saat 23:59'dan sonra commit'lenen odevler gecersiz sayilacaktir. 
