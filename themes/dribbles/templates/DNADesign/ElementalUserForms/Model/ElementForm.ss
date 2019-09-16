<section class="section" id="element-$ID">
    <div class="container">
        <div class="columns">
            <div class="column"></div>
            <div class="column is-7">
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
            <div class="column"></div>
        </div>

    </div>
</section>