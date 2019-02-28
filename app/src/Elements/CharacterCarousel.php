<?php

namespace Dribbles\Website\Elements;

use DNADesign\Elemental\Models\BaseElement;
use WoWCharacter;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use Symbiote\GridFieldExtensions\GridFieldOrderableRows;

class CharacterCarousel extends BaseElement
{
    private static $table_name = 'Dribbles_CharacterCarousel';

    private static $db = [];

    private static $many_many = [
        'Characters'        => WoWCharacter::class
    ];

    private static $owns = [
        'Characters',
    ];

    private static $singular_name = 'Character Carousel';

    private static $plural_name = 'Character Carousels';

    private static $description = 'A carousel of character panes.';

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeByName('Characters');

        $gridConfig = GridFieldConfig_RelationEditor::create()->addComponent(new GridFieldOrderableRows());

        $fields->addFieldToTab('Root.Main', GridField::create(
            'Characters',
            'Characters',
            $this->Characters(),
            $gridConfig
        ));

        return $fields;
    }

    public function getType()
    {
        return 'Character Carousel';
    }

    public function Characters() {
        return $this->getManyManyComponents('Characters')->sort('Sort');
    }
}
