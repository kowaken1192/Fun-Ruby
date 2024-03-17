class Introduction
  def initialize(country, name, age)
    @country = country
    @name = name
    @age = age
  end

  def call_WhereImFrom
    puts "私の出身は#{@country}です"
  end

  def call_name
    puts "私の名前は#{@name}です"
  end

  def call_age
    puts "私の年齢は#{@age}です"
  end
end

Kenji = Introduction.new("日本", "Taro" ,25)
Kenji.call_WhereImFrom()
Kenji.call_name()
Kenji.call_age()
