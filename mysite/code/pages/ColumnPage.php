<?php

//use Character;

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;

class ColumnPage extends Page
{
    private static $db = [];

    private static $has_one = [];

    private static $has_many = [
      'Characters' => Character::class
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Characters', GridField::create(
          'Characters',
          'Characters',
          $this->Characters(),
          GridFieldConfig_RecordEditor::create()
        ));
        return $fields;
    }
}
