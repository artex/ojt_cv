$(document).ready(function() {
    var maxField = 2;
    var addPhone = $('.add_phone');
    var phoneWrapper = $('.phone_wrapper');
    var fieldHTML = '<div class="phone_item"><input type="number" class="data phone" name="applicant[phone_no2]" value=""/><a href="javascript:void(0);" class="remove_phone"><i class="fas fa-minus"></i></a></div>'; //New input field html 
    var x = 1;
    $(addPhone).click(function() {
        if (x < maxField) {
            x++;
            $(phoneWrapper).append(fieldHTML);
        }
    });
    $(phoneWrapper).on('click', '.remove_phone', function(e) {
        e.preventDefault();
        $(this).parent('div').remove();
        x--;
    });

});
$(document).ready(function() {
    $("#profile_photo").change(function() {
        var filename = this.files[0].name;
        $('.show_name').html(filename);
    });
});
$(document).ready(function() {
    var count = 2
    var maxField = 6;
    var addLanguage = $('.add_language');
    var languageWrapper = $('.language_wrapper');
    var x = 1;
    $(addLanguage).click(function() {
        if (x < maxField) {
            var fieldHTML = '<div class="language_item"><input type="text" class="data language text" name="programming_language[]" value=""/><input type="text" class="data level text" name="programming_level[]" value=""/><a href="javascript:void(0);" class="remove_phone"><i class="fas fa-minus"></i></a></div>'; //New input field html
            x++;
            $(languageWrapper).append(fieldHTML);
        }
    });

    $(languageWrapper).on('click', '.remove_phone', function(e) {
        e.preventDefault();
        $(this).parent('div').remove();
        // $(".language_wrapper div:nth-last-of-type(1)").remove();
        x--;
    });
});
$(document).ready(function() {
    $(".jobexp").change(function() {
        if (this.checked) {
            $(".ebdiv").css("display", "block");
        } else {
            $(".ebdiv").css("display", "none");
        }
    });
});
$(document).ready(function() {
    $(".reset-btn").click(function() {
        location.reload();
    });
});