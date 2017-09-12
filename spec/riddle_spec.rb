require('pry')
require('rspec')
require('riddle')

# describe Triangles do
describe ("#checker") do

  it("Determine if this is a triangle") do
  tri = Riddle.new(@question,@answer)
  expect(tri.checker).to(eq(true))
  end
end
