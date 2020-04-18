# Menampilkan Pesan Kesalahan Masing Masing Form Field

Kita telah berhasil menampilkan pesan kesalahan saat adanya validasi, namun yang masih menjadi kekurangan adalah pesan kesalahan tersebut masih menjadi satu (dalam kasus sebelumnya pesan kesalahan di atas semua). Nah gimana cara biar pesan kesalah ini muncul di setiap field form??

Salah satu caranya adalah kita tinggal modifikasi saja do form view partialnya.

```
<%= form_for(@book) do |f| %>
  <%= f.label :title %><br />
  <% if @book.errors.any? %>
    <%= @book.errors[:title].first %>
  <% end %>
  <%= f.text_field :title %><br />

  <%= f.label :description %><br />
  <% if @book.errors.any? %>
    <%= @book.errors[:description].first %>
  <% end %>
  <%= f.text_area :description %><br />

  <%= f.label :page %><br />
  <% if @book.errors.any? %>
    <%= @book.errors[:page].first %>
  <% end %>
  <%= f.text_field :page %><br />

  <%= f.label :price %><br />
  <% if @book.errors.any? %>
    <%= @book.errors[:price].first %>
  <% end %>
  <%= f.text_field :price %><br />

  <%= f.submit 'Save' %>
```
