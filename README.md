# Membuat Halaman Register User

Nah saatnya kita membuat tampilan halaman web untuk register user.

Yang pertama kita lakukan adalah membuat controller dengan nama `session_controller.rb`. Hal ini digunakan untuk login (akan dibahas nanti).

Yang kedua kita buat controller dengan nama `accounts_controller.rb`, isinya adalah method `new` untuk menampilkan form register dan method `create` untuk menyimpan data

Kemudia di config routes.rb kita tambahkan resource parameter untuk accounts yang hanya untuk method new dan method create saja. Jadi kodenya adalah seperti di bawah ini :

```
resources :accounts, only: [:new, :create]
```

Nah di view untuk form new ini ada sedikit perbedaan,

```
<%= form_for @user, url: accounts_path do |f| %>
  ....
  ....
  ....
<% end %>
```

ada sedikit perbedaan karena kita menambahkan `url: accounts_path`, kira kira kenapa??? karena jika hanya `@users` saja maka form akan mengirim ke controller users (karena `@users` akan mengirim ke users_controrller), makanya kita tambahkan secara manual kalau dia akan mengirim parameter `@user` ini ke controller accounts.

Jika sudah tinggal kita simpan aja :

```
def new
  @user = User.new
end

def create
  # render plain: params.inspect

  @user = User.new(resource_params)
  @user.save
  redirect_to new_account_path
end

private
def resource_params
  params.require(:user).permit(:name, :username, :password)
end
```
