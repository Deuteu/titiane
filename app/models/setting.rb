class Setting < ActiveRecord::Base
  self.primary_key = "key"
  validate :custom_validation

  def valid_format
    if regex_validation.keys.include?(key)
      return regex_validation[key][1]
    end
  end

  private
  def custom_validation
    if regex_validation.keys.include?(key)
      if not regex_validation[key][0].match(value)
        errors.add(:value, regex_validation[key][1])
      end
    end
  end

  def regex_validation
    t = {
      "mail" => [/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, "Format allowed : mail@domain.xx"],
      "phone" => [/\A\+{0,1}\d{1,15}\z/, "Format allowed : (+)digits"],
      "linkedin" => [/^(https?\:\/\/[a-z]{2,3}\.linkedin\.com\/in\/)/, "Format allowed : http(s)://<locale>.linkedin.com/in/..."]
    }
    return t
  end
end
