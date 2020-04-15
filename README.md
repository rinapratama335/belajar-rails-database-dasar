# Seed di Rails

Seed adalah kode yang kita buat yang bisa kita gunakan untuk mengisi tabel. tentunya kita tidak ingin dong mengisi data tabel secar manual satu persatu, apalagi memakai console. Pastinya hal seperti ini akan sangat memakan waktu. Dari pada seperti itu makanya Rails memberikan fitur seed ini, yang mana kita buat suatu kode dan kita cukup ekseskusi kode tersebut kemudian data tabel akan terisi.

File seed terletak di folder db, di sana terdapat file seed.rb dan di file itulah kita bisa membuat kode seed kita

```
Author.create(name: "Irwanto Wibowo", address: 'Gunungkidul, Yogyakarta', old: 28)
Author.create(name: "Rina Pratama", address: 'Gianyar, Bali', old: 25)
Author.create(name: "Andi Kurniawan", address: 'Pacitan, Jawa Timur', old: 23)
Author.create(name: "Wahyu Iswanto", address: 'Magelang, Jawa Tengah', old: 29)
Author.create(name: "Nurul Kharimah", address: 'Bandung, Jawa Barat', old: 22)
```

Lalu bagaimana caranya kita mengeksekusi seed ini?? Kita tinggal ketikkan perintah berikut di terminal kita `rake db:seed`
