# View Partial Lanjutan

Bahasan kali ini masih pada view partial. Apa yang mau kita bahas??

Jadi gini, kita dapat melewatkan data pada view partial ini, misal kita akan menampilkan data buku yang populer dan data ini akan kita tampilkan di halaman index.html.erb (untuk posisinya kita letakkan di bawah aja ya!). Untuk itu kita tambahkan kode berikut di file index.html.erb :

```
<%= render 'info', popular_book: 'Ruby on Rails' %>
```

Jika sudah mempelajari tentang view partian maka bisa dibaca jika kode di atas me-render view `_info.html.erb` dan kita memberikan variabel dengan isi 'Ruby on Rails' yang akan ditampilkan.

Kemudian kita bisa membuat view partial dengan nama `_info.html.erb` dan kita beri kode berikut :

```
<h2>Popular Book</h2>

- <%= popular_book %>
```

Variabel `popular_book` diatas didapatkan saat kita memanggil view partial dan memberi sebuah data yang ditampung dalam variabel bernama popular_book.

Sebenanrnya isi dari variabel tersebut tidak harus statis, bisa saja data tile atau data dinamis lainnya, sehingga bisa ditulis seperti ini :

```
<%= render 'info', popular_book: @book.title %>
```
