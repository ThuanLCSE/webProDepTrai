﻿
    $(".table").animate({
        width: "100%",
        margin: "0",
        opacity: 1,
    }, 2000);
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
function showModalOrd(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13,v14) {
    $(".detailo").css("display", "block");
    var ddlArray= new Array();
var ddl = document.getElementsByClassName('txt2')[0];
for (i = 0; i < ddl.options.length; i++) {
   if (v2 == ddl .options[i].text) 
     $(".txt2").val(ddl .options[i].value);
}
 ddlArray= new Array();
ddl = document.getElementsByClassName('txt3')[0];
for (i = 0; i < ddl.options.length; i++) {
   if (v3 == ddl .options[i].text)
   {
     $(".txt3").val(ddl .options[i].value);
     break;
     }
}
 ddlArray= new Array();
ddl = document.getElementsByClassName('txt7')[0];
for (i = 0; i < ddl.options.length; i++) {
   if (v7 == ddl .options[i].text)
   {
     $(".txt7").val(ddl .options[i].value);
     break;
     }
}
    $(".txt1").val(v1);
    $(".txt4").val(v4);
    $(".txt5").val(v5);
    $(".txt6").val(v6);

    $(".txt8").val(v8);
    $(".txt9").val(v9);
    $(".txt10").val(v10);
    $(".txt11").val(v11);
    $(".txt12").val(v12);
    $(".txt13").val(v13);
    $(".txt14").val(v14);
    $("#editModal").modal();
}
function showModalOrdDet(v1, v2, v3, v4, v5) {

    $(".txt1").val(v1);
    $(".txt2").val(v2);
    $(".txt3").val(v3);
    $(".txt4").val(v4);
    $(".txt5").val(v5);
    $(".detailo").css("display", "block");
    $("#editModalDet").modal();
}
function showModalSup(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11) {

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
   
    $("#editModal").modal();
}
function showModalCus(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11) {

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

    $("#editModal").modal();
}
function showModal() {
    $(".txt1").val('');
    $(".txt2").val('');
    $(".txt3").val('');
    $(".txt4").val('');
    $(".txt5").val('');
    $(".txt6").val('');
    $(".txt7").val('');
    $(".txt8").val('');
    $(".txt9").val('');
    $(".txt10").val('');
    $(".txt11").val('');
    $(".txt12").val('');
    $(".txt13").val('');
    $(".txt14").val('');
    $("#editModal").modal();
}
function showModalDet() {
    $(".txt1").val('');
    $("#editModalDet").modal();
}
function showModalCat(v1, v2, v3) {

    $(".txt1").val(v1);
    $(".txt2").val(v2);
    $(".txt3").val(v3);
    $("#editModal").modal();
}
function showModalShi(v1, v2, v3) {

    $(".txt1").val(v1);
    $(".txt2").val(v2);
    $(".txt3").val(v3);
    $("#editModal").modal();
}
function showModalPro(v1, v2, v3, v4, v5, v6) {

    $(".txt1").val(v1);
    $(".txt2").val(v2);
    $(".txt3").val(v3);
    $(".txt4").val(v4);
    $(".txt5").val(v5);
    $(".txt6").val(v6);
    $("#editModal").modal();
}

function cancel() {
    alert('don\'t DO THAT again!');
}
$('.searchFunc').click(function(e) {
    e.stopPropagation();
});
$('.txt1').keydown( function(e) {
  e.preventDefault();
    e.stopPropagation();
    
});

$('.txt1').keypress( function(e) {
  e.preventDefault();
    e.stopPropagation();
    
});
