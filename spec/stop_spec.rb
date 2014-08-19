require 'spec_helper'

describe Stop do
  it 'initializes a stop with a line and station' do
    test_line = Line.new(:name => "Red")
    test_station = Station.new(:name => "A")
    test_stop = Stop.new({:station_id => test_station.id,
      :line_id => test_line.id })
    expect(test_stop).to be_an_instance_of Stop
  end

  it 'displays the initialized station and line' do
    test_line = Line.new(:name => "Red")
    test_station = Station.new(:name => "A")
    test_stop = Stop.new({:station_id => test_station.id,
      :line_id => test_line.id})
    expect(test_stop.line_id).to eq test_line.id
    expect(test_stop.station_id).to eq test_station.id
  end

  it 'creates an empty array of stops' do
    test_line = Line.new(:name => "Red")
    test_station = Station.new(:name => "A")
    test_stop = Stop.new({:station_id => test_station.id,
      :line_id => test_line.id})
    expect(Stop.all).to eq []
  end
end


