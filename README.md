# Menambah Data Dengan Menggunakan Rails Console

Kita akan menambahkan data baru ke dalam tabel books

```
rails c => masuk ke rails console

book = Book.new => membuat instace/object dari class Book

book.title = "title di sini"
book.price = <price di sini>
book.page = <page di sini>
book.description = "desctiption di sini"

book.save => menyimpan data objeck ke database

book.new_record? => memeriksa apakah object book sudah disimpan atau belum. true bila belum dan false bila sudah
book.persisted? => memeriksa apakah object book sudah disimpan atau belum. false bila belum dan true bila sudah
```

Sebenarnya kenapa kita bisa mengisi data dengan cara demikin ya?? jawabannya adalah pada saat kita membuat model / saat kita memiliki sebuah model maka secara otomatis Rails akan membuatkan attr_accessor untuk setiap properti yang kita punya (id, title, price, page, description). Jadi bisa dikatakan ketika kita akses `book.title` artinya sama aja dengan attr_read, dan `book.title="....."` adalah attr_write. Dan attr_read serta attr_write bisa digabungkan menjadi attr_accessor

Selain itu kita bisa juga langsung memasukkan data ke table dengan cara hash, jadi tidak harus satu satu. Caranya adalah seperti ini :

```
book = Book.new(title: "Pemrograman Python", price: 200_000, page: 250, description: "Mudah belajar bahasa pemrograman python dengan menggunakan buku sakti ini")

book.save
```

Satu lagi cara untuk menambahkan data ke table langsung dengan cara `create`

```
Book.create(title: "React JS on Rails", price: 175_000, page: 170, description: "Belajar library Javascript yang sedang naik daun dan dikolaborasikan ddengan framework Rails")
```

Dengan cara create ini nilai kembaliannya adalah object dari data yang berhasil disimpan. Jika 2 cara sebelumnya nilai kembalianya adalha true atau false
