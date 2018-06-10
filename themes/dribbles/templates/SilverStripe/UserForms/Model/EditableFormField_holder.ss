<div id="$Name" class="field">
	<% if $Title %><label class="label" for="$ID">$Title</label><% end_if %>
	<div class="control">
		$Field
	</div>
	<% if $RightTitle %><span id="{$Name}_right_title" class="right-title">$RightTitle</span><% end_if %>
	<% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
</div>
