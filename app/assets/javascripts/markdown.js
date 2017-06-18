$(function(){

    $('#markdown').keyup(function () {
        var sync = function(){

            var user_write = $('#markdown').val();
            var md = marked(user_write);
            $('#preview').html(md);
        };

        sync();
    })
});