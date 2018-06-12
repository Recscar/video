var timers = [];
var isShow = true;
$(".send").on("click", function () {
    var jqueryDom = createScreenbullet($("#screenBulletText").val());
    addInterval(jqueryDom);
});
$(".clear").on("click", function () {
    if (isShow) {
        $(".bullet").css("opacity", 0);
        isShow = false;
    } else {
        $(".bullet").css("opacity", 1);
        isShow = true;
    }
});
function createScreenbullet(text) {
    var jqueryDom = $("<div class='bullet'>" + text + "</div>");
    var fontColor = "rgb(" + Math.floor(Math.random() * 256) + "," + Math.floor(Math.random() * 256) + "," + Math.floor(Math.random()) + ")";
    var fontSize = Math.floor((Math.random() + 1) * 24) + "px";
	var fontopacity = 0.8;
	var fontfamily = "Microsoft YaHei";
    var left = $(".screen_container").width() + "px";
    var top = Math.floor(Math.random() * 410) + "px";
    top = parseInt(top) > 552 ? "352px" : top;
    jqueryDom.css({
        "position": 'absolute',
        "color": fontColor,
        "font-size": fontSize,
        "left": left,
        "top": top,
	    "opacity": fontopacity,
		"font-family": fontfamily
         
    });
    $(".screen_container").append(jqueryDom);
    return jqueryDom;
}
function addInterval(jqueryDom) {
    var left = jqueryDom.offset().left - $(".screen_container").offset().left;
    var timer = setInterval(function () {
        left--;
        jqueryDom.css("left", left + "px");
        if (jqueryDom.offset().left + jqueryDom.width() < $(".screen_container").offset().left) {
            jqueryDom.remove();
            clearInterval(timer);
        }
    }, 10);
    timers.push(timer);
}