# Delete Data (Console Rails)

Untuk menghapus data hal yang perlu kita lakukan kurang lebih sama dengan update, kita ambil terlebih dahulu data yang ingin dihapus dengan menggunakan method find kemudian baru kita hapus.

```
book = Book.find(2)
book.destroy
```

balikan dari destroy ini adalah object yang sudah kita hapus itu sendiri, sehingga kita masih bisa mengaksesnya, misal `book.title` maka data title masih akan tampil namun kita tidak akan bisa mengupdate datanya (hanya bisa membaca saja).
