Rails.application.routes.draw do
  namespace 'guchi' do
    namespace 'sessions' do
      post 'sign_in', action: :sign_in
      post 'sign_up', action: :sign_up
    end
  end

  namespace 'deai' do
    namespace 'sessions' do
      post 'sign_in', action: :sign_in
      post 'sign_up', action: :sign_up
    end
  end

  post '/master_data', action: :index, controller: 'master_data'
end
