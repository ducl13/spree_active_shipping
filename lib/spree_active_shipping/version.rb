module SpreeActiveShipping
  module_function

  # Returns the version of the currently loaded SpreeActiveShipping as a
  # <tt>Gem::Version</tt>.SpreeActiveShipping
  def version
    Gem::Version.new VERSION::STRING
  end

  module VERSION
    MAJOR = 3
    MINOR = 7
    TINY  = 0
    PRE   = 'alpha'.freeze

    STRING = [MAJOR, MINOR, TINY, PRE].compact.join('.')
  end
end
