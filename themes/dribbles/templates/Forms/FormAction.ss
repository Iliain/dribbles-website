<% if $UseButtonTag %>
    <button class="action btn medium solid" $AttributesHTML>
        <% if $ButtonContent %>$ButtonContent<% else %>$Title.XML<% end_if %>
    </button>
<% else %>
    <input class="action extra class here" $AttributesHTML />
<% end_if %>
