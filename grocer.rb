def consolidate_cart(cart)
  output = {}
  cart.each { |itemObj|
    itemObj.each { |itemName, saleInfo|
      output[itemName] == nil ? output[itemName] = saleInfo.merge({:count => 1}) : output[itemName][:count] += 1
    }
  }
  output
end

def apply_coupons(cart, coupons)
  coupons.each { |coupon|
    name = coupon[:item]
    if cart[name] && cart[name][:count] >= coupon[:num]
      wCoupon = "#{name} W/COUPON"
      if cart[wCoupon]
        cart[wCoupon][:count] += 1
      else
        cart[wCoupon] = {:count => 1, :price => coupon[:cost]}
        cart[wCoupon][:clearance] = cart[name][:clearance]
      end
      cart[name][:count] -= coupon[:num]
    end
  }
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
