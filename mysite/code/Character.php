<?php
use SilverStripe\Forms\TextField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\ORM\DataObject;
use SilverStripe\Versioned\Versioned;
use SilverStripe\Assets\Image;


class Character extends DataObject {

    private static $db = [
        'Name'    =>  'Varchar(255)',
        'Class'   =>  'Varchar(255)'
        'Link'    =>  'Varchar(255)',
        'ilvl'    =>  'Varchar(255)',
    ];

    private static $has_one = [
        'ColumnPage'      => ColumnPage::class,
        'CharacterImage'  => Image::class
    ];

    private static $extensions = [
        Versioned::class,
    ];

    private static $versioned_gridfield_extensions = true;

    private static $summary_fields = [
        'Name'  => 'Name',
        'Class' => 'Class',
        'ilvl'  => 'ilvl'
    ];

    public function getCMSFields() {
        /*$fields = parent::getCMSFields();
        $fields->addFieldtoTab('Root.Main', TextField::create('Name','Character Name'));
        $fields->addFieldtoTab('Root.Main', TextField::create('Class','Character Class'));
        $fields->addFieldtoTab('Root.Main', TextField::create('ilvl','Character ilvl'));
        $fields->addFieldtoTab('Root.Main', TextField::create('Link','Armory Link'));
        $fields->addFieldtoTab('Root.Main', $images = UploadField::create('CharacterImage','Upload Image'));
        $images
        ->setFolderName('character-images')
        ->getValidator()->setAllowedExtensions(['png', 'jpeg', 'jpg', 'JPG']);*/
        //return $fields;
    }
}
