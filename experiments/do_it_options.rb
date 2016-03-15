ab_test "Doing it options" do
  description "Mirror, mirror on the wall, who's the better color of all?"
  alternatives 'blue', 'red'
  default 'blue'
  metrics :done_it
end
