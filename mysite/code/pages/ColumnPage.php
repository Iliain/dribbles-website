<?php

use SilverStripe\DataObject\Character;

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class ColumnPage extends Page
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
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Characters', GridField::create(
          'Character',
          'Character',
          $this->Character(),
          GridFieldConfig_RecordEditor::create()
        ));
        return $fields;
    }
}
