// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require tinymce-jquery
$(document).ready(function() {
  $(".delete_mes").live('ajax:success', function(evt, data, status, xhr){
    $(this).closest('div.content').fadeOut();
  });
});
tinyMCE.init({

    mode: 'textareas',
     theme: 'advanced',
     plugins : "autoresize,table",
     //apply_source_formatting : false,
	theme_advanced_toolbar_location : "top",
    theme_advanced_toolbar_align : "left",

    
        theme_advanced_buttons1 : "bold,blockquote,|,bullist,numlist,|,undo,redo,|, link,unlink,|,cleanup, |,code,removeformat,|,image",
        theme_advanced_buttons2 : "tablecontrols",
        theme_advanced_buttons3 : ""
  });

//LI  
<!--
new Image().src = "//counter.yadro.ru/hit?r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";h"+escape(document.title.substring(0,80))+
";"+Math.random();//-->