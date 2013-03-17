require "spec_helper"
require "person"
require "person_decorator"

describe PersonDecorator do
  context "#pronoun_of_treatment" do
    subject { PersonDecorator.new(person) }

    before do
      person.name = "Carlos Eduardo"
    end

    let(:person) do
      Person.new
    end

    it "return Mr and name when person is married" do
      person.relationship_status = RelationshipStatus::MARRIED
      expect(subject.pronoun_of_treatment).to eq 'Sr. Carlos Eduardo'
    end

    it "return Mr and name when person is married" do
      person.relationship_status = RelationshipStatus::SINGLE
      expect(subject.pronoun_of_treatment).to eq 'Mr. Carlos Eduardo'
    end
  end
end