require 'docking_station'

describe DockingStation do
  
  let(:working_bike)        { double('working bike', working?: true) }
  let(:broken_bike)         { double('broken bike', working?: false) }
  
  subject(:docking_station) { described_class.new(bikes) }
  
  describe '#working_bike_count' do
    context '1 working bike' do
      let(:bikes) { [working_bike] }
      
      it "returns 1" do

        expect(docking_station.working_bike_count).to eq(1)
      end
    end

    context '1 working bike, 1 broken bike' do
      let(:bikes) { [working_bike, broken_bike] }
      
      it "returns 1" do

        expect(docking_station.working_bike_count).to eq(1)
      end
    end
  end

  describe '#random_bike_working?' do
    context 'random bike is working' do
      let(:bikes) { [working_bike, broken_bike] }
      
      it 'returns true' do
        allow_any_instance_of(Array).to receive(:sample) { working_bike }

        expect(docking_station.random_bike_working?).to eq(true)
      end
    end

    context 'random bike is broken' do
      let(:bikes) { [broken_bike] }
      it 'returns false' do
        allow_any_instance_of(Array).to receive(:sample) { broken_bike }

        expect(docking_station.random_bike_working?).to eq(false)
      end
    end
  end
end
