$(function(){
    document.getElementById('rzrp-jumpscare').pause();

    window.addEventListener('message', function (event) {
        var data = event.data

        if (data.action == "scare") {
            if (data.show == true) {
                var thisVid = document.getElementById('rzrp-jumpscare');

                thisVid.play();
                thisVid.loop = true;
                thisVid.volume = 1.0;

                $("#rzrp-jumpscare").show();
            } else {
                var thisVid = document.getElementById('rzrp-jumpscare');

                thisVid.pause();
                thisVid.volume = 0.0;
                
                $('#rzrp-jumpscare').hide();
            }
        }
    });

})
