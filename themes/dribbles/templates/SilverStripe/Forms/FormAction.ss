<% if $UseButtonTag %>
    <button class="button" $AttributesHTML>
        <% if $ButtonContent %>$ButtonContent<% else %>$Title.XML<% end_if %>
    </button>
<% else %>
    <input class="button" $AttributesHTML />
<% end_if %>