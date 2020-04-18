# Fitur has_secure_password Untuk Keamanan Login

Sekarang kita masuk ke pembahasa login dan logout user. Dan fitur yang akan kita gunakan adalah fitur bawaan dari rails yaitu `bcrypt`. Apa fungsi dari gem `bcrypt` ini?? jadi gini, password yang nanti dimasukkan user akan disimpan ke dalam database tidak dalam bentuk plain text (supaya lebih aman), perlu adanya suatu method untuk mengenkripsi password tersebut. Dan tugas dari `bcrypt` ini adalah untuk mengenkripsi password dan akan dimasukkan ke dalam kolom tabel bernama `password_degest`, penamaan kolom password ini sangatlah penting ya.

Jd langkah pertama kita aktifkan gem `bcrypt` di file Gemfile, kemudian kita install dengan perintah `bundle install`

Kemudian kita buat migrationnya, karena di project ini sudah ada tabel `users` maka kita tinggal tambahkan kolom `password_degest` saja,

```
rails g migration add_password_degest_to_users password_degest
```

kemudian jalankan migrasinya, `rake db:migrate`.

Oke kita sudah memiliki tabel user yang memiliki kolom password_degest, sekarang tinggal kita terapkan deh di project.

Kita masuk ke model user.rb kemudian tambahkan kode berikut :

```
has_secure_password
```

Dengan menambahakan kode `has_secure_password` maka kita memiliki keuntungan, di antaranya :

1. Di belakang layar kita memiliki sebuah attribut dengan nama `password`
2. Kita juga memiliki attribut `password_confirmation`
3. Kedua attribut di atas sudah memiliki validator `presence`
4. Memiliki method bernama `authenticate` untuk mengecek apakah user dengan password tertentu ada atau tidak, ini digunakan untuk fitur login

Kita bisa memeriksanya melalui rails console :

```
user = User.new
user.name = "Joko Mulyadi"
user.username = "jokomulyadi"
user.password = "jokomulyadi"

user
#<User id: nil, name: "Joko Mulyadi", username: "jokomulyadi", password_digest: [FILTERED]>

user.save
User Create (0.9ms)  INSERT INTO `users` (`name`, `username`, `password_digest`) VALUES ('Joko Mulyadi', 'jokomulyadi', '$2a$12$1gO.hH72B3K7LdNOUt66oukKptakl9xBJo5FrTZLNOrVxfBw5hBv2')
  (2.5ms)  COMMIT
=> true


user.authenticate('salah')
false

user.authenticate('jokomulyadi')
#<User id: 4, name: "Joko Mulyadi", username: "jokomulyadi", password_digest: [FILTERED]>
```

Melalui rails console di atas kita bisa ketahui jika kita sudah berhasil membuat fitur untuk register serta login (menggunakan authenticate)
