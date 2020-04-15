# Membuat Smart Maigration

Smart migration di sini artinya kita bisa membuat migration via console.
contoh kita ingin membuat tabel authors yang memiliki field name, address dan age, kita bisa gunakan perintah berikut :
`rails g migration CreateAuthors name address:text age:integer`.

Rails secara otomatis akan membuat file migration seperti di bawah ini,

```
def change
  create_table :authors do |t|
    t.string :name
    t.text :address
    t.integer :age
  end
end
```
