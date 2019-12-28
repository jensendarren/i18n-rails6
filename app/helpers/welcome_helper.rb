module WelcomeHelper
  def cronuts_url
    return @cronuts_url if valid_url?(@cronuts_url)
    Rails.configuration.default_cronuts_url
  end

  def donuts_url
    return @donuts_url if valid_url?(@donuts_url)
    Rails.configuration.default_donuts_url
  end

  private

  def valid_url?(url)
    return !url.nil? && url.start_with?('http')
  end
end