<div class="card">
    <div class="card-content">
		<% if not $isPreview %>
			<div class="media">
				<div class="media-left">
					<figure class="image is-48x48">
						<img src="$Gravatar.ATT" alt="Placeholder image">
					</figure>
				</div>
				<div class="media-content">
					<p class="title is-4">$AuthorName.XML</p>
					<% if $URL %><p class="subtitle is-6">$URL.URL</p><% end_if %>
				</div>
			</div>
		<% end_if %>

        <div class="content">
			$EscapedComment
            <br>
            <time datetime="2016-1-1"><span class="date">$Created.Nice ($Created.Ago)</span></time>
        </div>

		<% if not $isPreview %>
			<% if $ApproveLink || $SpamLink || $HamLink || $DeleteLink || $RepliesEnabled %>
                <div class="comment-action-links">
                    <div class="comment-moderation-options">
						<% if $ApproveLink %>
                            <a href="$ApproveLink.ATT" class="button is-light"><% _t('CommentsInterface_singlecomment_ss.APPROVE', 'approve it') %></a>
						<% end_if %>
						<% if $SpamLink %>
                            <a href="$SpamLink.ATT" class="button is-light"><% _t('CommentsInterface_singlecomment_ss.ISSPAM','spam it') %></a>
						<% end_if %>
						<% if $HamLink %>
                            <a href="$HamLink.ATT" class="button is-light"><% _t('CommentsInterface_singlecomment_ss.ISNTSPAM','not spam') %></a>
						<% end_if %>
						<% if $DeleteLink %>
                            <a href="$DeleteLink.ATT" class="button is-light"><% _t('CommentsInterface_singlecomment_ss.REMCOM','reject it') %></a>
						<% end_if %>
                    </div>
					<% if $RepliesEnabled && $canPostComment %>
                        <button class="comment-reply-link" type="button" aria-controls="$ReplyForm.FormName" aria-expanded="false">
							<% _t('CommentsInterface_singlecomment_ss.REPLYTO','Reply to') %> $AuthorName.XML
                        </button>
					<% end_if %>
                </div>
			<% end_if %>
		<% end_if %>
    </div>
</div>

<% if not $isPreview %>
	<% include CommentReplies %>
<% end_if %>

<br>