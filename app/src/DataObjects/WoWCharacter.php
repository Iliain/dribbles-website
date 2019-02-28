<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\Versioned\Versioned;
use Dribbles\Website\Elements\CharacterCarousel;

class WoWCharacter extends DataObject
{
    private static $default_sort = "Sort ASC";

    private static $table_name = "WoWCharacter";

    private static $db = [
        'Sort'              => 'Int',
        'Name'              => 'Text',
        'Class'             => 'Text',
        'Link'              => 'Text',
        'ilvl'              => 'Int',
        'Legionilvl'        => 'Int',
        'CharacterImage'    => 'Varchar(255)'
    ];

    private static $has_one = [
        'ColumnPage'        => WoWHomePage::class,
//        'CharacterImage'    => Image::class
    ];

    private static $belongs_many_many = [
        'Carousel'          => CharacterCarousel::class
    ];

    private static $owns = [
//        'CharacterImage',
    ];

    private static $extensions = [
        Versioned::class,
    ];

    private static $versioned_gridfield_extensions = true;

    private static $summary_fields = [
        'Name'              => 'Name',
        'Class'             => 'Class',
        'ilvl'              => 'ilvl'
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeFieldFromTab('Root.Main', 'Sort');
        $fields->removeFieldFromTab('Root.Main', 'Column Page');

        $fields->addFieldstoTab('Root.Main', [
            TextField::create('Name', 'Character Name'),
            TextField::create('Class', 'Character Class'),
            TextField::create('ilvl', 'Character ilvl'),
            TextField::create('Legionilvl', 'Legion ilvl')->setDescription('Old: for posterity.'),
            TextField::create('Link', 'Armory Link'),
            TextField::create('CharacterImage', 'Character Image Link')
        ]);

//        $fields->addFieldtoTab('Root.Main', $images = UploadField::create('CharacterImageID','Upload Image'));
//          $images
//            ->setFolderName('character-images')
//            ->getValidator()->setAllowedExtensions(['png', 'jpeg', 'jpg', 'JPG']);
        return $fields;
    }
}
