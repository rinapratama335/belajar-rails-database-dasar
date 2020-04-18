# Membuat Session Login

Sejauh ini kita sudah berhasil membuat halaman login, namun kita masih belum menandai bahwa user yang bersangkutan sudah login.

Cara yang dapat kita lakukan adalah menyimpan suatu data (contohnya adalah id user yang login) ke suatu mekanisme yang disebut session. Session artinya kita menyimpan data yang dapat diakses dimana saja dari aplikasi kita. Untuk itu kita akan membuatnya :
Kita tambahkan kode `session[:user_id] = user.id` di method create pada saat berhasi login :

```
  .
  .
if user.authenticate(password)
  session[:user_id] = user.id
  redirect_to books_path, notice: 'Kamu berhasil login'
  .
  .
  .
```

Kita sudah menyimpan data user login ke dalam session dengan key `:user_id`, artinya kita bisa mengecek apakah user sudah login atau belum.

Kita akan buat method bernama `current_user` yang kita letakkan di `application_controller.rb`. Method ini digunakan untuk mengambil data user yang sedang login :

```
def current_user
  if session[:user_id]
    User.find(session[:user_id])
  else
    nil
  end
end
```

Sedangkan untuk memeriksa user sudah login atau belum kita bisa buat method tersendiri, untuk peletakannya masih sama dengan method `current_user` yaitu di `application_controller.rb` :

```
def user_signed_in?
  if current_user
    true
  else
    redirect_to new_session_path, notice: 'Silahkan login terlebih dahulu'
    return false
  end
end
```

Jika sudah tinggal kita aplikasikan. Kita akan mulai untuk mengetesnya di controller `books_controller.rb` :

```
before_action :user_signed_in?
```

Dengan menambahkan kode di atas artinya adalah sebelum method yang ada di controller books dijalankan terlebih dahulu akan dilakukan pengecekan user login
