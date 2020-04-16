# Index Action (Menampilkan Semua Data Di Tabel Buku)

Untuk menampilkan semua data dari suatu tabel maka kita bisa gunakan method index. Contoh di sini kita menggunakan tabel `books` ya.

```
def index
  # menampilkan semua data
  @books = Book.all
end
```

Di sini kita bikin instance variabel bernama `@books` yang nantinya akan kita pakai sebagai perulangan di file books/index.html.erb

```
<% @books.each do |book| %>
<tr>
  <td><%= book.title %></td>
  <td><%= book.description %></td>
</tr>
<% end %>
```
