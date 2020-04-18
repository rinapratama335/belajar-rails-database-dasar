# Memuat Conditional Validation

Conditional validation ini adalah akan menentukan kapa `validates` akan dijalankan (dalam kondisi apa).

```
validates :price, numericality: {greater_than_or_equal_to: 200000}, if: :page_more_than_300
```

`page_more_than_300` adalah method yang kita buat,

```
def page_more_than_300
  page >= 300
end
```

Lalu bisa kita cek dengan menggunakan rails console

```
b = Book.new
b.page = 450
b.price = 75000

b.valid?
false

b.errors.messages
{:price=>["must be greater than or equal to 200000"]}
```
