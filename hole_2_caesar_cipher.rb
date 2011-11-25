def caeser(s, i)
  alphabet = ('a'..'z').to_a
  index = -> shift {
    if shift > 25
      index.call(shift - 26)
    elsif shift < 0
      index.call(26 + shift)
    else 
      shift 
    end 
  }
  s.chars.inject(''){|r,c| 
    start = alphabet.index(c)
    new_index = index.call(start + i)
    r << alphabet[new_index] 
  }
end
