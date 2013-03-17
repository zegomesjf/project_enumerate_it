$LOAD_PATH << "enumerations"

require "enumerate_it"
require "relationship_status"

class Person
  extend EnumerateIt
  attr_accessor :name, :relationship_status

  has_enumeration_for :relationship_status, :with => RelationshipStatus, :create_helpers => true

  def decorator
    PersonDecorator.new self
  end
end