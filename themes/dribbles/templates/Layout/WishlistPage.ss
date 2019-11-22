<% include Header %>

<section class="section">
    <div class="container">
        <div class="columns">
            <div class="column">
                <div class="content">
                    $ElementalArea

                    <h5 class="title is-5">Unclaimed</h5>

                    <div class="columns">
                        <div class="column" id="unclaimed-items">
                            <% if $getWishItems('Unclaimed') %>
                                <% loop $getWishItems('Unclaimed') %>
                                    <article class="panel is-info unclaimed" id="panel-$ID">
                                        <p class="panel-heading" style="margin-bottom: 0">
                                            $Title
                                        </p>
                                        <% if $Type %>
                                            <div class="panel-block">
                                                <span class="panel-icon">
                                                  <i class="fas fa-tag" aria-hidden="true"></i>
                                                </span>
                                                $Type
                                            </div>
                                        <% end_if %>
                                        <% if $Description %>
                                            <div class="panel-block">
                                                <span class="panel-icon">
                                                  <i class="fas fa-align-left" aria-hidden="true"></i>
                                                </span>
                                                $Description
                                            </div>
                                        <% end_if %>
                                        <div class="panel-block" id="form-panel-$ID">
                                            <form action="{$Top.Link}Claim" method="POST" class="claimForm" id="$ID" style="width: 100%">
                                                <input type="hidden" id="itemID" name="itemID" value="$ID">
                                                <button class="button is-link is-fullwidth">
                                                    Claim
                                                </button>
                                            </form>
                                        </div>
                                    </article>
                                <% end_loop %>
                            <% else %>
                                <p class="no-unclaimed">There are currently no items in the list.</p>
                            <% end_if %>
                        </div>
                        <div class="column is-6"></div>
                    </div>


                    <h5 class="title is-5">Claimed</h5>
                    <div class="columns">
                        <div class="column" id="claimed-items">
                            <% if $getWishItems('Claimed') %>
                                <% loop $getWishItems('Claimed') %>
                                    <article class="panel is-primary claimed">
                                        <p class="panel-heading" style="margin-bottom: 0">
                                            $Title
                                        </p>
                                        <% if $Type %>
                                            <div class="panel-block">
                                                <span class="panel-icon">
                                                  <i class="fas fa-tag" aria-hidden="true"></i>
                                                </span>
                                                $Type
                                            </div>
                                        <% end_if %>
                                        <% if $Description %>
                                            <div class="panel-block">
                                                <span class="panel-icon">
                                                  <i class="fas fa-align-left" aria-hidden="true"></i>
                                                </span>
                                                $Description
                                            </div>
                                        <% end_if %>
                                    </article>
                                <% end_loop %>
                            <% else %>
                                <p id="no-claimed">There are currently no items in the list.</p>
                            <% end_if %>
                        </div>
                        <div class="column is-6"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    $(document).ready(function (){
        $('.claimForm').on('submit', function (e) {
            e.preventDefault(); // avoid to execute the actual submit of the form.

            var form = $(this);
            var url = form.attr('action');
            var id = form.attr('ID');

            $.ajax({
                type: "POST",
                url: url,
                data: form.serialize(), // serializes the form's elements.
                success: function(data){
                    var panel = $('#panel-' + id);
                    panel.appendTo('#claimed-items');
                    panel.removeClass('unclaimed');
                    panel.removeClass('is-info');
                    panel.addClass('is-primary');
                    $('#form-panel-' + id).hide();

                    if ($('p#no-claimed')) {
                        $('p#no-claimed').remove()
                    }

                    if ($('article.unclaimed').length === 0) {
                        $('<p class="no-unclaimed">There are currently no items in the list.</p>').appendTo('#unclaimed-items')
                    }
                }
            });
        });
    });
</script>
