# Membuat Halaman Login

Sebelumnya kita sudah berhasil membuat halaman register, dan sekarang kita akan membuat halaman login user. Kita akan memanfaatkan controller session yang sebelumnya sudah kita buat. Namun karena aturan penamaan controller itu jamak maka kita ubah namanya menjadi `sessions_controller`.

Kemudian kita buat view untuk menampilkan halaman login. View ini disimpan pada folder `sessions` dengan nama `new.html.erb`. Untuk isinya adalah sebagai berikut :

```
<%= form_tag :sessions, action: :create do %>
  <div>
    <%= label_tag :username %>
  </div>
  <div>
    <%= text_field :username %>
  </div>

  <div>
    <%= label_tag :password %>
  </div>
  <div>
    <%= password_field :password %>
  </div>
  <div>
    <%= submit_tag "Login" %>
  </div>
<% end %>
```

Jika dilihat ternyata terdapat perbedaan tetang pembuatan form ini. Jika sebelumnya menggunakan `form_for` tapi kok ini menggunakan `form_tag`??

`form_for` digunakan untuk form yang ada modelnya, sedangkan `from_tag` digunakan untuk form yang tidak ada modelnya, contohnya adalah form login ini. Karena tidak membutuhkan model makanya kita pakai `form_tag`.
`:sessions` menunjukkan kalu kita kana mengolah form login ini di controller session, sedangkan `action: :create` adalah method yang akan mengolah adalah action create.

Tidak lupa kita membuat route untuk login ini :

```
resources :sessions, only: [:new, :create]
```

Lalu kita akan menangkap datanya di controller sessions pada method create. Karena tidak memiliki model maka kita bisa ambil datanya secara langsung tanpa harus mendefinisikan new (misal saja `@login = Login.new`), tinggal akses langsung dan kita proses :

```
username = params[:username]
password = params[:password]

user = User.find_by(username: username)
if user
  if user.authenticate(password)
    redirect_to books_path, notice: 'Kamu berhasil login'
  else
    redirect_to new_session_path, notice: 'Username / Password Salah'
  end
else
  redirect_to new_session_path, notice: 'Username / Password Salah'
end
```

Kode di atas membuat sebiah notifikasi jika berhasil login maupun gagal login. Untuk memunculkan notifikasi ini kita akan memberikannya di application layout. Jadi setiap notifikasi akan selalu muncul karena kita render di application layout. Kita akan meletakkan kode ini di atas `yield` :

```
<% if flash[:notice].present? %>
  <%= flash[:notice] %>
<% end %><br />
<%= yield %>
```
