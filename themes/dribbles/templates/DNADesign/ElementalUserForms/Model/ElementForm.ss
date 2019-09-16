<section class="section">
    <div class="container">
        <div class="content has-text-centered">
            <div class="header-intro">
                <% if $Title && $ShowTitle %>
                    <h3 class="title is-3" style="margin-bottom: 2em">$Title</h3>
                <% end_if %>
            </div>
        </div>
        <div class="columns $ExtraClass">
            <div class="column">
                $Form
            </div>
        </div>
    </div>
</section>