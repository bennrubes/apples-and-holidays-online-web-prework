require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter].each {|holiday, array| array << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season] = {holiday_name => supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each {|season, holidays| 
    puts "#{season.to_s.capitalize}:".chomp
    holidays.each {|holiday, supplies| 
      array = holiday.to_s.split("_")
      holiday_array = []
        array.each {|x| holiday_array << x.capitalize!}
      holiday = holiday_array.join(" ")
      puts "  #{holiday}: #{supplies.join(", ")}"
  }
}
end

def all_holidays_with_bbq(holiday_hash)
answer = []
holiday_hash.each {|season, holidays|
  holidays.each {|holiday, supplies|
    supplies.each {|supply|
     if supply == "BBQ"
        answer << holiday
      end}
    }
  }
answer
end







