require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it 'release_bike' do
    boris = Bike.new
  end
  it 'is working?' do
    boris = Bike.new
    expect(boris.working?).to eq true
end
end
