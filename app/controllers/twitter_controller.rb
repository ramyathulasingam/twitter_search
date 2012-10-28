class TwitterController < ApplicationController
require 'twitter_search'
def search
	if params[:twitter]
	@search_term = params[:twitter]
	client = TwitterSearch::Client.new('twitter_search')
	@tweets = client.query(:q => "#{params[:twitter]}", :page => 10, :rpp => 25)
	end
end


end
