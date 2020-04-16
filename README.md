# Membuat Action Create

Untuk membuat action create, terlebih dahulu kita perlu mengetahui parameter apa saja yang harus kita ambil.
Cara untuk mengetahui parameternya adalah kita inspect aja params nya.

```
def create
  render plain: params.inspect
end
```

Dengan adanya kode render params di atas, maka ketika tombol save di-klik maka akan muncul param apa saja yang ada (params berupa hash). Parameternya antara lain adalah :
===> authenticity_token
===> book (di sini data dari form kita ditampung)
===> commit
===> controller
===> action

Bisa dilihat jika data yang kita kirim untuk di simpan ditangkap oleh parameter bernama `book`. Jadi saat kita ingin mengambil nilai parameternya kita sertakah juga has book ini, misal `title = params[:book][:title]`.

Dari situ kita bisa masukkan datanya di method create pada controller books :

```
title = params[:book][:title]
description = params[:book][:description]
price = params[:book][:price]
page = params[:book][:page]

book = Book.new(title: title, description: description, price: price, page: page)
book.save
puts book.errors.messages
redirect_to books_path
```

Di belakang layar sebenarnya saya sudah menonaktifkan `belongs_to` di model book. Itu dikarenakan kalau tidak dinonaktifkan maka akan menjadi error karena field author harus ada, sedangkan untuk CRUD di sini masih bersifat sederhana makanya saya nonaktifkan terlebih dahulu demi kelancaran kita.

`puts book.errors.messages` kita tulis untuk menampilkan error di console kita. Untuk `redirect_to books_path` di sini sepertinya sudah tau ya (route helper)
