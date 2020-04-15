# Berkenalan Dengan Rails Console

Bisa dikatakan rails console itu sama dengan irb. Hanya saja dengan menggunakan rails console maka kita akan mempunyai akses terhadap class class yang ada di aplikasi/project kita.

Untuk menjalankan rails console cukup ketikkan `rails c`. Jika sudah muncul maka kita bisa lakukan manipulasi data dari rails console.

Hal pertama yang perlu kita lakukan sebelum memanipulasi data di tabel kita adalah pertama tama kita harus membuat instance baru atau lebih dikenal membuat object baru dari class tabel tersebu. Misal :

`author = Author.new`
`book = Book.new`
