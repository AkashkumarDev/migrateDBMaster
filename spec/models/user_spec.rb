describe "#include?" do
  let(:truee) { true }
  let(:falsey) { false }

  context "with an an item that is in the collection" do
    it "returns true" do
      (truee).should be true
    end
  end

  context "with an an item that is not in the collection" do
    it "returns false" do
      (falsey).should be false
    end
  end
end
