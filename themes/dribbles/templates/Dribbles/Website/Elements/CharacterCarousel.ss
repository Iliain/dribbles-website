<div class="columns">
    <div class="column"></div>
    <div class="column is-10" dir="rtl">
        <div class="carousel">
            <% if $Characters %>
                <% loop $Characters %>
                    <div>$Title</div>
                <% end_loop %>
            <% end_if %>
        </div>
    </div>
    <div class="column"></div>
</div>

<script type="text/javascript">
    $(document).ready(function(){
        $('.carousel').slick({
            autoplay: true,
            infinite: true,
            slidesToShow: 3,
            slidesToScroll: 1,
            lazyLoad: 'ondemand',
            rtl: true
        });
    });
</script>