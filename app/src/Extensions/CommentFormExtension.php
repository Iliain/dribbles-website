<?php

use SilverStripe\Core\Extension;

class CommentFormExtension extends Extension
{
    public function alterCommentForm(&$form)
    {
        $form->setTemplate('CommentFormTemplate');
    }
}
