class ApplicantService
    class << self

        def createApplicant(form)
            @is_save_form = ApplicantRepository.createApplicant(form)
        end

    end
end