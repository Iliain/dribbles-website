<div class="container">

    <h1>
        <% if $ArchiveYear %>
            <%t SilverStripe\\Blog\\Model\\Blog.Archive 'Archive' %>:
            <% if $ArchiveDay %>
                $ArchiveDate.Nice
            <% else_if $ArchiveMonth %>
                $ArchiveDate.format('F, Y')
            <% else %>
                $ArchiveDate.format('Y')
            <% end_if %>
        <% else_if $CurrentTag %>
            <%t SilverStripe\\Blog\\Model\\Blog.Tag 'Tag' %>: $CurrentTag.Title
        <% else_if $CurrentCategory %>
            <%t SilverStripe\\Blog\\Model\\Blog.Category 'Category' %>: $CurrentCategory.Title
        <% else %>
        <% end_if %>
    </h1>

    <div class="content">$Content</div>

    <div class="columns">
        <div class="column is-half">
            <% if $PaginatedList.Exists %>
                <% loop $PaginatedList %>
                    <% include SilverStripe\\Blog\\PostSummary %>
                <% end_loop %>
            <% else %>
                <p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
            <% end_if %>
        </div>
        <div class="column">
            <% with $PaginatedList %>
                <% include SilverStripe\\Blog\\Pagination %>
            <% end_with %>
            <% include SilverStripe\\Blog\\BlogSideBar %>
        </div>
    </div>
</div>