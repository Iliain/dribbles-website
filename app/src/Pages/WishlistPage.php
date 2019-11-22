<?php

use Heyday\ColorPalette\Fields\ColorPaletteField;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\HeaderField;
use Symbiote\GridFieldExtensions\GridFieldOrderableRows;

class WishlistPage extends Page
{
    private static $has_many = [
        'WishItems'             => WishItem::class
    ];

    private static $owns = [
        'WishItems',
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->removeByName('Comments');

        if ($this->ID) {
            $fields->addFieldToTab('Root.WishItems', GridField::create(
                'WishItems',
                'Wish Items',
                $this->WishItems(),
                GridFieldConfig_RecordEditor::create()->addComponent(new GridFieldOrderableRows())
            ));
        }

        return $fields;
    }
}
