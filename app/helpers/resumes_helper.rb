module ResumesHelper

  def language_options
    return [['English', 0], ['Français', 1]]
  end

  def retrieve_cv(language)
    cv = ""
    if not Resume.where(language: language).empty?
      if Resume.where(language: language).first.cv
        cv = Resume.where(language: language).first.cv.url
      end
    end
    return cv
  end
  
end
