require('pg')

class Test

DB = PG.connect(:dbname => "list")

  def initialize(attributes)
    @item = attributes[:item] #{:item => "something"} is attributes
  end

  def self.all
    DB.exec("SELECT * FROM items;")
  end

  def save
     DB.exec("INSERT INTO items (item) VALUES ('#{@item}') RETURNING id;")
  end
end
