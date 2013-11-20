Product.find_or_create_by(:name => "Nintendo DS") do |product|
  product.description = "The handheld Nintendo console."
end
