def Partition(a, p, r)
  x = a[r]
  i = p - 1

  (p..r).each do |j|
    if a[j] < x
      i += 1
      a[i], a[j] = a[j], a[i]
    end
  end

  a[i + 1], a[r] = a[r], a[i + 1]
  return i + 1
end

def QuickSort(a, p, r)
  if p < r 
    q = Partition(a, p, r)
    QuickSort(a, p, q - 1)
    QuickSort(a, q + 1, r)
  end
end