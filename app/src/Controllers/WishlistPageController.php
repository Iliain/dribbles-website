<?php

use SilverStripe\Dev\Debug;
use SilverStripe\ORM\ArrayList;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\View\Requirements;

class WishlistPageController extends PageController
{
    private static $allowed_actions = [
        'Claim',
    ];

    public function init()
    {
        parent::init();

        // CSS
        Requirements::javascript($this->ThemeDir . "js/wishlist.js");
    }

    public function countOwned()
    {
        return $this->WishItems()->filter('State', ['Purchased','Gifted'])->count();
    }

    public function  calculatePercentage()
    {
        $number = ($this->countOwned() / $this->WishItems()->count()) * 100;
        return number_format(number_format((float)$number, 0, '.', ''));
    }

    public function getWishItems($status = null)
    {
        $wishItems = $this->WishItems()->filter('State', $status);

        if ($wishItems) {
            return $wishItems;
        }

        return ArrayList::create();
    }

    public function Claim($request)
    {
        $id = $request->postVar('itemID');

        if ($id) {
            $item = WishItem::get()->byID($id);

            if ($item) {
                $item->State = 'Claimed';
                $item->write();
                return true;
            }
        }

        return false;
    }
}
