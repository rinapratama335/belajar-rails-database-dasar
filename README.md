# Intro CRUD

Yang akan kita pakai di sini adalah opersi CRUD di tabel books.

Karena ini melibatkan controller maka kita buat terlebih dahulu controller nya, gunakna nama sesuai dengan nama table diikut `_controller`. Karena tabel kita namanya `books` maka controllernya kita namakan dengan `books_controller.rb`.

```
class BooksController < ApplicationController
end
```

Kemudian kita perlu membuat method untuk proses CRUD kita nanti. Method tersebut adalah seperti ini :

new ==> menampilkan form input data
create ==> menyimpan data dari form new
edit ==> menampilkan form edit
update ==> meyimpan perubahan dari form edit
destroy ==> menhapus data
index ==> menampilkan semua data
show ==> menampilkan detail data

Selain itu kita juga harus mendefinisikan route untuk pengaksesan method di controller. Kali ini kita akan berkenalan dengan magic route yang bernama `resources`. Kode yang dipakai adalah seperti di bawah ini :
file routes berada di folder config

```
resources :books
```

Dengan menggunakan kode di atas secara ajaib rails akan membuat route untuk ketujuh method yang kita definisika di controller books tersebut.
bisa kita cek degan menggunakan perintah `rake routes`, dan akan terlihat data seperti di bawah ini :

```
Prefix    Verb   URI Pattern                         Controller#Action
 books    GET     /books(.:format)                   books#index
          POST    /books(.:format)                   books#create
new_book  GET     /books/new(.:format)               books#new
edit_book GET     /books/:id/edit(.:format)          books#edit
book      GET     /books/:id(.:format)               books#show
          PATCH   /books/:id(.:format)               books#update
          PUT     /books/:id(.:format)               books#update
          DELETE  /books/:id(.:format)               books#destroy
```
