<div class="container">
    <div class="columns">
        <div class="column">
            <div class="content">
                $ElementalArea
                $Form
                <% if $WishItems %>
                    <h2 class="is-2" style="text-align: center">Progress</h2>
                    <progress class="progress is-info is-medium" value="$countOwned" max="$WishItems.Count">$countOwned</progress>
                    <h2 class="is-2" style="text-align: center">List</h2>
                    <table class="table is-bordered is-hoverable is-narrow is-striped">
                        <thead>
                        <tr>
                            <th><abbr title="Do I already own this?">Owned?</abbr></th>
                            <th>Name</th>
                            <th>Type</th>
                            <th><abbr title="Optional; Video games only">Console*</abbr></th>
                            <th>Description</th>
                        </tr>
                        </thead>
                        <tbody>
                            <% loop $WishItems %>
                            <tr <% if $Status %>class="is-selected"<% end_if %>>
                                <td>
                                    <label class="checkbox" disabled>
                                        <input type="checkbox" disabled <% if $Status %>checked<% end_if %>>
                                    </label>
                                </td>
                                <td>$Name</td>
                                <td>$Type</td>
                                <td>$Console</td>
                                <td>$Description</td>
                            </tr>
                            <% end_loop %>
                        </tbody>
                    </table>
                <% end_if %>
            </div>
        </div>
    </div>
</div>