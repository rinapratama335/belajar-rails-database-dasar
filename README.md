# Validasi Inclusion

Validasi ini mengharuskan inputan harus di antara array tertentu, array ini isinya adalah apa yang akan digunkana untuk memvaldasi. Selama inputan isinya di luar array tersebut maka akan mengembalikan nilai `false`/terjadi validasi. Misal :

```
validates :description, inclusion: {in: ['good','bad','enough']}
```

```
b = Book.new
b.description = 'Bagus banget bukunya'

b.false
false

b.errors.messages
{:description=>["is not included in the list"]}
```
