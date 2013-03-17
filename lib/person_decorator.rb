class PersonDecorator
  def initialize(person)
    @person = person
  end

  def pronoun_of_treatment
    married? ? "Sr. #{name}" : "Mr. #{name}"
  end

  def method_missing(method, *args, &block)
    @person.send method, *args
  end
end