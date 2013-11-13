module ApplicationHelper
  def remaining_days
    date_to_go = (Date.new(2013, 12, 31) - Date.today).to_i
    date_to_go.to_s.rjust(2, '0')
  end
end
