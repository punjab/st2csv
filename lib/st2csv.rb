require "st2csv/version"

module St2csv
  require "json"
  require "csv"
  
  class Converter
    def initialize(json_string)
      @json_string = json_string
    end

    def convert
    	csv_string = CSV.generate(options = {force_quotes: true}) do |csv|
        # csv << ["datetime","traffic_loop_id","traffic_count"]
      	JSON.parse(@json_string).each do |hash|
          csv << [hash["DATETIME"].scan(/(\d{4}-\d{1,2}-\d{1,2}).([\d:]*)/).join(' '),
                  hash["LOOP_ID"].sub('-','00'),
                  hash["TRAFFIC_COUNT"]
                ]
      	end
    	end
      csv_string
    end
  end 
end
