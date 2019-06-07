<div class="container">

    <div class="content">
        $ElementalArea

        <% if $ArchiveYear %>
            <h2 class="has-text-centered">
                <%t SilverStripe\\Blog\\Model\\Blog.Archive 'Archive' %>:
                <% if $ArchiveDay %>
                    $ArchiveDate.Nice
                <% else_if $ArchiveMonth %>
                    $ArchiveDate.format('F, Y')
                <% else %>
                    $ArchiveDate.format('Y')
                <% end_if %>
            </h2>
            <h5 class="has-text-centered">Results: $PaginatedList.Count</h5>
        <% else_if $CurrentTag %>
            <h2 class="has-text-centered">
                <%t SilverStripe\\Blog\\Model\\Blog.Tag 'Selected Tag' %>: $CurrentTag.Title
            </h2>
            <h5 class="has-text-centered">Results: $PaginatedList.Count</h5>
        <% else_if $CurrentCategory %>
            <h2 class="has-text-centered">
                <%t SilverStripe\\Blog\\Model\\Blog.Category 'Selected Category' %>: $CurrentCategory.Title
            </h2>
            <h5 class="has-text-centered">Results: $PaginatedList.Count</h5>
        <% else %>
        <% end_if %>
    </div>

    <div class="grid">
        <% if $PaginatedList.Exists %>
            <div class="columns">
                <% loop $PaginatedList %>

                    <div class="column is-one-third">
                        <% include SilverStripe\\Blog\\PostSummary %>
                    </div>

                    <% if $Top.getRowCount($Pos, 3) %>
                        </div><div class="columns">
                    <% end_if %>

                    <% if $Last %>
                        </div>
                    <% end_if %>

                <% end_loop %>
            </div>
        <% else %>
            <p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
        <% end_if %>
    </div>

    <div class="columns">
        <% with $PaginatedList %>
            <% include SilverStripe\\Blog\\Pagination %>
        <% end_with %>
    </div>
</div>

<style>
    .blog-card-content {
        min-height: 13.5vh;
    }
    .card-popup:hover
    {
        transform: scale(1.03);
        -webkit-transition: all .3s ease;
        -moz-transition: all .3s ease;
        -ms-transition: all .3s ease;
        -o-transition: all .3s ease;
        transition: all .3s ease;
    }
</style>