require "docking_station"

describe DockingStation do
  it {is_expected.to be_a(DockingStation)}

  it { is_expected.to respond_to(:release_bike) }

  context "when releasing a bike" do
      it "subtracts 1 from the number of bikes" do
        unless subject.empty?
          bikes_at_start = subject.number_bikes
          subject.release_bike
          expect(subject.number_bikes).to eq (bikes_at_start - 1)
        end
      end
  end

  it 'create a bike' do
    unless subject.empty?
      expect(subject.release_bike).to be_instance_of(Bike)
    end
  end

  context "when checking availability" do
    it "raises error" do
      if subject.empty?
        expect { subject.release_bike }. to raise_error("No bikes")
      end
    end
  end

  context "when docking" do
    it "raises error" do
      unless subject.number_bikes < subject.capacity
        expect { subject.dock(Bike.new) }. to raise_error("Full")
      end
    end
  end

it { expect(subject.empty?).to be(true).or be(false)}

  context "when docking a bike" do
    it "adds 1 to number of bikes" do
      if subject.number_bikes < subject.capacity
        bikes_at_start = subject.number_bikes
        subject.dock(Bike.new)
        expect(subject.number_bikes).to eq (bikes_at_start + 1)
      end
    end
  end

it { is_expected.to respond_to(:bikes) }

it {expect(subject.bikes).to be_instance_of(Array) }

it {expect(subject.number_bikes).to eq subject.bikes.length}

it {expect(DockingStation.new(25).capacity).to eq 25 }
it {expect(DockingStation.new().capacity).to eq 20 }
  end
