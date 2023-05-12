$(window).on('load', function () {
    setTimeout(function () {
        $('#splash-screen').fadeOut('slow', function () {
            $(this).remove();
        });
    }, 2800);
});