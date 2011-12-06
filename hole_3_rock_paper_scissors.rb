# Paper > Rock
# Rock > Scissors
# Scissors > Paper
def play(p, c)
  m = %w(Paper Rock Scissors)
  c = m.sample if c.nil?
  "#{c}," + %w(Lose Win Draw)[
    if c == p
      2
    elsif p == m[0]
      c == m[1] ? 1 : 0
    elsif p == m[1] 
      c == m[2] ? 1 : 0
    elsif p == m[2] 
      c == m[0] ? 1 : 0
    else
      0
    end
  ]
end
