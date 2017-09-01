require './lib/docking_station'

describe DockingStation do


  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  it 'raises an error when there is already a bike docked' do
    DockingStation::DEFAULT_CAPACITY.times {subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error 'Dock full'
  end

  describe '#dock' do
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq [bike]
  end
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe 'initialize' do
    it 'has variable capacity' do
      docking_station = DockingStation.new(21)
      21.times { docking_station.dock Bike.new }
      expect{ docking_station.dock Bike.new }.to raise_error 'Dock full'
    end
  end

end
