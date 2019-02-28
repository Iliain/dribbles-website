<?php

namespace Dribbles\Website\Elements;

use DNADesign\Elemental\Models\BaseElement;

class ColumnCloser extends BaseElement
{
    private static $singular_name = 'Column Closer';

    private static $plural_name = 'Column Closer';

    private static $description = 'Opens a column section.';

    public function getType()
    {
        return 'Close Columns';
    }
}
