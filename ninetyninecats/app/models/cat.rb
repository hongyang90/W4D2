class Cat < ApplicationRecord
  COLORS = ['red', 'blue', 'green', 'yellow', 'orange', 'violet', 'indigo'] 
  validates :color, presence: true, inclusion: { in: COLORS,  message: "%{color} is not a valid color" }
  validates :sex, presence: true, inclusion: { in: %w(M F), message: "%{sex} is male or female" }
  validates :birth_date, :name, :description, presence: true

  include ActionView::Helpers::DateHelper 

  def age
    # time = Time.now
    # time.year - self.birth_date.year 
    time_ago_in_words(self.birth_date)
  end
end
