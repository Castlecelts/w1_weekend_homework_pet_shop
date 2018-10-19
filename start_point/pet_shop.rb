
#The setup.
#Customers[array] -> subset of {hashes}
#new_pet{hash}
#pet_shop{2hashs} ->pets[array] -> subset of {hashes}
#                 ->admin{hashes}
#                 ->name

###########################################################

#Pet shop name function
#method = pet_shop_name
#function should - return the name of the pet_shop

def pet_shop_name(shops)
 return shops[:name]
end

#calc total cash
#method = total_cash
#function should return the value of total_cash in pet_shop

def total_cash(shops)
  return shops[:admin][:total_cash]
end

#calc total_cash after adding cash
#method new add_or_remove_cash
#method also called total_cash
#function should take an input and add it to total_cash

def add_or_remove_cash(shops, value)
  sum_to_add = value
  return shops[:admin][:total_cash] += sum_to_add
end

#calc total_cash after subtracting cash
#method called add_or_remove_cash
#method called total_cash
#function should now also subtract from total_cash
#horray - method add_or_remove_cash already does this!!

#calc number of number of pets_sold
#method = pets_sold
#function should return the value of pets_sold in admin

def pets_sold(shops)
  return shops[:admin][:pets_sold]
end
