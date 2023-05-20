--
-- funannotate 1.8.15 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: Funannotate is a genome prediction, annotation, and comparison software package."
-- "Keywords: singularity bioinformatics"

whatis("Name: funannotate")
whatis("Version: 1.8.15")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: Funannotate is a genome prediction, annotation, and comparison software package.")
whatis("Keywords: singularity bioinformatics")

help([[
Funannotate is a genome prediction, annotation, and comparison software package.

To load the module, type

> module load funannotate/1.8.15

To unload the module, type

> module unload funannotate/1.8.15

For help, type

> funannotate

Tools included in this module are

* funannotate
* Trinity
]])

local package = "funannotate"
local version = "1.8.15"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
