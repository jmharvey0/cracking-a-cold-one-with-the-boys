get '/sessions/new' do
  if request.xhr?
    erb :'sessions/new', layout: false
  else
    erb :'sessions/new'
  end
end
post '/sessions' do
  @user = User.find_by(email: params[:email])
  if !@user
    @errors = ["Invalid password and email combination"]
    erb :'sessions/new'
  elsif @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = ["Invalid password and email combination"]
    erb :'sessions/new'
  end
end
delete '/sessions' do
  session[:user_id] = nil
  redirect '/'
end
