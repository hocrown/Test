$(document).ready(function() {
    $("input[type='radio']").click(function() {
        var value = $("input[type=radio][name=petNo]:checked").val();
            document.getElementById("petNo").value = value;
    })
});