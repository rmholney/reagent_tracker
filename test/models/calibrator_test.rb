require 'test_helper'

class CalibratorTest < ActiveSupport:: TestCase
  def setup
    @calibrator = Calibrator.create(name:"CHEM1", expiration: "2015-12-12", sets: 3, box: 4)
  end
  
  test "Calibrator should be valid" do
    assert @calibrator.valid?
  end
  
  test "Calibrator name should be present" do
    @calibrator.name =" "
    assert_not @calibrator.valid?
  end
  
  test "Calibrator has a maximum letters of 5" do
    @calibrator.name = "aaaaaa"
    assert_not @calibrator.valid?
  end
end
