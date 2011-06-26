class J2BsRequestController < ApplicationController
  
  def create
    newReq = J2BsRequest.new
    
    newReq.customer_id = params[:customer_id]
    newReq.order_id = params[:order_id]
    newReq.store_id = params[:store_id]
    newReq.title = params[:title]
    newReq.price = params[:price]
    newReq.description = params[:description]
    newReq.status = "pending"
    
    newReq.save
    
    @message = newReq.order_id + " is pending acceptance"
  end

  def show
     @requests = J2BsRequest.where(:customer_id => params[:customer_id],:status => "pending")
     
     respond_to do |format|
       format.xml {render :xml => @requests}
       format.json {render :json => @requests}
     end
  end
  
  def accept
    request = J2BsRequest.where(:order_id => params[:order_id])[0]
    request.status = "accepted"
    request.save
    @message = "Order Accepted"
  end
  
  def reject
     request = J2BsRequest.where(:order_id => params[:order_id])[0]
     request.status = "rejected"
     request.save
     @message = "Order Rejected"
   end

end