class SearchesController < ApplicationController
  def search
  end

  def foursquare
   Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
     req.params['client_id'] = 'LDR2MWAETAYUDVOQLLMPPBJV2VRGXY3FHY3OAK4TSRB4YL4A'
     req.params['client_secret'] = client_secret
     req.params['v'] = '20160201'
     req.params['near'] = params[:zipcode]
     req.params['query'] = 'coffee shop'
   end
   render 'search'
 end
end
