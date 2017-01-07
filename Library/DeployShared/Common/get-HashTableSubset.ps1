

function get-HashTableSubset
{
<#
.SYNOPSIS
Return the subset of a HashTable
.DESCRIPTION
Great for Calling parent functions with the subset of arguments found in $PSBoundParameters
.EXAMPLE
$NewHash = get-HashTableSubset @PSBoundParameters -exclude Foo,Bar
Call-NewFunction @NewHash
#>
    [cmdletbinding()]
    param
    (
��������[parameter(ValueFromPipeline=$True)]�$HashTable,

����Begin {�$Result�=�@{}�}
        }
        }
}