
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
