# Action Update Data

Form edit udah terbentuk, dan saatnya kita membuat action untuk mengupdate data yang dikirim oelh form edit.
Kita tambahkan kode berikut di method update :

```
def update
  @book = Book.find(params[:id])
  @book.update(resource_params)
  redirect_to book_path(@book)
end
```

Pertama kita tangkap terlebih dahulu data yang akan diupdate dengan find berdasarkan id yang diedit. Kemudian kita update datanya dengan menangkap parameter yang dikirim dari form dengan menggunkan resource_params, mirip dengan create. Lalu kita redirect ke halaman detail data `book_path(@book)`
