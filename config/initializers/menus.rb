# frozen_string_literal: true

::Rails.application.root_menu.group(:admin).group(:br_railties, :br_railties).within do |g|
  g.action(:federal_units).label(-> { ::BrRailties::FederalUnit.plural_name })
end
