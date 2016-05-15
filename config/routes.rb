Rails.application.routes.draw do
  namespace 'guchi' do
    namespace 'sessions' do
      post 'sign_in', action: :sign_in
      post 'sign_up', action: :sign_up
    end

    namespace 'guchis' do
      post '/', action: :index
      post '/create', action: :create
      post '/replied', action: :replied
      post '/:id', action: :show
    end

    namespace 'deai_users' do
      post '/:id', action: :show
    end

    namespace 'replies' do
      post '/', action: :index
      post '/create', action: :create
    end
  end

  namespace 'deai' do
    namespace 'sessions' do
      post 'sign_in', action: :sign_in
      post 'sign_up', action: :sign_up
    end

    namespace 'guchis' do
      post '/', action: :index
      post '/replied', action: :replied
      post '/:id', action: :show
    end

    namespace 'guchi_users' do
      post '/:id', action: :show
    end

    namespace 'replies' do
      post '/create', action: :create
    end
  end

  post '/master_data', action: :index, controller: 'master_data'
end
