##
## Let's begin
##
##
def pet_shop_name(pet_shop)

  return pet_shop[:name]

end

##

def total_cash(pet_shop)
  
  sum = pet_shop[:admin][:total_cash]
  return sum

end

##

def add_or_remove_cash(pet_shop, revenue)

  pet_shop[:admin][:total_cash]+=revenue

end

##

def pets_sold(pet_shop)

  return pet_shop[:admin][:pets_sold]

end

##

def increase_pets_sold(pet_shop, amount_sold_pet)

  pet_shop[:admin][:pets_sold] += amount_sold_pet


end

##

def stock_count(pet_shop)

  return pet_shop[:pets].length

end

##

def pets_by_breed(pet_shop, breed)
  pets=pet_shop[:pets]
  result_pets = []
  for pet in pets
    if (pet[:breed] == breed)

      result_pets.push(pet)

    end

  end

  return result_pets
end


def find_pet_by_name(pet_shop, name)

  for pet in pet_shop[:pets]
    return pet if pet[:name] == name
  end

  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    pet_shop[:pets].delete(pet) if pet[:name] == name
  end


end

def add_pet_to_stock(pet_shop, new_pet)

  pet_shop[:pets] << new_pet

end

def customer_cash(customer)

  return customer[:cash]


end

def remove_customer_cash(customer, amount)

  customer[:cash] -= amount


end

def customer_pet_count(customer)

  return customer[:pets].length


end

def add_pet_to_customer(customer, new_pet)

  customer[:pets] << (new_pet)

end

def customer_can_afford_pet(customer, new_pet)

  if (customer[:cash]>=new_pet[:price])
    return true
  else
    return false
  end

end

def sell_pet_to_customer(pet_shop, pet, customer)

  if (pet!=nil)
    if(customer_can_afford_pet(customer, pet))
      customer[:pets] << pet
      remove_customer_cash(customer, pet[:price])
      add_or_remove_cash(pet_shop, pet[:price])
      remove_pet_by_name(pet_shop, pet)
      increase_pets_sold(pet_shop, 1)
    else
      p "Can't afford the pet, sorry!"
    end
  end
end





















#
