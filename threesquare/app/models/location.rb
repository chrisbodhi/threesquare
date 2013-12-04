class Location < ActiveRecord::Base

    def snippet
      self.review.truncate(30)
    end

end
