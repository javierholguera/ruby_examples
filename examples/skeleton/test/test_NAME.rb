
require 'test/unit'

class MyUnitTests < Test::Unit::TestCase

    def setup
        puts "Setup!"
    end

    def teardown
        puts "Teardown!"
    end

    def test_basic
        puts "I ran!"
    end
end
