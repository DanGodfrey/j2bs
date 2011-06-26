class J2BsRequest < ActiveRecord::Base

  acts_as_api

  api_accessible :public_request do |template|
    template.add :order_id
    template.add :customer_id
    template.add :store_id
    template.add :price
    template.add :description
    template.add :created_at
  end

end
