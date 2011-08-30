# encoding: UTF-8

require './test_helper'
require 'test/unit'

class InformationTest < Test::Unit::TestCase
  def test_background_color
    background_color = sample_image.background_color
    assert_kind_of(FreeImage::RGBQuad, background_color)
    assert_equal(112, background_color[:red])
    assert_equal(176, background_color[:green])
    assert_equal(240, background_color[:blue])
  end

  def test_background_color_set
    image = sample_image
    rgb = FreeImage::RGBQuad.create(7, 8, 9)

    image.background_color = rgb
    background_color = image.background_color
    assert_equal(rgb, background_color)
  end

  def test_bits_per_pixel
    assert_equal(8, sample_image.bits_per_pixel)
  end

  def test_blue_mask
    assert_equal(0, sample_image.blue_mask)
    assert_equal(FreeImage::RGBQuad::BLUE_MASK, lena_image.blue_mask)
  end
  
  def test_color_type
    assert_equal(:palette, sample_image.color_type)
  end

  def test_dib_size
    assert_equal(52664, sample_image.dib_size)
  end

  def test_dots_per_meter_x
    assert_equal(2835, sample_image.dots_per_meter_x)
  end

  def test_dots_per_meter_x_set
    image = sample_image
    image.dots_per_meter_x = 3000
    assert_equal(3000, image.dots_per_meter_x)
  end

  def test_dots_per_meter_y
    assert_equal(2835, sample_image.dots_per_meter_y)
  end

  def test_dots_per_meter_y_set
    image = sample_image
    image.dots_per_meter_y = 4000
    assert_equal(4000, image.dots_per_meter_y)
  end

  def test_green_mask
    assert_equal(0, sample_image.green_mask)
    assert_equal(FreeImage::RGBQuad::GREEN_MASK, lena_image.green_mask)
  end

  def test_has_background_color
    assert(sample_image.has_background_color)
  end

  def test_has_pixels
    assert(sample_image.has_pixels)
  end

  def test_height
    assert_equal(215, sample_image.height)
  end

  def test_image_type
    assert_equal(:bitmap, sample_image.image_type)
  end

  def test_line
    assert_equal(240, sample_image.line)
  end

  def test_pitch
    assert_equal(240, sample_image.pitch)
  end

  def test_red_mask
    assert_equal(0, sample_image.red_mask)
    assert_equal(FreeImage::RGBQuad::RED_MASK, lena_image.red_mask)
  end

  def test_transparent
    assert(sample_image.transparent)
  end

  def test_transparent_set
    image = sample_image
    image.transparent = false
    assert(!image.transparent)
  end

  def test_transparent_index
    assert_equal(6, sample_image.transparent_index)
  end

  def test_transparent_index_set
    image = sample_image
    image.transparent_index = 4
    assert_equal(4, image.transparent_index)
  end

  def test_width
    assert_equal(240, sample_image.width)
  end
end