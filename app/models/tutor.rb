class Tutor < ApplicationRecord

  has_many :took
  has_many :tutor, through: :took
  has_many :available_block
  validates :name, presence: true

  def available?
    available_block.each do |block|
      if block.day == today && now.between?(block.start, block.end)
        return "Available"
      end
    end
    return "Unavailable"
  end

  private 

  def today
    Date.today.wday
  end

  def now
    Time.now.strftime('%H:%M:%S')
  end
end
 