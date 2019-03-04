<h5 class="title is-5">$Title </h5>
<div class="tile is-ancestor countdown" id="countdown-$ID" data-end="$End" data-elapse="$Elapse">
    <% if $ShowMonths %>
        <div class="tile is-parent">
            <article class="tile is-child box">
                <span class="months">0</span> Months
            </article>
        </div>
    <% end_if %>
    <div class="tile is-parent">
        <article class="tile is-child box">
            <span class="days">0</span> Days
        </article>
    </div>
    <div class="tile is-parent">
        <article class="tile is-child box">
            <span class="hours">0</span> Hours
        </article>
    </div>

    <div class="tile is-parent">
        <article class="tile is-child box">
            <span class="minutes">0</span> Minutes
        </article>
    </div>

    <% if $ShowSeconds %>
        <div class="tile is-parent">
            <article class="tile is-child box">
                <span class="seconds">0</span> Seconds
            </article>
        </div>
    <% end_if %>
</div>

<% require javascript('silverstripe/admin: thirdparty/jquery/jquery.js') %>
<% require javascript('dynamic/silverstripe-elemental-countdown: thirdparty/jquery.countdown-2.1.0/jquery.countdown.min.js') %>
<% require javascript('dynamic/silverstripe-elemental-countdown: client/dist/countdown.init.min.js') %>
