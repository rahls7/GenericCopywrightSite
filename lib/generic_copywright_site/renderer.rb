module GenericCopywrightSite
  class Renderer
    def self.copywright(name, msg)
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end
