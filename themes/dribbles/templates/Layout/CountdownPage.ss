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

<% require javascript('silverstripe/admin: thirdparty/jquery/jquery.js') %>
<% require javascript('dynamic/silverstripe-elemental-countdown: thirdparty/jquery.countdown-2.1.0/jquery.countdown.min.js') %>
<% require javascript('dynamic/silverstripe-elemental-countdown: client/dist/countdown.init.min.js') %>

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
</style>
