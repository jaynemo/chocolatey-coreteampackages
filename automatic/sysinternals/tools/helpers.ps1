function Accept-Eula() {

$tools = `
"AccessChk",        "Active Directory Explorer", "ADInsight",  "Autologon",       "AutoRuns",
"BGInfo",           "CacheSet",                  "ClockRes",   "Coreinfo",        "Ctrl2cap",
"DbgView",          "Desktops",                  "Disk2Vhd",   "Diskmon",         "DiskView",
"Du",               "EFSDump",                   "FindLinks",  "Handle",          "Hex2Dec",
"Junction",         "LdmDump",                   "ListDLLs",   "LoadOrder",       "Movefile",
"PageDefrag",       "PendMove",                  "PipeList",   "Portmon",         "ProcDump",
"Process Explorer", "Process Monitor",           "PsExec",     "psfile",          "PsGetSid",
"PsInfo",           "PsKill",                    "PsList",     "PsLoggedon",      "PsLoglist",
"PsPasswd",         "PsService",                 "PsShutdown", "PsSuspend",       "RamMap",
"RegDelNull",       "Regjump",                   "Regsize",    "RootkitRevealer", "Share Enum",
"ShellRunas",       "SigCheck",                  "Streams",    "Strings",         "Sync",
"System Monitor",   "TCPView",                   "VMMap",      "VolumeID",        "Whois",
"Winobj",           "ZoomIt"

    $root_path = "HKCU:\SOFTWARE\Sysinternals"
    foreach($tool in $tools) {
        mkdir "$root_path\$tool" -Force | Out-Null
        New-ItemProperty -Path "$root_path\$tool" -Name EulaAccepted -Value 1 -Force | Out-Null
    }
}
