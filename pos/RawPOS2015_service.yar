rule PoS_Malware_RawPOS2015_service : RawPOS2015_service
{
meta:
 author = "Trend Micro, Inc."
 date = "2015-03-10"
 description = "Used to detect RawPOS RAM service, including 2015 sample set"
 sample_filetype = "exe"
strings:
 $string0 = "OpenService failed - %s"
 $string1 = "OpenSCManager failed - %s"
 $string2 = "Unable to install %s - %s"
 $string3 = "File already exists"
 $string4 = "Stopping %s."
 $string5 = "This may take several seconds. Please wait."
 $string6 = "%s failed to stop."
 $string7 = "%s removed."
 $string8 = "Debugging %s."
 $string9 = "Could not create registery key"
 $string10 = "\\\\.\\pipe\\susrv"
 $string11 = "SYSTEM\\CurrentControlSet\\Services\\EventLog\\Application\\%s"
condition:
 all of ($string*)
}