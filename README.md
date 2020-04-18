# Membuat Custom Error Message

Jika kita perhatikan lagi pesan error yang muncul adalah pesan default dari rails dan berbahasa inggris. Sebenarnya kita bisa menkostumisasi pesan yang tampil menjadi sesuai dengan yang kita inginkan. Hal yang bisa kita lakukan adalah kita bisa meng-custom validates di model menjadi seperti ini?

```
validates :title, presence: {presence: true, message: 'Field harus diisi'}
validates :description, presence: {message: 'Field harus diisi'}, length: {minimum: 10, message: 'Minimal adalah 10 karakter'}
validates :page, numericality: {message: 'Harus berupa angka'}
validates :price, numericality: {message: 'Harus berupa angka'}
```

Bukankah sebelumnya ada nilai true di validasi `presence`? Lalu kemana hilangnya? Begini, ketika membuat custom message di validasi bertipe `presence` maka otomatis dianggap true juga. Sebenarnya bisa saja kita menulisnya menjadi seperti ini `presence: {presence: true, message: 'Field harus diisi'}`, tetapi karena sudah dianggap `true` maka tidak perlu ditulis
