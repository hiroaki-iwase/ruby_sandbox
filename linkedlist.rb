class List
  class Cell
    attr_accessor :data1, :data2, :link
    def initialize(data1, data2, link = nil)
      @data1 = data1
      @data2 = data2
      @link = link
    end
  end

  attr_accessor :top, :current_cell
  def initialize()
    @top = Cell.new("end of list", nil, nil)
  end

  def insert(data1, data2)
    @top = Cell.new(data1, data2, @top)
  end

  def search(data1)
    access_cell = @top
    while access_cell.data1 != "end of list"
      return access_cell.data2 if access_cell.data1 == data1
      access_cell = access_cell.link
    end
  end
end

list = List.new()

list.insert("iwase1", "hiroaki1")
list.insert("iwase2", "hiroaki2")

p list.search("iwase1")

