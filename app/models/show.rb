class Show < ActiveRecord::Base

  def self.highest_rating #  returns the TV show with the highest rating (FAILED - 1)
    show = Show.maximum(:rating)
    # show.rating
    show
  end


  def self.most_popular_show
    #returns the tv show with the highest rating (FAILED - 2)
    highest = self.highest_rating
    # STDERR puts "**************#{id}"
    show = Show.find_by rating: highest
    show
  end


  def self.lowest_rating
    #returns the TV show with the lowest rating (FAILED - 3)
    show=Show.minimum(:rating)
    # show.rating
    show
  end

  def self.least_popular_show
    #returns the tv show with the lowest rating (FAILED - 4)
    lowest = self.lowest_rating
    # show = Show.find_by rating: lowest
    # show
    show = Show.where("rating = ?",lowest)
    show[0]
  end

  def self.ratings_sum
    #returns the sum of all the ratings of all the tv shows (FAILED - 5)
    # sum=0
    # Show.find_each  {|s| sum += s.rating }
    # sum
    Show.sum(:rating)
  end

  def self.popular_shows
    #returns an array of all of the shows with a rating above 5 (FAILED - 6)
    # show_array=[]
    # Show.find_each {|s| show_array << s if s.rating > 5}
    # show_array
    Show.where("rating > ?",5)
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end

end #class
