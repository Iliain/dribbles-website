<?php

namespace Dribbles\Website\Elements;

use DNADesign\Elemental\Models\BaseElement;

class ColumnOpener extends BaseElement
{
    private static $singular_name = 'Column Opener';

    private static $plural_name = 'Column Openers';

    private static $description = 'Opens a column section.';

    public function getType()
    {
        return 'Open Columns';
    }
}
