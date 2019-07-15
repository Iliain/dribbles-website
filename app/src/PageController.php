<?php

use SilverStripe\Blog\Model\BlogPost;
use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\Dev\Debug;
use SilverStripe\View\Requirements;

class PageController extends ContentController
{
    /**
     * An array of actions that can be accessed via a request. Each array element should be an action name, and the
     * permissions or conditions required to allow the user to access it.
     *
     * <code>
     * [
     *     'action', // anyone can access this action
     *     'action' => true, // same as above
     *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
     *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
     * ];
     * </code>
     *
     * @var array
     */
    private static $allowed_actions = [];

    protected function init()
    {
        parent::init();
        // You can include any CSS or JS required by your project here.
        // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/

        $this->ThemeDir = 'themes/dribbles/';

        // CSS
        Requirements::css($this->ThemeDir . "css/mystyles.css");

        // JS
        Requirements::javascript("//code.jquery.com/jquery-1.7.2.min.js");
        Requirements::javascript("https://use.fontawesome.com/releases/v5.0.7/js/all.js");

        // Slick
        Requirements::css('//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css');
        Requirements::javascript('//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js');
    }

    public function setUppercase($input)
    {
        if ($input) {
            $output = preg_replace_callback("/(&#[0-9]+;)/", function($m) {
                return mb_convert_encoding($m[1], "UTF-8", "HTML-ENTITIES");
            }, $input);

            return strtoupper($output);
        }
    }

    public function setLowercase($input = null)
    {
        if ($input) {
            $output = preg_replace_callback("/(&#[0-9]+;)/", function($m) {
                return mb_convert_encoding($m[1], "UTF-8", "HTML-ENTITIES");
            }, $input);

            return strtolower($output);
        }
    }

    public function getLatestBlogPosts()
    {
        return BlogPost::get()->limit(5);
    }

    public function getRowCount($count, $divisible)
    {
        if ($count % $divisible == 0) {
            return true;
        } else {
            return false;
        }
    }
}
