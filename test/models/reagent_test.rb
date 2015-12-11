require 'test_helper'

class ReagentTest < ActiveSupport:: TestCase
  def setup
    @reagent = Reagent.new(reagent_name:"ALPI", expiration: "2015 Dec 10", flex: 300, flex_per_box: 4, test_per_flex: 30)
  end
  
  test "Reagent should be valid" do
    assert @reagent.valid?
  end
  
  test "Reagent name should be present" do
    @reagent.reagent_name =" "
    assert_not @reagent.valid?
  end
  
  test "Reagent has a maximum letters of 5" do
    @reagent.reagent_name = "aaaaaa"
    assert_not @reagent.valid?
  end
end
