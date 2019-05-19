Rails.application.routes.draw do
  constraints subdomain: 'api' do
    scope module: 'api' do
      scope module: 'v1', constraints: ApiVersion.new('v1', true) do
        resources :users
      end
    end
  end
end
