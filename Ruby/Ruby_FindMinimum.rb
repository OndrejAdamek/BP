def find_minimum(a)
  min = a[0]

  (1...a.length).each do |i|
    if a[i] < min
      min = a[i]
    end
  end

  return min
end