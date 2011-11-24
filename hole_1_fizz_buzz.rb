def fizzbuzz(i)
  {FizzBuzz:15,Buzz:5,Fizz:3}.each{|k,v|return k.to_s if i%v<1}
  i
end
