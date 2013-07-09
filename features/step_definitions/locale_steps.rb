# Allows translation within cucumber features.
#
#   When I follow t(self_generated)
#     => When I follow "#{t(:self_generated)}"
#
Given(
/ ^
  (.*)              # I should see
  (t\(([^)]+)\))    # t(self_generated)
  (.*)              # within "#main"
  $
/x) do |first, _, key, last|
  step %Q[#{first}"#{I18n.t(key)}"#{last}]
end