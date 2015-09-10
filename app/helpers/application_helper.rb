module ApplicationHelper
  require 'csv'
  def convert_to_active_record
    read_csv
    build_files
  end

  def read_csv
     @my_data = Hash.new
     CSV.foreach("mydata.csv", :headers => true, :header_converters => :symbol, :converters => :all) do |row|
       @my_data[row.fields[0]] = Hash[row.headers[1..-1].zip(row.fields[1..-1])]
     end
    puts "CSV successfully read!"
  end

  def to_do
    #do a dir foreach when it's working
  end

  def build_files

    @my_data.keys.each do |this_key|
      Institution.create(
        :authority => this_key,
        :URN => @my_data[this_key][:urn],
        :name => @my_data[this_key][:school_or_college_name],
        :school_type => @my_data[this_key][:institution_type],
        :qualification => @my_data[this_key][:qualification],
        :number_entered => @my_data[this_key][:number_entered],
        :distinction_1 => @my_data[this_key][:distinction_1],
        :distinction_2 => @my_data[this_key][:distinction_2],
        :distinction_3 => @my_data[this_key][:distinction_3],
        :merit_1 => @my_data[this_key][:merit_1],
        :merit_2 => @my_data[this_key][:merit_2],
        :merit_3 => @my_data[this_key][:merit_3],
        :pass_1 => @my_data[this_key][:pass_1],
        :pass_2 => @my_data[this_key][:pass_2],
        :pass_3 => @my_data[this_key][:pass_3],
        :no_result => @my_data[this_key][:no_results],
        :subject => @my_data[this_key][:subject]
        )
      puts "Built new Premium with #{this_key}"
    end
  end
end