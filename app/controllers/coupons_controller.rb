class CouponsController < ActionController::Base

  def create
    @coupon = Coupon.new
@coupon.coupon_code = params[:coupon_code]
@coupon.store = params[:store]
@coupn.save


  end

end
