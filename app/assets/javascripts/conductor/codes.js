//= require 'ace/mode-coffee'
//= require 'ace/mode-css'
//= require 'ace/mode-gitignore'
//= require 'ace/mode-haml'
//= require 'ace/mode-html'
//= require 'ace/mode-html_ruby'
//= require 'ace/mode-javascript'
//= require 'ace/mode-json'
//= require 'ace/mode-less'
//= require 'ace/mode-markdown'
//= require 'ace/mode-ruby'
//= require 'ace/mode-sass'
//= require 'ace/mode-scss'
//= require 'ace/mode-xml'
//= require 'ace/mode-yaml'
$(document).ready(function(){
  var editor = ace.edit("editor");
  var textarea = $('#code_content');
  textarea.hide();
  var filePath = $('#code_path').val();
  var modelist = ace.require('ace/ext/modelist');
  var mode = modelist.getModeForPath(filePath).mode;
  console.log(textarea);
  editor.setTheme("ace/theme/textmate");
  editor.getSession().setMode(mode);
  editor.getSession().setValue(textarea.val());
  editor.getSession().on('change', function(){
    textarea.val(editor.getSession().getValue());
  });
});



