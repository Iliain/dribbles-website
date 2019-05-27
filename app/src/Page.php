<?php

use Heyday\ColorPalette\Fields\ColorPaletteField;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\TextField;

class Page extends SiteTree
{
    private static $db = [
        'BackgroundColor'   => 'Varchar',
        'SubTitle'          => 'Varchar(255)'
    ];

    private static $defaults = [
        'BackgroundColor'   => 'is-dark',
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('SubTitle', 'Subtitle'), 'ElementalArea');

        $fields->addFieldsToTab('Root.Main', [
            ColorPaletteField::create('BackgroundColor', 'Background Color', [
                'is-dark' => '#363636', //Black
                'is-light' => '#f5f5f5', //Light Grey
                'is-primary' => '#00d1b2' , //Mint
                'is-info' => '#209cee', //Blue
                'is-success' => '#23d160', //Green
                'is-warning' => '#ffdd57' , //Yellow
                'is-danger' => '#ff3860' //Red
            ])->setDescription('Set the page header colour.')
        ], 'ElementalArea');

        return $fields;
    }
}
