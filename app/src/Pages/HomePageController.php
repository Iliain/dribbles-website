<?php

class HomePageController extends PageController
{
    protected function init()
    {
        parent::init();
    }

    public function countPages($number)
    {
        if ($number % 2 == 0) {
            return 1;
        } else {
            return 0;
        }
    }
}
