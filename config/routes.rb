Rails.application.routes.draw do
  namespace 'guchi' do
    post 'sessions/sign_in', action: :sign_in
    post 'sessions/sign_up', action: :sign_in
  end

  namespace 'deai' do
    post 'sessions/sign_in', action: :sign_in
    post 'sessions/sign_up', action: :sign_in
  end
end
