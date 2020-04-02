class CouponsController < ApplicationController
  
  def index 
    @coupons = Coupons.all 
  end 
  
  def show 
    @coupon = Coupons.find(params[:id])
  end 
  
  def new 
  end 
  
  def create 
    @coupon = Coupon.new 
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save 
    
    redirect_to "/coupons/:id(#{@coupon})"
  end 
end 