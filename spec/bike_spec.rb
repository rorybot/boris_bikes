require './lib/bike'

describe Bike do
  it 'checks if it works' do
    expect(subject).to respond_to :working? 
  end
end
