require 'logger'
class ApplicantRepository
    class << self

        def createApplicant(form)
            @is_save_form = form.save
        end

    end
end