# Logout

Logout intinya adalah menghancurkan session yang ada, jadi di dalam controller session kita buat sebuha method untuk menghapus sessions :

```
def destroy
  session[:user_id] = nil
  redirect_to new_session_path, notice: 'Kamu berhasil logout'
end
```

Tidak lupa juga di resource parameter di route kita tambahkan untuk method destroy juga :

```
resources :sessions, only: [:new, :create, :destroy]
```

Kemudian kita buat sebuah link untuk logout. Link ini akan muncul apabila user sudah login. Kita kita buat perkondisina di application layout untuk memunculkan link logout-nya :

```
<% if current_user %>
  <div>
    Halo <%= current_user.name %>
    <%= link_to 'Logout', session_path(current_user), method: :destroy %>
  </div>
<% else %>
  Silahkan login terlebih dahulu
<% end %>
```

Kode di atas akan memunculkan link logout jika user sudah login. Nah bagaimana caranya kita tau user itu sudah login? jawabannya adalah dengan memanggil method `current_user` yang ada di application controller.

##ini ilmu baru
Nah `current_user` ini sebenarnya adalah method yang hanya bisa diakses oleh application controller saja, tidak bisa diakses di view. Tapi kok ini bisa diakses ya?? jawabannya adalah kita mendaftarkan method `current_user` ini ke dalah `helper_method` di application controller.

```
helper_method :current_user
```

##ini ilmu baru
