require "spec_helper"

module St2csv
	describe Converter do
    
    before do
      json_string = '[
          {
          "DATETIME":"2016-11-25T00:00:00-08"
          ,"LOOP_ID":"126-2"
          ,"TRAFFIC_COUNT":1
          }
          ,{
          "DATETIME":"2016-11-25T00:00:00-08"
          ,"LOOP_ID":"126-6"
          ,"TRAFFIC_COUNT":15
          }
          ,{
          "DATETIME":"2016-1-5T00:00:00-08"
          ,"LOOP_ID":"126-6"
          ,"TRAFFIC_COUNT":15
          }
        ]' 
      @converter = St2csv::Converter.new(json_string)
    end

    describe '#new' do
      it "initializes a new object of class Converter" do
        expect(@converter).to be_a Converter
      end
    end

    describe '#convert' do
      it 'returns a csv string' do
        expect(@converter.convert).to be_a String
      end
    end

	end
end