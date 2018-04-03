class Field
  @@corn_field = []
  @@wheat_field = []
  @@harvest = 0
  @@total_area = 0

  def initialize (type_field, size_field)
    @type_field = type_field
    @size_field = size_field
  end

  def self.create
    puts "Please inform what kind of field is it: (corn or wheat)"
    type_field = gets.chomp
    puts "Please inform the size of the field:(hectares)"
    size_field = gets.chomp.to_i
    @@total_area += size_field
      if type_field == "corn"
        new_field = Field.new(type_field, size_field)
        @@corn_field << new_field
        return puts "Added a corn field of #{size_field} hectares!"

      elsif type_field == "wheat"
        new_field = Field.new(type_field, size_field)
        @@wheat_field << new_field
        return puts "Added a wheat field of #{size_field} hectares!"

      else
        puts "Please enter \"corn\" or \"wheat\""
        Field.create

      end
  end

#============= READERS ================

  def field_type
    return @type_field
  end

  def field_size
    return @size_field
  end

  def field
    return @@field
  end

  def total_harvest
    return @@harvest
  end

  def total_area
    return @@total_area
  end

  #============= METHODS ================

  def self.harvest
    @@corn_field.each do |field|
      total_food = (field.field_size * 20)
      @@harvest += total_food
      total_size = field.field_size
      puts "Harvesting #{total_food} food from #{total_size} hectares corn field."
    end

    @@wheat_field.each do |field|
      total_food = (field.field_size * 30)
      @@harvest += total_food
      total_size = field.field_size
      puts "Harvesting #{total_food} food from #{total_size} hectares wheat field."
    end

    return puts "The Farm has #{@@harvest} harvested food so far"
  end

  def self.status
    @@corn_field.each do |field|
      total_size = field.field_size
      puts "Corn field is #{total_size} hectares."
    end

    @@wheat_field.each do |field|
      total_size = field.field_size
      puts "Wheat field is #{total_size} hectares."
    end

    return puts "The Farm has #{@@harvest} harvested food so far"
  end

  def self.relax
    total_corn_size = 0
    total_wheat_size = 0

    @@corn_field.each do |field|
      total_corn_size += field.field_size
    end

    @@wheat_field.each do |field|
      total_wheat_size = field.field_size
    end

    puts "\n\n#{total_corn_size} hectares of tall green stalks rustling in the breeze fill your horizon.\n The sun hangs low, casting an orange glow on a sea of #{total_wheat_size} hectares of wheat."

  end
end
