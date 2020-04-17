# Partial (Template Partial)

Jika kita lihat pad views baik itu books maupun author terdapat kode yang sama persis yaitu pada template `new.html.erb` dan `edit.html.erb`. Sebenarnya kita dapat me-reuse itu dalam satu file kemudia kita panggil (include) file tersebut ke dalam new maupun edit. Hal ini dinamakan dengan `partial`.

Untuk membuat template partial kita buat nama file yang diawali dengan underscore(`_`). Misal kita akan membuat partial template pada form `book`. Kita buat file dengan nama `_form.html.erb` :

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

kemudian kita tinggal panggil file partial di atas pada template `new.html.erb` dan `edit.html.erb` dengan memanggil nama file tanpa underscore. Jadi kita tinggal panggil `form` aja menjadi :

```
<%= render 'form' %>
```
