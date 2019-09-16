<?php

namespace Dribbles\Website\Elements;

use DNADesign\Elemental\Models\BaseElement;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;

/**
 * Class HomePageContent
 * @package Dribbles\Website\Elements
 */
class HomePageContent extends BaseElement
{
    private static $singular_name = 'Home Page Content';

    private static $plural_name = 'Home Page Content Sections';

    private static $description = 'Creates a content section for the Home Page';

    private static $table_name = 'Dribbles_HomePageContent';

    private static $db = [
        'AboutSectionTitle' => 'Varchar(255)',
        'AboutTitle'        => 'Varchar(255)',
        'AboutContent'      => 'HTMLText',
        'SkillsTitle'       => 'Varchar(255)',
        'SkillsContent'     => 'Varchar(255)',
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', [
            TextField::create('AboutSectionTitle', 'Section Title'),
            TextField::create('AboutTitle', 'About Title'),
            HTMLEditorField::create('AboutContent', 'About Content'),
            TextField::create('SkillsTitle', 'Skills Title'),
            TextField::create('SkillsContent', 'Skills Content')
        ]);

        return $fields;
    }

    public function getType()
    {
        return 'Home Page Content';
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
