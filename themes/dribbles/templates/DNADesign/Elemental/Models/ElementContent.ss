<% if $ExtraClass %><div class="$ExtraClass"><% end_if %>

    <div class="content">
        <% if $ShowTitle %>
            <h2 class="is-h2">$Title</h2>
        <% end_if %>
        $HTML
    </div>

<% if $ExtraClass %></div><% end_if %>