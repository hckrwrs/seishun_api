Rails.application.routes.draw do
  namespace 'guchi' do
    namespace 'sessions' do
      post 'sign_in', action: :sign_in
      post 'sign_up', action: :sign_in
    end
  end

  namespace 'deai' do
    namespace 'sessions' do
      post 'sign_in', action: :sign_in
      post 'sign_up', action: :sign_in
    end
  end
end
