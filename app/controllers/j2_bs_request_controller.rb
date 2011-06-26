require 'cgi'
require "base64"
class J2BsRequestController < ApplicationController
  
  def create
    newReq = J2BsRequest.new
    
    newReq.customer_id = params[:customer_id]
    newReq.order_id = params[:order_id]
    newReq.store_id = params[:store_id]
    newReq.price = params[:price]
    newReq.description = CGI.unescape(params[:description])
    newReq.callback_url = CGI.unescape(Base64.decode64(params[:callback]))
    newReq.status = "pending"
    
    newReq.save
    
    @message = newReq.order_id + " is pending acceptance"
  end

  def show
     @requests = J2BsRequest.where(:customer_id => params[:customer_id],:status => "pending")
     
     respond_to do |format|
       format.xml {render_for_api :public_request, :xml => @requests, :root => :requests}
       format.json {render_for_api :public_request, :json => @requests, :root => :requests}
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
