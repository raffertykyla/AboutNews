class ConventionController < ApplicationController

  def show
    @convention = Cms::Convention.last
  end

end
