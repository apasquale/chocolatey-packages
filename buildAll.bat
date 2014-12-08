::This script will go through each folder and package the file
:: Gister
cd gister
cpack
NuGet push gister.*.nupkg -Source https://www.myget.org/F/ap-chocolatey-packages/
cd ..

::MultiEdit
cd multiedit
cpack
NuGet push multiedit.*.nupkg -Source https://www.myget.org/F/ap-chocolatey-packages/
cd ..

::power shell tools
cd powershelltools
cpack
NuGet push powershelltools.*.nupkg -Source https://www.myget.org/F/ap-chocolatey-packages/
cd ..

::routing assistant
cd routingassistant
cpack
NuGet push routingassistant.*.nupkg -Source https://www.myget.org/F/ap-chocolatey-packages/
cd ..

::specflow
cd specflow
cpack
NuGet push specflow.*.nupkg -Source https://www.myget.org/F/ap-chocolatey-packages/
cd ..

:: vs commands
cd vscommands.vs2013
cpack
NuGet push vscommands.vs2013.*.nupkg -Source https://www.myget.org/F/ap-chocolatey-packages/
cd ..