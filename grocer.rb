def consolidate_cart(cart)
  output = {}
  cart.each {|item|
    if output[item] == nil
      output[item][count] = 0
    else
      output[item][count] += 1
    end
    output
  }
end
[
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"KALE"    => {:price => 3.0, :clearance => false}}
]

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
