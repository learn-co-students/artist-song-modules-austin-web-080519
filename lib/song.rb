require 'pry'
require_relative 'module'

class Song
  attr_accessor :name
  attr_reader :artist

  extend SharedMethods::ClassMethods
  include SharedMethods::InstanceMethods

  @@all = []

  def initialize
    @@all << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end

end
