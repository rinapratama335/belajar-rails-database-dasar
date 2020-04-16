# Membuat Form Tambah Data

Untuk membuat form tambah data kita akan membuat link untuk menuju ke page tambah data di index

```
<%= link_to 'Tambah Data', new_book_path %>
```

`new_book_path` tidak perlu dijelaskan lagi ya, di pembahasan sebelumnya juga udah ada kok penjelasannya asal muasal route help ini.

Kemudia di controller books kita buat methodnya,

```
def new
  @book = Book.new
end
```

`@book` di sini akan kita pakai di view new.

Di view new pada folder books kita buat deh form nya :

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

pada `form_-for(@book)`, variabel `@book` ini kita dapatkan dari method new pada controller books.
