$(function(){

    console.log("readed JavaScript!");
    sync();

    $('#markdown').keyup(function () {
            var update = function(){
                sync()
            console.log("push key!!");
        };

        update();
    });

    function sync(){
        var user_write = $('#markdown').val();
        var md = marked(user_write);
        $('#preview').html(md);
        console.log("read markdown");
    }
});