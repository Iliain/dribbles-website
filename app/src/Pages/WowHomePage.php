<?php

use SilverStripe\DataObject\Character;

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;

class WowHomePage extends Page
{
    private static $db = [
    ];

    private static $has_one = [];

    private static $has_many = [
      'Character' => Character::class
    ];

    private static $owns = [
        'Character',
    ];

    public function getCMSFields() {
        $gridConfig = GridFieldConfig_RecordEditor::create()->addComponent(new GridFieldSortableRows('Sort'));

        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Characters', GridField::create(
          'Character',
          'Character',
          $this->Character(),
          $gridConfig
        ));


        return $fields;
    }
}
