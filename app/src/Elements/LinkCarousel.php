<?php

namespace Dribbles\Website\Elements;

use DNADesign\Elemental\Models\BaseElement;
use FeaturedSection;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\Forms\TextField;
use Symbiote\GridFieldExtensions\GridFieldOrderableRows;

/**
 * Class LinkCarousel
 * @package Dribbles\Website\Elements
 */
class LinkCarousel extends BaseElement
{
    private static $singular_name = 'Link Carousel';

    private static $plural_name = 'Link Carousels';

    private static $description = 'Creates a carousel of link items';

    private static $table_name = 'Dribbles_LinkCarousel';

    private static $db = [
        'Tagline'           => 'Varchar(255)'
    ];

    private static $has_many = [
        'FeaturedSections'  => FeaturedSection::class
    ];

    private static $owns = [
        'FeaturedSections'
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', [
            TextField::create('Tagline', 'Tagline'),
        ]);

        $gridConfig = GridFieldConfig_RelationEditor::create();
        if ($this->ID) {
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }

        $fields->addFieldToTab('Root.Main', GridField::create(
            'FeaturedSections',
            'Featured Sections',
            $this->FeaturedSections(),
            $gridConfig
        ));

        return $fields;
    }

    public function getType()
    {
        return 'Link Carousel';
    }

    /**
     * Get the color of the parent page
     * @return mixed
     * @throws \Psr\Container\NotFoundExceptionInterface
     * @throws \SilverStripe\ORM\ValidationException
     */
    public function ParentColor()
    {
        return $this->getPage()->BackgroundColor;
    }
}
