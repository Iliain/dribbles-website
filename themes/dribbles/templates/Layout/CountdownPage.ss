<section class="hero is-fullheight is-dark">
    <div class="hero-body" style="position: relative">
        <div class="container has-text" style="z-index: 1">
            <div class="has-text-centered">
                <h2 class="subtitle is-2">$Title</h2>
            </div>
            <br>
            <div class="is-ancestor countdown" id="countdown-$ID" data-end="$End" data-elapse="$Elapse">
                <div class="columns has-text-centered">
                    <div class="column">
                        <h3 class="title is-3"><span class="months">0</span></h3>
                        <p><span style="display:block;">Months</span></p>
                    </div>
                    <div class="column">
                        <h3 class="title is-3"><span class="days">0</span></h3>
                        <p><span style="display:block;">Days</span></p>
                    </div>
                    <div class="column">
                        <h3 class="title is-3"><span class="hours">0</span></h3>
                        <p><span style="display:block;">Hours</span></p>
                    </div>
                    <div class="column">
                        <h3 class="title is-3"><span class="minutes">0</span></h3>
                        <p><span style="display:block;">Minutes</span></p>
                    </div>
                    <div class="column">
                        <h3 class="title is-3"><span class="seconds">0</span></h3>
                        <p><span style="display:block;">Seconds</span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="has-image"></div>
</section>

<% if $Testimonies %>
    <section class="section">
        <div class="container">
            <div class="columns">
                <% loop $Testimonies %>
                    <% if $Odd %>
                        <div class="column is-7">
                            <div id="drawer-left">
                                <div id="drawer-content-left">

                                    <div class="box" style="box-shadow: 0 0 0 rgba(0, 0, 0, 0)">
                                        <article class="media">
                                            <div class="media-left">
                                                <figure class="image is-128x128">
                                                    <img src="$Image.URL" alt="Image">
                                                </figure>
                                            </div>
                                            <div class="media-content">
                                                <div class="content">
                                                    <h2>$Name</h2>
                                                    <p>$Position</p>
                                                    <p style="font-size: 1.5em "><em>$Quote</em></p>
                                                </div>
                                            </div>
                                        </article>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="column"></div>
                        <% if not $Last %>
                            </div><div class="columns">
                        <% end_if %>
                    <% else %>
                        <div class="column"></div>
                        <div class="column is-7">
                            <div id="drawer-right">
                                <div id="drawer-content-right">

                                    <div class="box" style="box-shadow: 0 0 0 rgba(0, 0, 0, 0);">
                                        <article class="media">
                                            <div class="media-content">
                                                <div class="content" style="text-align: right;">
                                                    <h2>$Name</h2>
                                                    <p>$Position</p>
                                                    <p style="font-size: 1.5em "><em>$Quote</em></p>
                                                </div>
                                            </div>
                                            <div class="media-right">
                                                <figure class="image is-128x128">
                                                    <img src="$Image.URL" alt="Image">
                                                </figure>
                                            </div>
                                        </article>
                                    </div>

                                </div>
                            </div>
                        </div>

                    <% end_if %>

                <% end_loop %>

            </div>

        </div>
    </section>
<% end_if %>


<% require javascript('silverstripe/admin: thirdparty/jquery-ui/jquery-ui.js') %>
<% require javascript('dynamic/silverstripe-elemental-countdown: thirdparty/jquery.countdown-2.1.0/jquery.countdown.min.js') %>
<% require javascript('dynamic/silverstripe-elemental-countdown: client/dist/countdown.init.min.js') %>

<script type="text/javascript">
    $('#drawer-content-left').hide('slide',{direction:'left'},1);
    $('#drawer-content-right').hide('slide',{direction:'right'},1);
    $(window).scroll(function() {
        if ($('#drawer-left').is(':visible')) {
            // $("#drawer-content-left").animate({ "margin-right": 0 }, "slow");
            $("#drawer-content-left").show("slide", {direction: "right"}, 2000);
        }
        if ($('#drawer-right').is(':visible')) {
            // $("#drawer-content-right").animate({ "margin-left": 0 }, "slow");
            $("#drawer-content-right").show("slide", {direction: "left"}, 2000);
        }
    });

</script>

<style>
    html.has-navbar-fixed-top,
    body.has-navbar-fixed-top {
        padding-top: 0; }

    .has-image {
        background: linear-gradient(rgba(54, 54, 54, 0.80), rgba(54, 54, 54, 0.80)),
        url("$BackgroundImage.URL");
        background-position: center center;
        background-repeat: no-repeat;
        /*background-attachment: fixed;*/
        background-size: cover;
        position:absolute;
        top:0px;
        right:0px;
        bottom:0px;
        left:0px;
        -webkit-filter: blur(6px);
        -moz-filter: blur(6px);
        -o-filter: blur(6px);
        -ms-filter: blur(6px);
        filter: blur(6px);
    }

    #drawer-left, #drawer-right {
        /*position: absolute;*/
        overflow-x: hidden; /* Needed for initial hidden state */
    }

    /*#drawer-content-left {*/
        /*margin-right: -100%; !* -width *!*/
    /*}*/

    /*#drawer-content-right {*/
        /*margin-left: -100%; !* -width *!*/
    /*}*/
</style>
