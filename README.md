# Validasi Exclusion

Jika validasi inclusion mengharuskan nilainya hanya boleh yang didefinisikan maka exclusion adalah sebaliknya, nilai yang dimusukkan ternyata di antara yang didefinisikan maka tidak lolos validasi.

```
validates :description, exclusion: {in: ['good','bad','enough']}
```

```
b = Book.new
b.description = 'good'

b.valid?
false

b.errors.messages
{:description=>["is reserved"]}
```
