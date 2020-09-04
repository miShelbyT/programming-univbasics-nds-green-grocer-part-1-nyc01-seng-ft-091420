require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |key_value|
    if name == key_value[:item]
      return key_value
        end
      end
    return nil
  end

def consolidate_cart(cart)
  new_cart = []
  i = 0
  while i < cart.length
    lookup = find_item_by_name_in_collection(cart[i][:item], new_cart)
    if !lookup
      cart[i][:count] = 1
      new_cart.push(cart[i])
    else
      cart[i][:count] += 1
    end
  end
end
