require 'data_mapper'
DataMapper.setup(:default, 'postgres://localhost/reservations')
DataMapper.finalize.auto_upgrade!

class Seat
  include DataMapper::Resource

  property :id, Integer, key: true
  property :car, Integer
  property :reserved, Boolean
  property :train_id, Integer
end
