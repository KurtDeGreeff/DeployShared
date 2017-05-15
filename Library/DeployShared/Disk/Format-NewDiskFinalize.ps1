
Function Format-NewDiskFinalize {
    <# 
    Finalize partitions for Windows 10

    Powershell will remove all drive letters from a disk if you hide *any* partition
    Powershell will remove all drive letters from a disk if you mark the system partition 

    #>
    [cmdletbinding()]
    param
    (
        $SystemPartition,
        $WindowsPartition,
        $WinREPartition
    )

    ################

    if ($WinREPartition) {
        $WinREPartition | 
            where-object MBRType -eq 7 |
            Set-Partition -IsHidden:$True
    }

    if ( $SystemPartition ) {
        $SystemPartition | 
            where-object GPTType -eq '{ebd0a0a2-b9e5-4433-87c0-68b6b72699c7}' |
            Set-Partition -GptType '{c12a7328-f81f-11d2-ba4b-00a0c93ec93b}'
    }

}
