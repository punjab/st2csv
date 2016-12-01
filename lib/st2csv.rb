require "st2csv/version"

module St2csv
  def convert(ARGV[0])
    json_string = File.read(filename)
  	csv_string = CSV.generate(options = {force_quotes: true}) do |csv|
      csv << ["datetime","loop_id","traffic_count"]
    	JSON.parse(json_string).each do |hash|
        csv << [hash["DATETIME"].scan(/(\d{4}-\d{1,2}-\d{1,2}).([\d:]*)/).join(' '),
                hash["LOOP_ID"],
                hash["TRAFFIC_COUNT"]
              ]
    	end
  	end
    csv_string
  end
end
