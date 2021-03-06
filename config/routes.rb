Rails.application.routes.draw do
  get 'admin', to: redirect('ygg/cc/admin')

  root to: 'flights#index'

  resources :flights do
  end


  namespace :ygg do
  namespace :cc do

    aresources :pilots, controller: 'pilot/rest' do
      member do
  #      get :edit
  #      get :stats_by_plane
      end

      collection do
  #      get :add_plane
      end
    end

    aresources :flights, controller: 'flight/rest' do
      member do
  #      get :photos, :tag_photos, :tag_photos_ajax, :show_map
  #      post :do_tag_photos
      end

      collection do
  #      match :wizard
  #      get :calendar
  #      get :new_pilot_changed
  #      get :new_plane_changed
  #      get :new_plane_type_changed
  #      get :autocomplete_plane
      end
    end

    aresources :aircrafts, controller: 'aircraft/rest' do
      member do
        get :edit
        get :stats_by_pilot
      end
    end

    aresources :clubs, controller: 'club/rest' do
    end

    aresources :aircraft_types, controller: 'aircraft_type/rest' do
    end

#  aresources :igc_tmp_files do
#  end
#
#  aresources :rankings do
#    member do
#      get :history
#    end
#  end
#
#  aresources :championships
#
#  aresources :alptherm_history_entry
#
#  match 'registration' => 'registration#wizard', :as => :registration
#
#  namespace :csvva do
#    match 'flights' => 'flights#wizard', :as => :flight_wizard
#    get 'flights/autocomplete_passenger' => 'flights#autocomplete_passenger', :as => :autocomplete_passenger
#    match 'registration' => 'registration#wizard', :as => :registration
#    match 'registration/recover_password' => 'registration#recover_password'
#    post 'registration/login_and_associate' => 'registration#login_and_associate'
#  end
#
#  namespace :cid do
#    match 'flights' => 'flights#wizard', :as => :flight_wizard
#    match  'registration' => 'registration#wizard', :as => :registration
#    match 'registration/recover_password' => 'registration#recover_password'
#    post 'registration/login_and_associate' => 'registration#login_and_associate'
#  end
#
#  match 'flickr/:action' => 'flickr'
#
#  match 'fb(/:action)' => 'fb', :defaults => { :action => 'index' }
#
#  match 'static/*path' => 'static#show', :as => :static

    get 'admin' => 'admin/main#index'
  end


#  root :to => 'static#index'
end
end
