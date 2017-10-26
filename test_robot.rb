require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test


  def setup
    @robot = Robot.new
    @robot.needs_repairs = false
    @robot.foreign_model = false
    @robot.vintage_model = false
    @robot.todos = ['change oil', 'remove rust stains']
    @robot.day_off = false
  end
  #
  # def teardown
  #   Robot.delete
  # end

  def test_that_foreign_robot_needing_repairs_sent_to_station_1
    skip
    # arrange
    # happened in setup
    # act
    actual_value = @robot.needs_repairs && @robot.foreign_model
    # assert
    expected_value = true
    assert_equal(actual_value, expected_value)
  end

  def test_that_vintage_robot_needing_repairs_sent_to_station_2
    # arrange
    skip
    # act
    actual_value = @robot.needs_repairs && @robot.vintage_model
    # assert
    expected_value = true
    assert_equal(actual_value, expected_value)
  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3
    # arrange
    skip
    # act
    actual_value = @robot.needs_repairs
    # assert
    expected_value = true
    assert_equal(actual_value, expected_value)
  end

  def test_that_robot_in_good_condition_sent_to_station_4
    # arrange
    skip
    # act
    actual_value = @robot.needs_repairs
    # assert
    expected_value = false
    assert_equal(actual_value, expected_value)
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one
    # arrange
    skip
    # act
    actual_value = @robot.todos
    # assert
    expected_value = []
    assert_equal(actual_value, expected_value)
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    # arrange
    skip
    # act
    actual_value = @robot.todos.length
    # assert
    expected_value = 2
    assert_equal(actual_value, expected_value)
  end

  def test_workday_on_day_off_returns_false
    # arrange
    skip
    # act
    actual_value = @robot.day_off
    # assert
    expected_value = true
    assert_equal(actual_value, expected_value)
  end

  def test_workday_not_day_off_returns_true
    # arrange

    # act
    actual_value = @robot.day_off
    # assert
    expected_value = false
    assert_equal(actual_value, expected_value)
  end

end
