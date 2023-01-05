hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# What will following program output?
# I believe it will output these hashes are not the same because
# if both were to be outputed then they would be in different order
# which is something Ruby takes into account


# Correction: These hashes are the same because despite the different syntax and 
# ruby looks at the hashes' key and value whereas in arrays the order does matter.
