require_relative '../models/reservation'

FactoryBot.define do
  factory :seat_one, class: Seat do
    id { 1 }
    car { 1 }
    reserved { false }
    train_id { 1 }
  end

  factory :seat_two, class: Seat do
    id { 2 }
    car { 1 }
    reserved { false }
    train_id { 2 }
  end
end
