<?php

use Heyday\ColorPalette\Fields\ColorPaletteField;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\HeaderField;
use Symbiote\GridFieldExtensions\GridFieldOrderableRows;

class WishlistPage extends Page
{
    private static $db = [
        'PurchasedColour'       => 'Varchar(100)',
        'GiftedColour'          => 'Varchar(100)',
        'ProgressBarColour'     => 'Varchar(100)',
    ];

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

        $fields->addFieldsToTab('Root.Style', [
            HeaderField::create('StyleHeader', 'Table Styling'),
            ColorPaletteField::create('PurchasedColour', 'Purchased Colour', [
                'background-color: #363636; color: #fff;' => '#363636', //Black
                'background-color: #f5f5f5; color: rgba(0,0,0,.7);' => '#f5f5f5', //Light Grey
                'background-color: #00d1b2; color: #fff;' => '#00d1b2', //Mint
                'background-color: #209cee; color: #fff;' => '#209cee', //Blue
                'background-color: #23d160; color: #fff;' => '#23d160', //Green
                'background-color: #ffdd57; color: rgba(0,0,0,.7);' => '#ffdd57' , //Yellow
                'background-color: #ff3860; color: #fff;' => '#ff3860' //Red
            ])->setDescription('Set the colour for items that you have already purchased for yourself.'),
            ColorPaletteField::create('GiftedColour', 'Gifted Colour', [
                'background-color: #363636; color: #fff;' => '#363636', //Black
                'background-color: #f5f5f5; color: rgba(0,0,0,.7);' => '#f5f5f5', //Light Grey
                'background-color: #00d1b2; color: #fff;' => '#00d1b2', //Mint
                'background-color: #209cee; color: #fff;' => '#209cee', //Blue
                'background-color: #23d160; color: #fff;' => '#23d160', //Green
                'background-color: #ffdd57; color: rgba(0,0,0,.7);' => '#ffdd57' , //Yellow
                'background-color: #ff3860; color: #fff;' => '#ff3860' //Red
            ])->setDescription('Set the colour for items that others have gifted to you.'),
            ColorPaletteField::create('ProgressBarColour', 'Progress Bar Colour', [
                'is-dark'       => '#363636',   //Black
                'is-light'      => '#f5f5f5',   //Light Grey
                'is-primary'    => '#00d1b2' ,  //Mint
                'is-info'       => '#209cee',   //Blue
                'is-success'    => '#23d160',   //Green
                'is-warning'    => '#ffdd57' ,  //Yellow
                'is-danger'     => '#ff3860'    //Red
            ])->setDescription('Set the colour for the progess bar.')
        ]);

        return $fields;
    }
}
