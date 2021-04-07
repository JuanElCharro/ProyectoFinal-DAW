$(function () {
    $('body').on('click', '.nav-link', function () {
        $(this).closest('.nav-link').addClass('active');
        $('.nav-link').removeClass('active');
    });
});