# SCCM with PowerShell
This script contains basic examples to show how to manage Microsoft System Center Configuration Manager (SCCM, soon to be rebranded in newer versions as Microsoft Endpoint Manager) from Powershell.

# Prerequisites
* PowerShell 5.1
* Microsoft System Center Configuration Manager 2016

# Instructions
The script contains several parameters:
* <b>modulePath</b> - Path to the SCCM Powershell module that is part of the SCCM install on the server
* <b>locationSite</b> - Name of the SCCM site to connect to when using the script
* <b>deviceName</b> - Name of the device to search for when using the "device" option.  Wildcards * are supported
* <b>collectionName</b> - Name of the collection to use for the "collection" and "collectionScheduleStart" options
* <b>severity</b> - Level of message severity to return (all, error, information, warning)
* <b>viewingPeriod<b> - Date and time that you want to see messages from
* <b>ruleId</b> - Number of the rule that you wish to view or invoke in the "updateRule" or "updateStart" options
* <b>option</b> - Options for the script (collectionScheduleStart,collection,device,messages,updateRule,updateStart)

For additional commands and information about available SCCM Powershell, refer to the reference guide <a href="https://docs.microsoft.com/en-us/powershell/sccm/overview?view=sccm-ps">here</a>.

Execution example (must be run on the SCCM server and as a domain user): <br>
```
powershell.exe -ExecutionPolicy Bypass -locationSite "SMA" -option "device" -deviceName "SMA*" 
```

# Disclaimer
No Support and No Warranty are provided by SMA Technologies for this project and related material. The use of this project's files is on your own risk.

SMA Technologies assumes no liability for damage caused by the usage of any of the files offered here via this Github repository.

# License
Copyright 2020 SMA Technologies

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

# Contributing
We love contributions, please read our [Contribution Guide](CONTRIBUTING.md) to get started!

# Code of Conduct
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](code-of-conduct.md)
SMA Technologies has adopted the [Contributor Covenant](CODE_OF_CONDUCT.md) as its Code of Conduct, and we expect project participants to adhere to it. Please read the [full text](CODE_OF_CONDUCT.md) so that you can understand what actions will and will not be tolerated.
