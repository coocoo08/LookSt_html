$('body').on('click', '.addImg', function(){
    $(this).parent().find('.upload_input').click();
});

$('body').on('click', '.delete', function(){
    $(this).parent().find('input').val('');
    $(this).parent().find('img.preview').attr("src","");
    
    $(this).parent().find('img.preview').css("filter","");
    $(this).hide();
    $(this).parent().find('.addImg').show();
});
function change(file) {
    var pic = $(file).parent().find(".preview");

    var addImg = $(file).parent().find(".addImg");

    var deleteImg = $(file).parent().find(".delete");

    var ext=file.value.substring(file.value.lastIndexOf(".")+1).toLowerCase();

    
    if(ext!='png'&&ext!='jpg'&&ext!='jpeg'){
        if (ext != '') {
            alert("图片的格式必须为png或者jpg或者jpeg格式！");
        }
        return;
    }
 
    var isIE = navigator.userAgent.match(/MSIE/)!= null,
        isIE6 = navigator.userAgent.match(/MSIE 6.0/)!= null;
    isIE10 = navigator.userAgent.match(/MSIE 10.0/)!= null;
    if(isIE && !isIE10) {
        file.select();

        $(file).blur();

        var reallocalpath = document.selection.createRange().text;
        
        if (isIE6) {
            pic.attr("src",reallocalpath);
        }else{
            
            pic.css("filter","progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale',src=\"" + reallocalpath + "\")");
            
            pic.attr('src','data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==');
        }
        addImg.hide();
        deleteImg.show();
    }else {
        html5Reader(file,pic,addImg,deleteImg);
    }
}

function html5Reader(file,pic,addImg,deleteImg){
    var file = file.files[0];
    var reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onload = function(e){
        pic.attr("src",this.result);
    }
    addImg.hide();
    deleteImg.show();
}
