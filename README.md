# Membuat Migrtion

perintah yang digunakan `rails g migration <NamaMigration>`, contoh `rails g migration BelajarMigration`.
maka rails akan membuat file migration di folder db/migrate.

yang perlu diperhatikan yaitu aturan dari rails saat membuat tabel adalah dengan bentuk jamak. Misalh nih mau bikin tabel dengan nama 'book' maka di rails menggunakan nama 'books'. Dan lebih baiknya penamaan tabel menggunakan bahasa inggris ya.

contoh pembuatan tabel adalah sebagai berikut :

```
def change
  create_table :books do |t|
    t.string :title, default: 'Belum ada judul', limit: 100
    t.float :price, null: false
    t.integer :page, default: 0
    t.text :description

    t.timestamps
  end
end
```

Method change ini secara otomatis akan membaut suatu fungsi untuk up dan down table yang kita buat, up adalah saat kita membuat tabel dan down adalah kebalikannya yaitu menghapus tabel.

Namun ada suatu kasus yang nantinya si Rails tidak bisa menebak / mengembalikan suatu state yang sudah di-up. Untuk itulah sebaiknya kita pecah method change ini menjadi method up dan down secara mandiri

```
def up
  create_table :books do |t|
    t.string :title, default: 'Belum ada judul', limit: 100
    t.float :price, null: false
    t.integer :page, default: 0
    t.text :description

    t.timestamps
  end
end

def down
  drop_table :books
end
```
