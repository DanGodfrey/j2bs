# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

J2BsRequest.destroy_all

req1 = J2BsRequest.create(:order_id => '111',:customer_id => '222', 
  :store_id => '333' ,:price => 45020.17, 
  :description => "$5000 Amazon Gift Card, Panasonic 103IN Fhd, Three Wolf Moon Shirt ", :status => 'pending', :callback_url => "http://www.amazon.com" )
  
req2 = J2BsRequest.create(:order_id => '444',:customer_id => '222', 
  :store_id => '333',:price => 83.56, 
  :description => "Three Wolf Moon Shirt, Green Lantern Shot Glass, Automatic Nerf Gun",
  :status => 'pending', :callback_url => "http://www.amazon.com" )