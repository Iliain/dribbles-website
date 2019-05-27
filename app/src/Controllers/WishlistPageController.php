<?php

use SilverStripe\ORM\ArrayList;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\View\Requirements;

class WishlistPageController extends PageController
{
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

    public function getWishItems()
    {
        $wishItems = $this->WishItems();

        if ($wishItems) {
            $list = PaginatedList::create($wishItems);
            $list->setPageLength(30);

            // Ensure that the pagination start is a multiple of the pagination length
            $start = $list->getPageStart();
            if ($start % 30 > 0) {
                $list->setPageStart($start - ($start % 30));
            }

            return $list;
        }

        return ArrayList::create();
    }
}