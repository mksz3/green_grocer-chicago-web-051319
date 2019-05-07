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
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
