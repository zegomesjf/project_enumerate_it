require "spec_helper"
require "Person"

describe Person do
	context "Create Person with relationship status" do
		before do
			subject { Person.new }
			subject.name = "Carlos Eduardo"
		end

		it "have be Mr" do
			subject.relationship_status = RelationshipStatus::MARRIED
			expect(subject.married?).to be_true
		end

		it "have be Sr" do
			subject.relationship_status = RelationshipStatus::SINGLE
			expect(subject.single?).to be_true
		end
	end
end