module BlindDatesHelper
  def self.already_exists_error
    raise 'Next friday blind meeting\'s already exists'
  end

  def self.could_not_create_error(blind_date)
    raise blind_date.errors.full_messages.join(', ')
  end

  def self.create_blind_date(date)
    next_date = BlindDate.new
    next_date.meeting_date = date

    could_not_create_error(next_date) unless next_date.save

    next_date.meeting_date = date
    next_date.create_teams
    'Blind date created successfully'
  end
end
