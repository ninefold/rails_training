namespace :products do
  desc "Create a new product to test with"
  task :create => :environment do
    Product.create! :name => ENV["PRODUCT_NAME"] || "Test product", :description => "This is a test description."
    puts "Product created successfully."
  end
end
