# Validasi Validasi Uniqueness

Validasi ini akan mengecek apakah nilai dari suatu inputan sudah ada di database atau belum. Jika sudah maka tidak akan lolos validasi.

```
validates :title, uniqueness: {uniqueness: true, case_sensitive: true}
```

```
b = Book.new
b.title = "Ruby Up and Running"

b.valid?
Book Exists? (0.5ms)  SELECT 1 AS one FROM `books` WHERE `books`.`title` = BINARY 'Ruby Up and Running' LIMIT 1
false

b.errors.messages
{:title=>["has already been taken"]}
```
