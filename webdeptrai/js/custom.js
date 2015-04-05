function showModalEmp(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14) {

    $(".txt1").val(v1);
    $(".txt2").val(v2);
    $(".txt3").val(v3);
    $(".txt4").val(v4);
    $(".txt5").val(v5);
    $(".txt6").val(v6);
    $(".txt7").val(v7);
    $(".txt8").val(v8);
    $(".txt9").val(v9);
    $(".txt10").val(v10);
    $(".txt11").val(v11);
    $(".txt12").val(v12);
    $(".txt13").val(v13);
    $(".txt14").val(v14);
    $("#editModal").modal();


}
function showModalCat(v1, v2, v3) {

    $(".txt1").val(v1);
    $(".txtVS").val(v1);
    $(".txt2").val(v2);
    $(".txt3").val(v3);
    $("#editModal").modal();


}

$('.searchFunc').click(function(e) {
    e.stopPropagation();
});