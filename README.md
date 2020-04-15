# Menampilkan Data Dengan Menggunakan Order

Method Order ini kita gunakan untuk mengurutkan data,

`Book.order(price: :desc)` => menampilkan data berdasarkan harga (descending)
`Book.order(price: :desc).pluck(:price)` => Menampilkan data harga yang diurutkan dari harga (descending)
`Book.order(price: :desc).pluck(:title, :price)` => Menampilkan data title dan harga yang diurutkan dari harga (descending)
`Book.order(title: :asc).pluck(:title)` => Menampilkan data title yang diurutkan sesuat abjad title (ascending)

Di sini kita berkenalan dengan method `pluck`. Method pluck ini kita gunakan untuk mengambil data apa saja yang mau kita tampilkan, misal title saja `pluck(:title)`, halaman saja `pluck(:page)`, dan sebagainya.
