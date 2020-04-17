# Validasi Length

Validasi length ini adalah berupa angka, dan ada beberapa jenis dari validasi length ini. Mari kita bahas

1. minimum
   Digunakan untuk menentukan nilai minimum suatu inputan. Misal

```
validates :description, length: {minimum: 10}
```

2. maximum
   Digunakan untuk menentukan nilai maksimal suatu inputan. Misal

```
validates :description, length: {maximum: 10}
```

3. in
   Digunakan untuk menantukan jumlah karakter yang dimasukkan antara minimal dan maksimal. Misal

```
validates :description, length: {in: 10..35}
```

ini berari inputannya antara minimal 10 dan maksimal 35 karakter

4. is
   Digunakan untuk menentukan jumlah inputan harus pas sesuai yang didefinisikan

```
validates :description, length: {is: 5}
```

Maka inputannya harus pas yaitu 5, selain itu akan salah

Selain itu kita juga bisa menjalankan validationnya tanpa menyimpannya terlebih dahulu, caranya adalah dengan menggunakan method `valid?`. Misal

```
book = Book.new
book.description = "ini description"
book.valid?
false
book.errors.messages
```
