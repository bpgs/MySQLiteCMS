tinymce.PluginManager.add("code",function(a){function b(){var b=a.windowManager.open({title:"Source code",body:{type:"textbox",name:"code",multiline:!0,

/* ########## */
minWidth:a.getParam("code_dialog_width",Math.min(tinymce.DOM.getViewPort().w-100)),minHeight:a.getParam("code_dialog_height",Math.min(tinymce.DOM.getViewPort().h-200)),
/* ########## */

spellcheck:!1,style:"direction: ltr; text-align: left"},onSubmit:function(b){a.focus(),a.undoManager.transact(function(){a.setContent(b.data.code)}),a.selection.setCursorLocation(),a.nodeChanged()}});b.find("#code").value(a.getContent({source_view:!0}))}a.addCommand("mceCodeEditor",b),a.addButton("code",{icon:"code",tooltip:"Source code",onclick:b}),a.addMenuItem("code",{icon:"code",text:"Source code",context:"tools",onclick:b})});