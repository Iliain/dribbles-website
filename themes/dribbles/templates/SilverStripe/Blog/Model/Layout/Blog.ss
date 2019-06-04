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

    <div class="content">
        $ElementalArea
    </div>

    <div class="grid">
        <% if $PaginatedList.Exists %>
            <div class="columns">
                <% loop $PaginatedList %>
                   <div class="column is-one-third">
                        <% include SilverStripe\\Blog\\PostSummary %>
                    </div>
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
    .post-block {
        background-position: center center;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
        height: 100%;
    }

    .post-block:hover
    {
        opacity: 0.8;
    }
</style>