

FactoryGirl.define do

  factory :customer do
    name 'danc'
    contact_info 'dan@c.com'
  end

  factory :artwork do
    artist_id 2
    created_date Time.now
    listed_date Time.now
    asking_price 1000.0
    medium_id 2
    purchase_date nil
    customer_id nil
    title 'Kevin at the bottom of the bay'
    selling_price nil

    customer
  end
end
