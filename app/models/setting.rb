class Setting < ApplicationRecord
  def logo_url
    logo.attached? ? url_for(logo) : '/assets/default_logo.svg'
  end
end
