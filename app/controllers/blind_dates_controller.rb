class BlindDatesController < ApplicationController
  include BlindDatesHelper

  def employees_index
    @blind = BlindDate.where('meeting_date > ?', Date.today - 7.days).last

    @pagy, @employees = pagy(Employee)
  end

  def create_next
    date = Date.today
    date += 1 + ((4 - date.wday) % 7)

    if BlindDate.is_next_ready?(date)
      BlindDatesHelper.already_exists_error
    else
      BlindDate.transaction do
        BlindDatesHelper.create_blind_date(date)
      end
    end
    #notify all employees to choose if they need lunch
    redirect_to controller: :blind_dates, action: :employees_index
  end

  def pick_restaurant
    # Authorize leader token
    # Leader pick restaurant
  end

  def employee_go_lunch
    # Authorize employee
    # Set does_want_food to true
  end
end