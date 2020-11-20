export function checkboxChecked {
  $(function(){
      var test = localStorage.input === 'true'? true: false;
      $('input').prop('checked', test || false);
  });
}

