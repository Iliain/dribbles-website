webpackJsonp([1],{178:function(e,n){e.exports=InsertLinkModal},22:function(e,n){e.exports=i18n},38:function(e,n){e.exports=Injector},960:function(e,n,t){"use strict";function i(e){return e&&e.__esModule?e:{default:e}}Object.defineProperty(n,"__esModule",{value:!0});var r=t(22),a=i(r),o=t(97),l=i(o),d=t(0),s=i(d),u=t(26),c=i(u),f=t(12),p=i(f),m=t(178),x=t(38);l.default.addAction("sslink",{text:a.default._t("Admin.LINKLABEL_EXTERNALURL","Link to external URL"),onclick:function(e){return e.execCommand("sslinkexternal")},priority:52});var k={init:function(e){e.addCommand("sslinkexternal",function(){window.jQuery("#"+e.id).entwine("ss").openLinkExternalDialog()})}},L="insert-link__dialog-wrapper--external",_=(0,x.loadComponent)((0,m.createInsertLinkModal)("SilverStripe\\Admin\\LeftAndMain","EditorExternalLink"));p.default.entwine("ss",function(e){e("textarea.htmleditor").entwine({openLinkExternalDialog:function(){var n=e("#"+L);n.length||(n=e('<div id="'+L+'" />'),e("body").append(n)),n.addClass("insert-link__dialog-wrapper"),n.setElement(this),n.open()}}),e("#"+L).entwine({renderModal:function(e){var n=this,t=function(){return n.close()},i=function(){return n.handleInsert.apply(n,arguments)},r=this.getOriginalAttributes(),o=tinymce.activeEditor.selection,l=o.getContent()||"",d=o.getNode().tagName,u="A"!==d&&""===l.trim();c.default.render(s.default.createElement(_,{show:e,onInsert:i,onHide:t,title:a.default._t("Admin.LINK_EXTERNAL","Insert external link"),bodyClassName:"modal__dialog",className:"insert-link__dialog-wrapper--external",fileAttributes:r,identifier:"Admin.InsertLinkExternalModal",requireLinkText:u}),this[0])},buildAttributes:function(e){var n=this._super(e),t=n.href;return t.match(/:\/\//)||(t=window.location.protocol+"//"+t),t=t.replace(/.*:\/\/(#.*)$/,"$1"),t.match(/:\/\/$/)&&(t=""),n.href=t,n}})}),tinymce.PluginManager.add("sslinkexternal",function(e){return k.init(e)}),n.default=k},97:function(e,n){e.exports=TinyMCEActionRegistrar}},[960]);