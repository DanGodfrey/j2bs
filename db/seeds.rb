# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

J2BsRequest.destroy_all

req1 = J2BsRequest.create(:order_id => '111',:customer_id => '222', 
  :store_id => '333',:title => 'Three Wolf Moon Shirt' ,:price => 25, 
  :description => "This Internet sensation has been featured on You Tube, been discussed in numerous blogs, and has even been the subject of a song and music video.", :status => 'pending' )
  
req2 = J2BsRequest.create(:order_id => '444',:customer_id => '222', 
  :store_id => '333',:title => 'Dan Bo' ,:price => 121.24, 
  :description => "Japanese Best Comic Yotsubato! (Published by Asukimediawakusu Kiyo Azuma Kiyohiko), the setting of a robot costume made of cardboard summer work, Dan Bo.",
  :status => 'pending' )