function sync() {
    var user_write = $('#markdown').val();
    var md = marked(user_write);
    $('#preview').html(md);
    console.log("read markdown");
}