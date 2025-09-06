class Trip < ApplicationRecord
  def complete?
    end_date < Date.current
  end
end
