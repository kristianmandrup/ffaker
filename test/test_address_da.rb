require 'helper'

class TestAddressDA < Test::Unit::TestCase
  def alpha
    /[ A-Za-z]/
  end

  def post_code
    /^\d{4}$/
  end

  def test_city
    assert_match alpha, Faker::AddressDA.city
  end

  def test_state
    assert_match alpha, Faker::AddressDA.state
  end

  def test_zip_code
    assert_match post_code, Faker::AddressDA.zip_code
  end

  def test_post_nr
    assert_match post_code, Faker::AddressDA.post_nr
  end  

  def test_street
    assert_match alpha, Faker::AddressDA.street
  end  

  def test_street_name
    assert_match alpha, Faker::AddressDA.street_name
  end

  def test_street_kommune
    assert_match alpha, Faker::AddressDA.kommune
  end

  def test_street_region
    assert_match alpha, Faker::AddressDA.region
  end
end
