class String
  def crazy
    split("").map { |r| rand(2) == 0 ? r.downcase : r.upcase }.join
  end
end
