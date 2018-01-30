module Collect
  module Data
    class CollectController < ::ApplicationController
      def data
        @team_members = TeamMember.all
      end
    end
  end
end