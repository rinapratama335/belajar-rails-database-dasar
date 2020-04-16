# Menhapus Data

Sebenarnya langkahnya tidak jauh beda dengan add maupun delete, pertama buat link dulu :

```
<%= link_to 'Delete', book_path(book), method: :delete, data: {confirm: 'Kamu yakin ingin menghapus data ini?'} %>
```

Yang jadi perbedaan adalah kita berikan method delete supaya rails tahu kalau ini adalah action delete. Kemudia kita tambahkan lagi halaman konfirmasi yang berisi pertanyaan apakah mau menghapus data atau tidak.

Kemudia kita buat deh action destroy di controller book :

```
def destroy
  @book = Book.find(params[:id])
  @book.destroy
  redirect_to books_path
end
```

Proses dari method di atas adalah kita terima dulu data yang akan didelete (`@book = Book.find(params[:id])`) kemudian kita lakukan penghapusan dengan method destroy (`@book.destroy`), lalu kita redirect ke halaman index.
