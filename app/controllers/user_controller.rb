get '/users/new' do
  erb :'users/new'
end

post '/users' do
  if params[:user][:password] == params[:password_confirmation]
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect "/users/#{@user.id}"
    else
      @errors = @user.errors.full_messages
      erb :'users/new'
    end
  else
    @errors = ["Passwords do not match"]
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end
