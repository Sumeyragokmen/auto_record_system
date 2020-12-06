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

```
KEMALETTIN TUGCU - Istanbul - OPEL - 34 AA 1010
HASAN HUSEYINOGLU - Konya - MERCEDES - 42 AA 0101
JENIFER LOPEZ - ORDU - RENOAULT - 52 AB 4444
```

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

#### Arama
```
$ ruby auto_record.rb -s 34 AA 1010
#=> 34 AA 1010 plakali arac sistemde yok.

$ ruby auto_record.rb -s 34AA
#=> KEMALETTIN TUGCU - Istanbul - OPEL - 34 AA 1010
```
