require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it 'releases bike' do
  end
  it 'is working?' do
    boris = Bike.new
    expect(boris.working?).to eq true
  end
  it 'docks a bike' do
    it { is expected.to respond_to(:accept).with(1).argument}
  end
end
