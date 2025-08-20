# frozen_string_literal: true

module StudioGame
  module Playable
    def drain
      self.health -= 10
    end

    def boost
      self.health += 15
    end
  end
end
