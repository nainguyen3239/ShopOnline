function previewFile()
{
    var priview = document.querySelector(".img");
    var file = document.querySelector('input[type=file]').files[0];
    var reader = new FileReader();
    reader.onloadend = function () {
        priview.src = result;
    }
    if (file) {
        reader.readAsDataURL(file);
    } else {
        preview.src = ""; 
    }
}