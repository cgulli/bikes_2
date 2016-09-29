require 'docking_station'

describe DockingStation do
  docking_station = DockingStation.new
  it 'releases bike' do
  expect(docking_station).to respond_to(:release_bike)
  end
  it 'is working?' do
    boris = Bike.new
    expect(boris.working?).to eq true
  end
  it 'docks a bike' do
    expect(docking_station).to respond_to(:accept).with(1).argument
  end
  describe '#accept' do
    20.times {docking_station.accept(Bike.new)}
    it 'raises an error when station is at capacity' do
      expect {docking_station.accept(Bike.new)}.to raise_error 'Station is at capacity'
    end
  end
end
describe '#release_bike' do
  docking_station = DockingStation.new
  it 'raises an error when no bikes available' do
    expect {docking_station.release_bike}.to raise_error 'No bike available'
  end
end
