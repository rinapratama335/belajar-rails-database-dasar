# Membuat Form Edit

Oke kita akan buat fitur edit untuk data buku kita. Hal pertama yang kita buat adalah link untuk edit data. Kasih aja link sederhana seperti ini `<%= link_to 'Edit', edit_book_path(book) %>`. `edit_book_path(book)` merupakan url helper sedangkan parameter `book` adalah variabel perulangan untuk menampilkan data di index (sebenarnya kita bisa juga menulisnya menjadi `book.id`). Kemudian kita ambil data buku berdasarkan id yang kita pilih. Untuk itu kita tambah kode di method edit pada controller book :

```
def edit
  @book = Book.find(params[:id])
end
```

params id itu kita dapatkan dari url helper yang kita buat sebelumya.

Nah unutk menampilkan formnya kita bikin dah tu file edit.html.erb dengan isi file sama persis dengan file new.html.erb, tidak ada yang berbeda :

```
<%= form_for(@book) do |f| %>
  <%= f.label :title %><br />
  <%= f.text_field :title %><br />

  <%= f.label :description %><br />
  <%= f.text_area :description %><br />

  <%= f.label :page %><br />
  <%= f.text_field :page %><br />

  <%= f.label :price %><br />
  <%= f.text_field :price %><br />

  <%= f.submit 'Save' %>
<% end %>
```
