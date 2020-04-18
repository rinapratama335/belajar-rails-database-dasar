# Menampilkan Pesan Kesalahan Di Halaman Web

Jika validation sebelumnya kita hanya menampilkan pesan kesalahan di sisi console saja, maka kali ini kira akan menampilkan pesan kesalahan di halaman web.

1. Kita buat validation yang akan memvalidasi inputan (model book)

```
validates :title, presence: true
validates :description, presence: true, length: {minimum: 10}
validates :page, numericality: true
validates :price, numericality: true
```

2. Kemudian kita perbaiki kode di controller book,

```
def create
  @book = Book.new(resource_params)
  if @book.save
    puts @book.errors.messages
    flash[:notice] = 'Berhasil menambahkan data'
    redirect_to books_path
  else
    render 'new'
  end
end
```

Perbaikan pertama adalah kita buat perkonsisian pada saat if berhasi dan pada saat gagal menympan akan me-render view `new`. Kita ketahui view `new` ini memanggil view partian `_form` yang mana di view partial tersebut menggunakan instance variabel yaitu `@book`.

Maka perbaikan kedua adalah merubah yang variabel loka `book` menjadi instance variabel `@book` sehingga tidak terjadi kesalaha yang mana variabel `book` tidak dikenali.

3. Di view partial `_form` kita cek apakah ada error atau tidak, jika ada maka tampilkan errornya

```
<% if @book.errors.any? %>
  <% @book.errors.full_messages.each do |msg| %>
    <div>
      <%= msg %>
    </div>
  <% end %>
<% end %>
```

Untuk kodenya sendiri saya letakkan di atas, sehingga ketika error maka akan tampil di atas semua. Untuk memunculkan error di setiap form maka akan kita bahas pada pembahasan tersendiri.
