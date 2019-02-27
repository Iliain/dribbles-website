<?php

namespace SilverStripe\DataObject;

use WowHomePage;

use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
//use SilverStripe\AssetAdmin\Forms\UploadField;
//use SilverStripe\Versioned\Versioned;



class Character extends DataObject {

    private static $default_sort = "Sort ASC";

    private static $db = [
        'Sort'      => 'Int',
        'Name'      => 'Text',
        'Class'     => 'Text',
        'Link'      => 'Text',
        'ilvl'      => 'Int',
        'Legionilvl' => 'Int'
    ];

    private static $has_one = [
        'ColumnPage'      => WowHomePage::class,
        'CharacterImage'  => Image::class
    ];

    private static $owns = [
        'CharacterImage',
    ];

    /*private static $extensions = [
        Versioned::class,
    ];

    private static $versioned_gridfield_extensions = true;
    */

    private static $summary_fields = [
        'Name'  => 'Name',
        'Class' => 'Class',
        'ilvl'  => 'ilvl'
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->removeFieldFromTab('Root.Main', 'Sort');
        $fields->removeFieldFromTab('Root.Main', 'Column Page');

        $fields->addFieldtoTab('Root.Main', TextField::create('Name','Character Name'));
        $fields->addFieldtoTab('Root.Main', TextField::create('Class','Character Class'));
        $fields->addFieldtoTab('Root.Main', TextField::create('ilvl','Character ilvl'));
        $fields->addFieldtoTab('Root.Main', TextField::create('Legionilvl','Legion ilvl')->setDescription('Old: for posterity.'));
        $fields->addFieldtoTab('Root.Main', TextField::create('Link','Armory Link'));
        //$fields->addFieldtoTab('Root.Main', $images = UploadField::create('CharacterImage','Upload Image'));
          //$images
            //->setFolderName('character-images')
            //->getValidator()->setAllowedExtensions(['png', 'jpeg', 'jpg', 'JPG']);
        return $fields;
    }
}
