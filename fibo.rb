def fibs(n)
  array = [1, 2]
  if n == 1
    array = [1]
  else 
    x = 0
    until array.length == n
      array << array[x + 0] + array[x + 1]
      x += 1
    end
  end
  array
end

def fibs_rec(n, array = [1,2])
  if n == 1 
    [1]
  elsif n == 2
    array
  else
    fibs_rec(n - 1, array << array[-2] + array [-1])
  end

end

print fibs(1) 
print fibs(2) 
print fibs(3)
print fibs(5)
print fibs(10)

print fibs_rec(1) 
print fibs_rec(2) 
print fibs_rec(3)
print fibs_rec(5)
print fibs_rec(10) 