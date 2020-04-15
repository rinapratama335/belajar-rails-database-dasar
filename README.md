# Menampilkan Data Dengan Menggunakan Where

Jika menggunakan method find_by kita hanya bisa menampilkan satu data yang jumlahnyas sama, maka dengan menggunakan where kita bisa mendapatkan semua data meskipun nilainya sama.

```
book = Book.where(page: 300)
```

Walaupun hasilnya hanya satu data saja namun nilai yang dikembalikan adalah ActiveRecord::Relation, jadi untuk mengakses detail datanya kita harus menggunkana perulangan, misalkan `each`

```
book = Book.where(page: 300)
book.each do |b|
  puts b.title
end
```

Whre ini juga bisa kita kombinasikan, misalnya

`Book.where(price: 400000).where(page: 300)` => akan menampilkan data dengan price = 400000 dan page = 300
`Book.where.not(price: 400000)` => akan menampilkan data dengan harga yang bukan 400000
`Book.where('price = ? or price = ?', 250000, 400000)` => menampilkan data dengan harga 250000 atau 400000
