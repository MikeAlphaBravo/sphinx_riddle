require('pry')
require('rspec')
require('riddle')
tri = Riddle.new(tri.question,"needle")

describe ("#picker") do
  it("test if answer is correct") do
  expect(tri.question).to(eq(["needle","meet"]))
  end
end
