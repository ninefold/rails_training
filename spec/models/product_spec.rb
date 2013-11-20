require "spec_helper"

describe Product do
  describe "#validates" do
    it "isn't valid by default" do
      expect(Product.new.valid?).to be_false
    end

    it "is valid when you set the name and the description" do
      expect(Product.new(:name => "Test", :description => "Test").valid?).to be_true
    end
  end
end
