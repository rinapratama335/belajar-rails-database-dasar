# Memuat Custom Validation

Sejauh ini validasi yang kita buat sudah disediakan oleh Rails, tetapu adakalanya kita akan membutuhkan suatu validasi yang perlu kita sendiri yang membuatnya. Kita ambil contoh di tabel `books`, jika jumlah halaman lebih dari 300 maka harga minimalnya adalah 200.000, maka kita perlu membuat fungsi validasinya sendiri. Untuk itulah kita perlu membuat validasi custom yang mampu menghandle kasus tersebut.

```
def custom_validation
  if page >= 300
    if price < 200000
      errors.add(:price, 'Harga minimal 150000 jika jumlah halaman 300 atau lebih')
    end
  end
end
```

Dan untuk menggunakannya kita bisa panggil validasi custom tersebut dengan kode seperti ini :

```
validate :custom_validation
```

Perbedaan dalam pemanggilan validasi bawaan rails dan validasi custom ini adalah jika validasi bawaan cara pemanggilannya adalah dengan menggunakan `validates` sedangkan jika validasi custom menggunakan `validate`

kita bisa panggil melalui rails console :

```
b = Book.new
b.page = 400
b.price = 100000

b.valid?
false

b.errors.messages
{:price=>["Harga minimal 150000 jika jumlah halaman 300 atau lebih"]}
```
