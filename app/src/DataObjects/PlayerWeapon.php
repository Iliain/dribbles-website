<?php

namespace SilverStripe\DataObject;

use SilverStripe\Forms\DropdownField;
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\NumericField;

class PlayerWeapon extends DataObject {

    private static $default_sort = "Sort ASC";

    private static $db = [
        'Sort'          => 'Int',
        'Name'          => 'Text',
        'Class'         => "Enum('Firearm, Melee, Eldritch')",
        'Description'   => 'HTMLText',
        'Level'         => 'Int',
        // Stats

    ];

    private static $has_many = [
        'Characters' => PlayerCharacter::class
    ];

    private static $owns = [
    ];

    /*private static $extensions = [
        Versioned::class,
    ];

    private static $versioned_gridfield_extensions = true;
    */

    private static $summary_fields = [
        'Name'  => 'Name',
        'Class' => 'Class'
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->removeFieldFromTab('Root.Main', 'Sort');

        $fields->addFieldtoTab('Root.Main', TextField::create('Name','Weapon Name'));
        $fields->addFieldToTab('Root.Main', DropdownField::create(
            'Class',
            'Weapon Class',
            array('Firearm', 'Melee', 'Eldritch')
        ));
        $fields->addFieldtoTab('Root.Main', TextField::create('Description','Weapon Description'));
        $fields->addFieldtoTab('Root.Main', NumericField::create('Level','Level'));



        return $fields;
    }
}
