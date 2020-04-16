# Membuat Flash Message

Pertama kita tambahkan notice di method yang memakai flash message :

```
def create
  book = Book.new(resource_params)
  book.save
  puts book.errors.messages
  flash[:notice] = 'Berhasil menambahkan data'
  redirect_to books_path
end

def update
  @book = Book.find(params[:id])
  @book.update(resource_params)
  flash[:notice] = 'Berhasil update data'
  redirect_to book_path(@book)
end

def destroy
  @book = Book.find(params[:id])
  @book.destroy
  flash[:notice] = 'Berhasil menghapus data'
  redirect_to books_path
end
```

Kemudian tinggal kita letakkan dimana kita mau memberi pesan flash message ini :

```
<% if flash[:notice].present? %>
  <%= flash[:notice] %>
<% end %><br />
```
