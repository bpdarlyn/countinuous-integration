$("#add-item-orden-request").click(function(){
 	$('#cocconAddItem').trigger('click');
});

$(document).on('change', "input[name*='[orden_request_details_attributes]'][name*='[quantity]']", function () {
    var total_quantity = 0;
    $("input[name*='[orden_request_details_attributes]'][name*='[quantity]']")
      .each(function(){
        total_quantity += parseInt($(this).val());
      });
    var input_total_quantity = $("#orden_request_ticket_quantity");
    input_total_quantity.val(total_quantity);
});


$(document).on('click',".remove-orden-request-field", function(){
  var input = $(this).parents('tr').find("input[name*='[orden_request_details_attributes]'][name*='[quantity]']");
  var total_quantity = 0;
  $("input[name*='[orden_request_details_attributes]'][name*='[quantity]']")
    .each(function(){
      total_quantity += parseInt($(this).val());
    });

  total_quantity -= parseInt(input.val());
  var input_total_quantity = $("#orden_request_ticket_quantity");
  input_total_quantity.val(total_quantity);
})
