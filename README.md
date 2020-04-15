# Custom Method

Kita akan belajar membuat method baru di dalam kelas ActiveRecord yang kita punya untuk kebutuhan yang sangat spesifik. Misalkan saja kita mau mencari buku yang dikateforikan sebagai buku yang mahal. Buku yang mahal ini adalah buku dengan harga di atas 200.000.

Untuk itu kita buak method baru di class Book (file book.rb di folder model). Kita buat class method (class method adalah class yang ditandai dengan `self`)

```
def self.expensive
  where('price > 200000')
end
```

Kemudian kita bisa panggil method ini melalui rails console dengan cara `Book.expensive`

Atau kita bisa memberi parameter pada method custom yang dibuat dan diisi saat mengakses method melalui console

```
def self.price_equal_more(price)
  where('price >= ?', price)
end
```

Kemudian kita bisa akses `Book.price_equal_more(300000).pluck(:title, :price)`
