require "spec_helper"
require "person"

describe Person do
  context "Create Person with relationship status" do
    before do
      subject { Person.new }
      subject.name = "Carlos Eduardo"
    end

    it "married? should be true when is married" do
      subject.relationship_status = RelationshipStatus::MARRIED
      expect(subject.married?).to be_true
    end

    it "single? should be true when is single" do
      subject.relationship_status = RelationshipStatus::SINGLE
      expect(subject.single?).to be_true
    end
  end
end