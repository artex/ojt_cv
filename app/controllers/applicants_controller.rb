class ApplicantsController < ApplicationController
  def applicants
  end
  def confirm
    @form = params;
  end
end
