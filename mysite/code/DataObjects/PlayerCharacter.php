<?php

namespace SilverStripe\DataObject;

use SilverStripe\Forms\NumericField;
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Security\Member;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;
use SilverStripe\Forms\GridField\GridField;

class PlayerCharacter extends DataObject {

    private static $default_sort = "Sort ASC";

    private static $db = [
        'Sort'          => 'Int',
        'Name'          => 'Text',
        'Class'         => 'Text',
        'Race'          => 'Text',
        'Backstory'     => 'HTMLText',
        'Experience'    => 'Int',
        'Level'         => 'Int',
        // Stats
        'Luck'          => 'Int', // HP
        'Vitality'      => 'Int', // Stam
        'Consciousness' => 'Int', // MP
        'Body'          => 'Int', // Weapon Power
        'Mind'          => 'Int', // Magic Power
        'Perception'    => 'Int',
        'Resolve'       => 'Int',
        'Charm'         => 'Int',
        'Insanity'      => 'Int'
    ];

    private static $defaults = [
        'Race' => 'Human'
    ];

    private static $has_one = [
        'Weapon' => PlayerWeapon::class
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
        'Class' => 'Class',
        'Race' => 'Race',
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->removeFieldFromTab('Root.Main', 'Sort');
        $fields->removeFieldFromTab('Root.Main', 'Race');
        $fields->removeFieldFromTab('Root.Main', 'Weapon');

        $fields->addFieldtoTab('Root.Main', TextField::create('Name','Character Name'));
        $fields->addFieldtoTab('Root.Main', TextField::create('Class','Character Class'));
        $fields->addFieldtoTab('Root.Main', HTMLEditorField::create('Backstory'));

        $fields->addFieldToTab('Root.Equipment', DropdownField::create('WeaponID', 'Weapon', PlayerWeapon::get()->map('ID', 'Title')) ->setEmptyString('(Select one)'));


        // Stats
        $fields->addFieldtoTab('Root.Stats', NumericField::create('Experience'));
        $fields->addFieldtoTab('Root.Stats', NumericField::create('Level'));
        $fields->addFieldtoTab('Root.Stats', NumericField::create('Luck'));
        $fields->addFieldtoTab('Root.Stats', NumericField::create('Luck'));
        $fields->addFieldtoTab('Root.Stats', NumericField::create('Vitality'));
        $fields->addFieldtoTab('Root.Stats', NumericField::create('Consciousness'));
        $fields->addFieldtoTab('Root.Stats', NumericField::create('Body'));
        $fields->addFieldtoTab('Root.Stats', NumericField::create('Mind'));
        $fields->addFieldtoTab('Root.Stats', NumericField::create('Perception'));
        $fields->addFieldtoTab('Root.Stats', NumericField::create('Resolve'));
        $fields->addFieldtoTab('Root.Stats', NumericField::create('Charm'));
        $fields->addFieldtoTab('Root.Stats', NumericField::create('Insanity'));

        return $fields;
    }
}
