﻿var upgradeTime = 36001;
var seconds = upgradeTime;
function timer() {
    var days = Math.floor(seconds / 24 / 60 / 60);
    var hoursLeft = Math.floor((seconds) - (days * 86400));
    var hours = Math.floor(hoursLeft / 3600);
    var minutesLeft = Math.floor((hoursLeft) - (hours * 3600));
    var minutes = Math.floor(minutesLeft / 60);
    var remainingSeconds = seconds % 60;

    if (remainingSeconds < 10) {
        remainingSeconds = "0" + remainingSeconds;
    }
    document.getElementById('countdown').innerHTML = hours + "h:" + minutes + "m:" + remainingSeconds + "s";
    if (seconds == 0) {
        clearInterval(countdownTimer);
        document.getElementById('countdown').innerHTML = "Completed";
    } else {
        seconds--;
    }
}
var countdownTimer = setInterval('timer()', 1000);