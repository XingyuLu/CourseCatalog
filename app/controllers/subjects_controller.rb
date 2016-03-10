class SubjectsController < ApplicationController
  def index
    @subjects = Subject.select(:name).uniq.order(:name)
  end
end
