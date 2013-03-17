require "enumerate_it"

class RelationshipStatus < EnumerateIt::Base
  associate_values :divorced, :married, :single
end

#finders
#puts RelationshipStatus::SINGLE
#puts RelationshipStatus.to_a
#puts RelationshipStatus.list
#puts RelationshipStatus.values_for("MARRIED")
#puts RelationshipStatus.key_for(RelationshipStatus::MARRIED)
#puts RelationshipStatus.values_for %w(MARRIED SINGLE)
#puts RelationshipStatus.values_for %w(MARRIED SINGLE)

