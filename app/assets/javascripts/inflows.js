$("#add-item").click(function(){
 	$('#cocconAddItem').trigger('click');
});

$(document).on('change', "input[name*='[inflow_details_attributes]'][name*='[start_number]']", function () {
    var input = $(this).parents('tr').find("input[name*='[inflow_details_attributes]'][name*='[quantity]']");
    var end_number = $(this).parents('tr').find("input[name*='[inflow_details_attributes]'][name*='[end_number]']").val();
    input.val(end_number - $(this).val() + 1);
    input.change();
});

$(document).on('change', "input[name*='[inflow_details_attributes]'][name*='[end_number]']", function () {
    var input = $(this).parents('tr').find("input[name*='[inflow_details_attributes]'][name*='[quantity]']");
    var start_number = $(this).parents('tr').find("input[name*='[inflow_details_attributes]'][name*='[start_number]']").val();
    input.val($(this).val() - start_number + 1);
    input.change();
});
