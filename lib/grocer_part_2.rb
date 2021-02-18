require_relative './part_1_solution.rb'
require "pry"
def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  coupons.each do |coupon|
    item_info=find_item_by_name_in_collection(coupon[:item], cart)
    item_with_coupon=find_item_by_name_in_collection(coupon[:item]+" W/COUPON", cart)
    if item_with_coupon and item_info[:count] >= coupon[:num]
      item_info[:count] -= coupon[:num]
      item_with_coupon[:count] += coupon[:num]
    elsif item_info and item_info[:count] >= coupon[:num]
  cart << {
    :item => coupon[:item]+ " W/COUPON",
    :price => (coupon[:cost]/coupon[:num]),
    :clearance => item_inf[:clearance],
    :count => coupon[:num]
  }
    end
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
