# Migration Add Kolom

Pembelajaran kali ini kita akan menambahkan kilom di tabel 'authors' kita. yang akan kita tambahkan adalah kolom creted_at dan updated_at yang bertipe datetime.

Dengan menggunakan console kita bisa ketikkan perinta `rails g migration AddTimestampsToAuthors created_at:datetime updated_at:datetime`

Begitu dijalankan maka rails akan membuat sebuah file migrasi, yang berisi :

```
def change
  add_column :authors, :created_at, :datetime
  add_column :authors, :updated_at, :datetime
end
```
