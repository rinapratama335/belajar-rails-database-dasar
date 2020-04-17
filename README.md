# Validasi Presence

Kita akan bermain validasi di model book. Dan validasi pertama yang akan kita bahas adalah `presence`. Apa itu validasi presence?
validasi ini akan mengembalikan error apabila field yang divalidasi tidak diisi. Contohnya adalah seperi ini :

Kita letakkan kode berikut ini di mode book.rb :

```
validates :title, presence: true
validates :description, presence: true
```

Kode di atas mengharuskan bahwa title dan description harus diisi, jika dikosongkan maka akan mengembalikan nilai `false`.

Bisa kita coba melalui rails console :

```
b = Book.new

b.title = nil

b.save
false

b.errors
#<ActiveModel::Errors:0x0000000007494ec0 @base=#<Book id: nil, title: nil, price: nil, page: 0, description: nil, created_at: nil, updated_at: nil, author_id: nil>, @messages={:title=>["can't be blank"], :description=>["can't be blank"]}, @details={:title=>[{:error=>:blank}], :description=>[{:error=>:blank}]}>

b.errors.messages
{:title=>["can't be blank"], :description=>["can't be blank"]}

b.errors.messages[:title]
["can't be blank"]

b.errors.messages[:description]
["can't be blank"]
```

Pada pesan kesalahan di sini :

```
b.errors.messages[:description]
["can't be blank"]
```

data yang dikembalikan dalam bentuk array, kenapa array? karena dalam stau pesan kesalahan ini bisa saja validasinya lebih dari satu.
Bisa kita keluarkan datanya dengan menggunakan perintah:

```
b.errors.messages[:description].first
"can't be blank"
```
