class TicketOffice
  def get_data_for_train(train_id)
    Seat.all(train_id: train_id).to_json
  end

  def make_reservation(request)
    if seats_available?(request)
      reserve_seats(request)
    end
  end
end
