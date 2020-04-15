# Read Data All dan Count

Untuk mendapatkan keseluruhan data yang ada di suatu tabel kita bisa gunakan method `all`.

```
book = Book.all
```

maka rails akan mengembalikan data berupa collection (bahasa kerennya array). Karena berbentuk array maka bisa kita lakukan each seperti berikut

```
book = Book.All
book.each do |b|
  puts b.title
  puts b.description
  puts b.page
  puts "==============="
```

Untuk method `count` sendiri digunakan untuk mengetahui jumlah record yang ada di table tersebut. Misal `Book.count` akan mengembalikan jumlah data dalam tabel books.
