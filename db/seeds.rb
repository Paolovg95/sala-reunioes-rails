Meeting.destroy_all

  Meeting::DAYS.each do |day|
    Meeting::TIMES.each do |hour|
      meeting = Meeting.create(
        day: day,
        time: hour
      )
    end
  end
