
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
