Rails.application.routes.draw do

    # constraints subdomain: 'api' do
    #   namespace 'v1' do
    #     resources :users
    #   end
    # end

  constraints subdomain: 'api', defaults: { format: 'json' } do
    scope module: :v1, constraints: ApiVersion.new('v1', true) do
      resources :users
    end
  end
end
