require 'yaml'

module TechnologiesHelper
  def technologies
    technologies ||= YAML.load_file "#{Rails.root}/lib/assets/definitions/technologies.yml"
  end
end
