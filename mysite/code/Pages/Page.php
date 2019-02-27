<?php

use SilverStripe\CMS\Model\SiteTree;

class Page extends SiteTree
{
    private static $db = [
        'BackgroundColor' => 'Varchar'
    ];

    private static $has_one = [];

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab(
            'Root.Main',
            Heyday\ColorPalette\Fields\GroupedColorPaletteField::create(
                'BackgroundColor',
                'Background Color',
                array(
                    'Primary Palette' => array(
                        'is-dark' => '#363636', //Black
                        'is-light' => '#f5f5f5', //Light Grey
                        'is-primary' => '#00d1b2' , //Mint
                        'is-info' => '#209cee', //Blue
                        'is-success' => '#23d160', //Green
                        'is-warning' => '#ffdd57' , //Yellow
                        'is-danger' => '#ff3860' //Red
                    )
                )
            )
        );

        return $fields;
    }
}
