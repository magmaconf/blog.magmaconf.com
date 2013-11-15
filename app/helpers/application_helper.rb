module ApplicationHelper
  def remaining_days
    date_to_go = (Date.new(2014, 06, 1) - Date.today).to_i
    date_to_go.to_s.rjust(2, '0')
  end
end
