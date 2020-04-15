# Update Data (Console Rails)

Hal pertama yang harus kita lakukan sebelum mengubah data adalah mengambil data yang mau diubah di dtabase. Kita dapat menggunakan perintah `find` untuk mengambilnya. Misal kita akan mengambil data tabel book dengan id 1. Kita bisa manfaatkan kelas active record di model kita.

```
book = Book.find(1)
```

Hasilnya adalah object data yang kita pilih berdasarkan id yang kita masukkan. Dari hasil ini bisa kita update datanya.

Ada 2 cara untuk mengubah data yang bisa kita lakukan, yaitu dengan menggunakan attr_accessor dan kedua menggunakan method update.

1.Menggunakan attr_accessor

```
book = Book.find(1)
book.title = "Title di sini"
book.price = 100_000

book.save
```

2.Menggunakan method update

```
book = Book.find(3)
book.update(page: 200, description: "Description di sini")
```
