# Validasi Numericality

1. numericality: true
   Artinya inputan harus angka, namun untuk kasus string angka masih akan lolos validasi karena secara otomatis ruby akan merubah stirng angka menjadi angka.

```
validates :page, numericality: true
```

2. equal_to
   Inputan harus sama dengan nilai yang didefinisikan.

```
validates :page, equal_to: 300
```

3. greater_than
   Inputan harus lebih besar dari yang didefinisikan

```
validates :page, greater_than: 250
```

4. greater_than_or_equal_to
   Inputan harus lebih besar dari atau sama dengan yang didefinisikan

```
validates :page, greater_than_or_equal_to: 250
```

5. less_than
   Inputan harus kurang dari yang didefinisikan

```
validates :page, less_than: 250
```

6. less_than_or_equal_to
   Inputan harus lebih kecil dari atau sama dengan yang didefinisikan

```
validates :page, less_than_or_equal_to: 250
```
