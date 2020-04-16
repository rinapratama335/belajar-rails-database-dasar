# Relasi One To Many

Kita akan memanfaatkan tabel books dan authors, di mana ceritanya adalah author dapat menulis banyak buku sedangkan satu buku hanya bisa ditulis oleh satu author saja.

kemudian di mana kita meletakkan reference id nya?? untuk relasi one to many ini foregn keynya kita letakkan di bagian yana bersifat banyak yaitu books. Untuk itu kita perlu menambahkan satu field di tabel book dengan nama `author_id`.

```
rails g migration add_author_id_to_books author_id:integer
```

kemudian jalankan migrtaionnya.

Untuk menghubungkan tabel books dan author ini kita perlu definisikan relationnya di fole model book.rb dan author.rb
pada model author.rb kita tambahkan kode berikut `has_many :books`. Kenapa `:books`? bukankah pada relasi sebelumnya hanya singular ya?? singular itu jika kita hanya punya satu (one). Namun berhubung author ini punya banyak book (many) maka dari itu class yang mereferensi juga dibikin jamak.

sedangkan di file model book.rb kita tambahkan kode `belongs_to :author`.

Sejauh ini kita berhasil membuat relasi namun belum bisa menampilkan hasil relasinya karena di tabel books author_id nya belum terisi apa apa.
Kita bisa lakukan cara berikut ini untuk mengisi author_id nya.

```
pengarang = Author.first  ==> mengambil object pengarang pertama
book = Book.first         ==> mengambil objeck buku pertama
book.author = pengarang   ==> mengisi author_id dengan data pengarang
book                      ==> hasilnya data author_id akan terisi dengan data pengarang yang kita akses
book.save                 ==> menyimpan ke database
```

Kita juga bisa menambahkan data baru dengan memasaukkan langsung data author-nya.

```
book = Book.new
book.title = "OOP PHP Fundamental"
book.price = 185_000
book.page = 150
book.description = "Buku yang sangat direkomendasikan jika ingin memahami fundamental OOP menggunakan bahasa pemrograman PHP"
book.author = Author.find(5)
book
book.save
```

Katakanlah data author_id di tabel books sudah terisi, tinggal kita tampilkan data author pernah nulis buku apa saja nih.
caranya adalah sebagai berikut

```
author = Author.first
author.books.pluck(:title)
```

Mudah kan? mudah dong??
pada kode `author.books`, `books` ini kita dapatkan dari mana? jawabannya adalah saat kita mendefinisikan relation di model author (`has_many :books`).
Sedangkan pluck udah tau lah ya apa kegunaannya!
