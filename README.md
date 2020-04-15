# Another Migration

Kali ini kita akan mencoba untuk memanfaatkan migration yang lain, yaitu manipulasi table. Sebenarnya saya juga bingung mau saya kasih nama apa, tapi ya akhirnya ini saja yang saya kasih.

Dan terlebih lagi masih banyak cara manipulasi datababase dan tabel, lebih lengkapnya pergi aja ke dokumentasi atau cari di google serta banyak banyak studi kasus.

`rils g migration AlterAuthors`

```
def up
  rename_column :authors, :age, :old
  change_column :authors, :name, :string, limit: 100
end

def down
  change_column :authors, :name, :string, limit: 50
  rename_column :authors, :old, :age
end
```
