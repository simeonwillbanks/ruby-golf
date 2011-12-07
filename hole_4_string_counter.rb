def count(s, l)
  s.scan(/#{l}/i).size
end
