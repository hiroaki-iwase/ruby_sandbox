class List
  class Cell
    attr_accessor :data, :link
    def initialize(data, link = nil)
      @data = data
      @link = link
    end
  end

  attr_accessor :top, :current_cell
  def initialize()
    @top = Cell.new("end of list", nil)
  end

  def insert(data)
    @top = Cell.new(data, @top)
  end

  def search(data)
    access_cell = @top
    p access_cell.data
    while access_cell.data != "end of list"
      return "TRUE" if access_cell.data == data
      access_cell = access_cell.link
    end
  end
end

list = List.new()

list.insert("iwase1")
list.insert("iwase2")

#p list.top
#p list.top.data
#p list.top.link

p list.search("iwase1")

