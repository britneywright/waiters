$(function () {
  function modalSuccess (node) {
    node.modal('hide');
    node.find('form input[type="text"]').val('');

    clearPreviousFormErrors(node);
  }

  function renderFormErrors (node, errors) {
    clearPreviousFormErrors(node);

    for (var field in errors) {
      var control = $('input[name="' + field + '"]', node).parent();

      control.addClass('has-error');

      $('.help-block', control).html(errors[field].join(' & '));
    }
  }

  function clearPreviousFormErrors (node) {
    $('.form-group.has-error', node).each(function () {
      $('.help-block', node).html('');
      node.removeClass('has-error');
    });
  }

  function modalAjaxError (event, jqxhr, settings, exception) {
    // note: jqxhr.responseJSON undefined, parsing responseText instead
    var errors = $.parseJSON(jqxhr.responseText).errors;

    var model = Object.keys(errors)[0];
    var selector = "#new_" + model;

    renderFormErrors($(selector), errors[model]);
  }

  function modalAjaxSuccess (event, jqxhr, params, exception) {
    modalSuccess($(event.data));
  }


  $(document).bind('ajaxError', 'form', modalAjaxError);
  $(document).bind('ajaxSuccess', 'form', modalAjaxSuccess);
});