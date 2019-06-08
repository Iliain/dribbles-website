<% include Header %>

<section class="section">
    <div class="container">
        <div class="columns">
            <div class="column is-two-thirds">
                $ElementalArea
                $Form
                $CommentsForm
            </div>
            <div class="column">
                <h1 class="title">My Characters</h1>
                <% loop $Character %>
                    <a href="$Link">
                        <div class="box" style="margin-bottom: 10px">
                            <article class="media">
                                <div class="media-left">
                                    <figure class="image is-64x64">
                                        <img src="$CharacterImage" alt="Image">
                                    </figure>
                                </div>
                                <div class="media-content">
                                    <div class="content">
                                        <p>
                                            <strong>$Name</strong> <small>ilvl: $ilvl</small>
                                            <br>
                                            $Class
                                            <br>
                                        </p>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </a>
                <% end_loop %>
            </div>
        </div>
    </div>
    <style>
    .box:hover {
      background-color: #eaeaea;
    }
    #guildBox.hover {
      background-color: #f2d152;
    }
    </style>
</section>
