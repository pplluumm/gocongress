FactoryGirl.define do
  factory :tournament do
    sequence(:name) { |n| "Tournament #{n}"}
    eligible "blah"
    description "blah"
    directors "blah"
    openness "O"
    year Time.now.year

    # Typical tournament has three to six rounds
    after(:build) do |t|
      3.upto(6) do
        t.rounds.build FactoryGirl.attributes_for(:round)
      end
    end
  end
end
