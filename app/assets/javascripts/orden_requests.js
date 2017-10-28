var update_total_amount = function() {
  total_quantity = parseFloat($("#orden_request_ticket_quantity").val());
  price_by_ticket = parseFloat($("#orden_request_price_by_ticket").val());
  total_amount = $("#orden_request_total_amount");
  total_amount.val( total_quantity * price_by_ticket );
}

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
    update_total_amount();
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
  update_total_amount();
})

$(document).ready(function(){
  $("#orden_request_price_by_ticket")
    .on('change',update_total_amount)
})
