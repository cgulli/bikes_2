require 'docking_station'

describe DockingStation do
  expect(subject).to respond_to(:release_bike)
  it 'releases bike' do
  end
  it 'is working?' do
    boris = Bike.new
    expect(boris.working?).to eq true
  end
  it 'docks a bike' do
    expect(docking_station).to respond_to(:accept).with(1).argument
  end
  it 'stores bikes' do
    expect(docking_station.accept).to eq 1
  end
end
