
#The setup.
#Customers[array] -> subset of {hashes}
#new_pet{hash}
#pet_shop{2hashs} ->pets[array] -> subset of {hashes}
#                 ->admin{hashes}
#                 ->name

###########################################################

#test 1 - Pet shop name function
#method = pet_shop_name
#function should - return the name of the pet_shop

def pet_shop_name(shops)
 return shops[:name]
end

#test 2 - calc total cash
#method = total_cash
#function should return the value of total_cash in pet_shop

def total_cash(shops)
  return shops[:admin][:total_cash]
end

#test 3 - calc total_cash after adding cash
#method new add_or_remove_cash
#method also called total_cash
#function should take an input and add it to total_cash

def add_or_remove_cash(shops, value)
  sum_to_add = value
  return shops[:admin][:total_cash] += sum_to_add
end

#test 4 - calc total_cash after subtracting cash
#method called add_or_remove_cash
#method called total_cash
#function should now also subtract from total_cash
#horray - method add_or_remove_cash already does this!!

#test 5 - calc number of number of pets_sold
#method = pets_sold
#function should return the value of pets_sold in admin

def pets_sold(shops)
  return shops[:admin][:pets_sold]
end

#test 6 - increase the number of pets sold
#method increase_pets_sold
#method also called pets_sold
#function should increase the value of pets_sold in admin

def increase_pets_sold(shops, numsoldpets)
  num_pets_sold = numsoldpets
  return shops[:admin][:pets_sold] += num_pets_sold
end

#test 7 - calc number of pets in the pet_shop
#method = stock_count
#function should take the size of pets. (maybe does not need to return??)

def stock_count(shops)
  shops[:pets].length
end

#test 8 - calc how many of each type of breed is in the pet_shop
#method = pets_by_breed
#function find the total of a specific breed of pet_type

def pets_by_breed(shops, breed)
   number_of_pets_by_breed = Array.new
  for x in shops[:pets]
    if x[:breed] == breed
      return number_of_pets_by_breed += number_of_pets_by_breed.push(x)
    else
      return number_of_pets_by_breed
    end
  end
end

#test 9 - this should check if a breed is in stock, if it isn't then 0 should be returned.
#method called pets_by_breed
#function should give a 0 count if breed not found

#NOTE the else with return line is ESSENTIAL. otherwise the function does not return anything and instead shows all dogs.

#test 10 - this should check all of pet_shop for a pet name and return it if it exists.
#method find_pet_by_name
#function should return the name

def find_pet_by_name(shops, pet_name)
  for x in shops[:pets]
    if x[:name] == pet_name
      return x
    end
  end
end
