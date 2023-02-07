class Utils
  def self.get_schema_from_url(url)
    url.split(':')[0]
  end

  def self.get_host_from_url(url)
    url.split(':')[1].split('/')[2]
  end
end