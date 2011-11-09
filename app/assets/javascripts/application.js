// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require jquery.dataTables.min
//= require rails.validations

function makeOptions (data, first)
{
  var output = [];
  output.push('<option value>' + first + '</option>');
  $.each(data, function(key, value)
    {
      output.push('<option value="'+ value.id +'">'+ value.name +'</option>');
    });
  return output.join('');
}

function preset (id, value)
{
  if (value != "")
  {
    alert(id);
    $(id).each( function () {
        alert($(this, "option"));
    });
  }
}

jQuery(function () {

    $("select.update_cities_select").each( function () {
      this.onchange = function () {
      var state = $(this).find("option:selected").val();
      if (state == "") state = "0";
      jQuery.getJSON('/cities_json/' + state, function(data){
        $('#provider_city_id').html(makeOptions(data, "Selecione a cidade"));
        });
      };
      this.onload = function () {
        var action = location.toString().split("/").pop();
        if (action == "edit") {
          
        }
      }
      });

    $("#providers").dataTable();
    $("#products").dataTable();

});

function remove_fields(link) {
  alert($(link).up(".fields"));
  $(link).previous("input[type=hidden]").value = "1";
  $(link).up(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).up().insert({
    before: content.replace(regexp, new_id)
  });
}

$(function (){
	$("#sell_product_tokens").tokenInput("/products.json", { 
		crossDomain: false, 
		prePopulate: $("#ad_accessory_tokens").data("pre")
		})});
