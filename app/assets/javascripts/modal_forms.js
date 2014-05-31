$(function () {
  function modal_success (node) {
    node.modal('hide');
    node.find('form input[type="text"]').val('');

    clear_previous_form_errors(node);
  }

  function render_form_errors (node, errors) {
    clear_previous_form_errors(node);

    for (var field in errors) {
      var control = $('input[name="' + field + '"]', node).parent();

      control.addClass('has-error');

      $('.help-block', control).html(errors[field].join(' & '));
    }
  }

  function clear_previous_form_errors (node) {
    $('.form-group.has-error', node).each(function () {
      $('.help-block', node).html('');
      node.removeClass('has-error');
    });
  }

  $(document).bind('ajaxError', 'form', function(event, jqxhr, settings, exception) {
    // note: jqxhr.responseJSON undefined, parsing responseText instead
    var errors = $.parseJSON(jqxhr.responseText).errors;
    var model = Object.keys(errors)[0];
    var selector = "#new_" + model;

    render_form_errors($(selector), errors[model]);
  });
});