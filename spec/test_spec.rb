describe("#save") do
  it("will save an item to the database") do
    var = Test.new({:item => "something"}) #when you initialize Test.new you are running initialize(attributes) from test.rb
    var.save
    expect(Test.all[0][:item]).to eq("something")
  end
end
