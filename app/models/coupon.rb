class Coupon < ActiveRecord::Base 
  def to_s 
    self.coupon[coupon_code] + " " + self.coupon[store] 
  end 
end 