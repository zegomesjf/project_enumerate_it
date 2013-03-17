$LOAD_PATH << "lib"

require "person"

p1 = Person.new
p1.name	               = "Carlos Eduardo"
p1.relationship_status = RelationshipStatus::MARRIED

p2 = Person.new
p2.name		       	   = "Ernane Sena"
p2.relationship_status = RelationshipStatus::SINGLE

#List of relations ship(Relacionamentos)

puts "Relationship status:"
lista = RelationshipStatus.list.each do |value|
	puts value
end

puts "---------------------------------------------------"
puts p1.pronoun_of_treatment
puts "#{p1.relationship_status}"


puts "---------------------------------------------------"
puts p2.pronoun_of_treatment
puts "#{p2.relationship_status}"