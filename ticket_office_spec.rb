require_relative 'ticket_office.rb'

describe TicketOffice do
  subject { TicketOffice.new }

  context 'when #get_data_for_train is called' do
    it 'returns the correct data' do
      expect(TicketOffice).to receive(:get_data_for_train)
      subject.get_data_for_train(1)
    end
  end
end
