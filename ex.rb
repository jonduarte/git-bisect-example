class Print
  def me
    'you'
  end
end

if $0 == $PROGRAM_NAME
  require 'minitest/autorun'

  class TestMeme < MiniTest::Unit::TestCase
    def setup
      @print = Print.new
    end

    def test_returns_me
      assert_equal 'me', @print.me
    end
  end
end
