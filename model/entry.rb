class TargetBlankRenderer < Redcarpet::Render::HTML
  def initialize(extensions = {})
    super extensions.merge(link_attributes: { target: "_blank" })
  end
end

class Entry < ActiveRecord::Base

end
