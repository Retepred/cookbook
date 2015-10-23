get '/categories' do
#Load categories from the database
#To get data we always use a model (MVC).

@categories = Category.all
#Now we have the data we are passing it to a view to interact with a user. If we have a layout, it passes to it.

  erb :'categories/index'
end

get '/categories/new' do
  @category = Category.new
  erb :'categories/new'
end

get '/categories/:id/edit' do

  @category = Category.find(params[:id])
  @category.save

  erb :'categories/edit'
end

post '/categories/:id' do
  @category = Category.find(params[:id])
  @category.update_attributes(params[:category])

  redirect to("/categories")
end  

post '/categories' do
 @category = Category.new(params[:category])
 @category.save
redirect to('/categories')
end

post '/categories/:id/delete' do
  Category.find(params[:id]).destroy
  redirect to('/categories')
end