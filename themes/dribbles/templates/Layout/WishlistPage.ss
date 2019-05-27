<div class="container">
    <div class="columns">
        <div class="column">
            <div class="content">
                $ElementalArea
                $Form
                <% if $WishItems %>
                    <h2 class="is-2" style="text-align: center">Progress: $calculatePercentage%</h2>
                    <progress class="progress $ProgressBarColour is-medium is-fullwidth" value="$countOwned" max="$WishItems.Count">$countOwned</progress>

                    <h2 class="is-2" style="text-align: center">List</h2>
                    <p><span id="archiveButton" class="icon is-large" style="cursor: pointer"><i class="fas fa-lg fa-search"></i></span> Hide/show owned items</p>
                    <div style="overflow-x: auto;">
                        <table class="table is-bordered is-hoverable is-striped">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Type</th>
                                <th>Description</th>
                            </tr>
                            </thead>
                            <tbody>
                                <% loop $WishItems %>
                                <tr <% if $State = 'Gifted' %>class="archive" style="$Top.GiftedColour"<% else_if $State = 'Purchased' %>class="archive" style="$Top.PurchasedColour"<% end_if %>>
                                    <td>$Name</td>
                                    <td>$Type</td>
                                    <td>$Description</td>
                                </tr>
                                <% end_loop %>
                            </tbody>
                        </table>
                    </div>
                <% end_if %>
            </div>
        </div>
    </div>
</div>