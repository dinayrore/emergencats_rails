FactoryGirl.define do
    factory :cat do |c|
        c.name 'Rufus'
        c.gender 'M'
        c.species 'tabby'
        c.attitude 'quirky'
        c.image 'rufus.jpg'
    end
end
