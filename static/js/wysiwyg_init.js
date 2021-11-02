tinymce.init({
   selector: "#content",
   menubar:'table',
   browser_spellcheck: true,
   statusbar: false,
   entity_encoding : "raw",
   plugins: [
        "advlist anchor autolink code image link lists table textcolor"
    ],
   target_list:false,
    
   toolbar: "undo redo | styleselect | bold italic | bullist numlist | link unlink | image | code | forecolor  backcolor",
   content_css : "../static/css/wysiwyg.css"

});
