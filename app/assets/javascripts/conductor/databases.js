//= require 'ace/mode-yaml'
$(document).ready(function(){
  var editor = ace.edit("editor");
  var textarea = $('#database_content');
  textarea.hide();

  editor.setTheme("ace/theme/textmate");
  editor.getSession().setMode("ace/mode/yaml");
  editor.getSession().setValue(textarea.val());
  editor.getSession().on('change', function(){
    textarea.val(editor.getSession().getValue());
  });
});

