class CouponsController < ApplicationController
  before_action :set_coupon, only: [:show, :new]
  
  def index 
    @coupons = Coupon.all 
  end 
  
  def show 
    @coupon = Coupon.find(params[:id])
  end 
  
  def new 
  end 
  
  def create 
    @coupon = Coupon.new 
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save 
    
    redirect_to "/coupons/#{@coupon.id}"
  end 
end 