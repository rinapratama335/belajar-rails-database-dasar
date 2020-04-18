# Validasi Menentukan Format Suatu Inputan (Menggunakan Regex)

Penggunaan format validation ini kita akan mengguakan Regex. Dan yang akan kita coba untuk validasi adalah title. Pura pura saja kalau title ini harus berupa email, jadi kita berikan validasi degan memanfaatkan reges yang mana jika inputannya bukan email maka akan tidak lolos validasi

```
validates :title, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}
```

```
b = Book.new
b.title = 'pemrograman berorientasi object'

b.valid?
false

b.errors.messages
{:title=>["is invalid"]}

b.title = 'amelkahandayani@yahoo.com'

b.valid?
true
```
