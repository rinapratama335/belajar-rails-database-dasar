# Relasi One To One

Buat terlebih dahulu tabel yang akan kita gunakan, bisa dengan cara generate migration.

`rails g migration create_users name username`

`rails g migration create_dompet balance:integer user_id:integer`

Yang perlu jadi perhatian adalah saat kita ingin membuat foreign_key dari tabel dompet ke tabel users. Foreign key dari model dompet ke users dapat kita lakukan dengan menghubungkan user id di tabel user ke tabel dompet. untuk penulisanna sendiri menggunakan nama singular dan denga tambahan id karena mengacu ke primary key di tabel users yaitu id. Itulah kenapa namanya ditulis menjadi `user_id`.

Lalu jalankan migrasinya, `rake db:migrate`. Hasilnya akan ada dua tabel yaitu users dan dompets. Kok namanya bisa dompets? kan kita bikinnya dompet? Jawabannya adalah ternyata rails itu pintarnya melebihi ekspektasi saya (penulis). Ternyata dari rails tabelnya akan dijamakkan sehingga terciptalah `dompets`

Kemudian kita buat model user dan model dompet dan kita hubungkan model user dan dompet.

```
class User < ApplicationRecord
  has_one :dompet
end
```

Ini bisa dibaca bahwa user memiliki satu dompet. `:dompet` ini mengacu ke nama kelas, hanya saja menggunakan huruf kecil semua

```
class Dompet < ApplicationRecord
  belongs_to :user
end
```

Dan ini bisa kita baca dompet dimiliki oleh user. `:user` ini mengacu ke nama kelas, hanya saja menggunakan huruf kecil semua

###Menampilkan data yang berelasi
Untuk menampilkan data yang sudah berelasi maka caranya mudah sekali. Rails itu mudah kawan............

```
user = User.first
user.dompet.balance
```

Perintah di atas cukup untuk menampilkan data balace yang ada di tabel dompet. Kok ujug-ujug ada user dan dompet sih?? Ya itulah kelebihan rails, saat kita menghubungkan tabel dengan mendefinisikan has_one dan belongs_to maka secara otomatis user dan dompet akan dibuat oleh rails.

```
dompet = Dompet.first
dompet.user.name
```

Lalu `first` apa? nah ketika kita ketikkan User.first maka rail akan menampilkan data pertama di tabel.

Hal di atas tentunya menjadi suatu kemudahan kita dalam mengakses data, dari pada kita melakukannya secara manual seperti ini

```
user = User.first
id = user.id
dompet = Dompet.find_by(user_id: id)
dompet.balance
```

lebih mudah dengan cara yang rails kasih kan?? rails is so beautiful lhoooo
