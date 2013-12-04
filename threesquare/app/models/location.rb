class Location < ActiveRecord::Base

  # Error - not truncating review but
  # does add the URL
    def snippet
      self.review.truncate(30)
      #self.review << " ...http://tinyurl.com/rv#{rand(10..99)}"
    end

end
