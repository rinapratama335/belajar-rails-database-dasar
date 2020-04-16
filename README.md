# Membahas Tentang Resource Params

Apa sih resource params itu??
Reource params itu bisa kita katakan sebagai whitelist atau artinya memperbolehkan kita untuk mengambil nilai yang berasal dari form yang kita miliki.

Kita ambil contoh di controller books, di sana ada form tambah data dan memiliki nilai yang nantinya akankita masukkan ke database (title, description, dan lain lain).
Tentunya nati pada saat edit nilai ini juga akan dipakai dong? nah dari pada kita mendefinisikan itu di method cereate dan update, lebih baiknya kita bikin satu method yang menerima nilai itu semua dan dapat digunakan saat proses create maupun update.

Nah gimana cara buatnya??

Pertama kita buat method private dengan nama `resourcec_params`, ini diletakkan di bagain paling bawah ya. Kenapa emang? ya kalau kita letakkan di atas nanti kode yang lain akan ikut menjadi private, akibatnya ya tidak bisa kita akses dari luar kelas.

Kode yang kita pakai adalah seperti ini :

```
private
def resource_params
  params.require(:book).permit(:title, :description, :price, :page)
end
```

Udah tau kan `:book` didapat dari mana??? ini adalah parameter dari ActionController, cek aja kalau tidak percaya (`render plain: params.inspect`)

kemudian di method create kita bisa ubah kodenya menjadi seperti ini :

```
book = Book.new(resource_params)
book.save
puts book.errors.messages
redirect_to books_path
```
