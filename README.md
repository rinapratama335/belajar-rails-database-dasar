# Menampilkan Detail Data Dengan Method Show

Kita akan gunakan method `show` di controller books_controller.rb kita.

```
def show
  id = params[:id]
  @book = Book.find(id)
end
```

`params[:id]` ini kita dapatkan dari placeholder route kita saat kita membuat route dengan menggunakan resource (lihat route).

Sekedar tips aja, untuk melihat route apa saja yang sudah dibuat oleh resource ini kita dapat ketikkan `rake routes` di terminal ataupun lewat halaman web `localhost:3000/rails/info/routes`

Kamudian kita bisa buat file show.html.erb dan bisa kita tampilkan datanya,

```
Title : <%= @book.title %><br />
Description : <%= @book.description %><br />
Price : <%= @book.price %><br />
Page : <%= @book.page %>
```
