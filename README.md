# Read Data (Console Rails) Dengan Find

Ada beberapa cara untuk menampilkan data dengan method find ini, yaitu `find` dan `find_by`

1.Dengan menggunakan find

```
book = Book.find 1
```

Dengan meggunakan method find ini kita bisa menampilkan data berdasarkan id. Lalu jika id yang kita cari tidak ada maka rails akan mengembalikan exception berupa record tidak ditemukan

2.Dengan menggunakan find_by
Dengan menggunakan method find_by ini parameternya berupa hash. Dengan find_by ini juga kita bisa menggunakan parameter sesuai dengan apa yang mau kita tampilkan, misal price, page atau apapun yang ingin kita jadikan parameter

```
book = Book.find_by(id: 1)
```

Lalu jika ada data yang sama? misal kita ada data page yang sama kemudia kita find_by. Untuk kasus ini rails akan menampilkan data yang pertama kali ditemukan. Artinya hanya satu data yang ditampilkan. Kalu mau semuanya bagaimana? Jawabannya gunakan `where`(akan kita bahas nanti)

Yang membedakan lagi dari find_by ini adalah apabila record yang dicari tidak ada maka nilai yang dilempar adalah `nil`
