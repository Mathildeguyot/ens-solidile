export function stayChecked {
  $('input').on('change', function() {
      localStorage.input = $(this).is(':checked');
      console.log($(this).is(':checked'));
  });
}
