class Receipt
  attr_accessor :name, :lines

  def initialize(name)
    @name = name
    @lines = []
  end

  def calc
    total = 0
    @lines.each do |line|
      total += line[:price] * line[:num]
    end
    total
  end

  def output
    puts "レシート#{@name}について"
    @lines.each do |line|
      puts "#{line[:name]}は #{line[:price]}円 x #{line[:num]}"
    end
    puts "よって合計金額: #{calc}円"
  end
end

receipt = Receipt.new("ストアA")
receipt.lines = [{name: "卵", price: 200, num: 1},
          {name: "大根", price: 100, num: 2}]
receipt.output
