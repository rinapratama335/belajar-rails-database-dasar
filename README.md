# Membuat Link Untuk Action

Contoh pembuatan Link Action kali ini adalah dengan membuat link untuk detail data (show). Apa yang harus kita lakukan??
Jawabannya adalah dita buat satu link di file index untuk menampilkan detail data :

```
<td>
  <%= link_to 'Detail', book_path(book) %>
</td>
```

Bukankah harus diarahkan ke controller mana dan action mana git ya??? Jawabannya benar sekali, namun ada satu kelebihan yang kita dapatkan saat kita membuat resource route, yaitu kita dapat url helper. Jika masih belum paham silahkan cek dengan menggunakan console `rake routes` atau cek di `localhost:3000/rails/info/routes`. `book_path(book)` dengan type get ini menunjukkan kalau url ini diarahkan ke controller books dengan action show. Karena dibutuhkan id sebagai parameternya maka disertakanlah parameter book. `book` di sini adalah variabel yang kita buat saat get data di tabel books. Sebenarnya bisa juga kita isi dengan detailnya yaitu `book.id`, namun `book` aja udah cukup
