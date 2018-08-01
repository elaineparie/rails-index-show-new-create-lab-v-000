class CouponsController < ActionController::Base


def index
  @coupons = Coupon.all
end
  def create
    @coupon = Coupon.new
@coupon.coupon_code = params[:coupon_code]
@coupon.store = params[:store]
@coupon.save
redirect_to "/coupons/#{@coupon.id}"
  end

  def show
  		@coupon = Coupon.find(params[:id])
  	end

  def coupon_url(coupon)
  end

end
