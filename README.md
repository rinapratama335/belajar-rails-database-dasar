# Penjelasan Tentang Layout

Secara default layout yang kita gunakan adalah `application.html.erb`. Maksudnya bagaimana tuh?
Jadi gini, di rails setial kita membuat layout/tampilan halaman web maka akan di-load di dalam `application.html.erb`. Tampilan ini akan diload di bagian `<%= yield %>`. Jika masih ragu maka coba tambahkan apa saja yang akan menjadi tanda, misal saja kita tambahkan heading : `<h2>Belajar Ruby On Rails</h2>` maka setiap kita membuat tampilan halaman web baik itu book ataupun author maka tag heading tersebut akan muncul.

Jadi bisakan kita menonaktifkan layout ini? jawabannya adalah bisa. Misal kita ingin menonaktifkan layout default ini di halamn book (baik itu index, new, edit, maupun show) maka di controller book kita bisa tambahkan kode berikut ini di :

```
layout :false
```

Kita bisa juga menghilangkan layout ini di bagian tertentu saja. Maksudnya dalah begini, misalkan kita ingin layout default ini tidak ditampilkan di halaman show edit tetapi bisa ditampilkan di halaman index. Maka kita hanya perlu menonaktifkan default layout ini pada method show dan edit dengan menambahkan kode berikut :

```
render layout: false
```

Kemudian bagaimana jika kita ingin memakai layout yang lain?? Misal nih kita ada layout dengan nama `admin.htm.erb`.
Untuk menggunakannya kita tinggal panggil layout-nya di controller dengan cara menambahkan kode seperti ini :

```
layout 'admin'
```

Yang perlu kita tahu adalah saat kita menggunakan layout seperti di atas maka dia akan menimpa default layout. Dan hanya satu layout saja yang jadi default, jadi kalau ada dua kita definisikan misal `layout 'admin'` dan `layout 'percobaan'` maka yang paling bawah yang akan dipakai
