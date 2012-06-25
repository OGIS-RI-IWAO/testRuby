require 'test/unit'
require_relative '../src/foo'

class TC_Foo < Test::Unit::TestCase
  def setup
    @obj = Foo.new
  end

  # def teardown
  # end

  def test_foo
    assert_equal("foo", @obj.foo)
  end
  def test_bar
    assert_equal("bar", @obj.bar)
  end
end
