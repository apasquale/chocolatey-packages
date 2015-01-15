::This script will go through each folder and package the file
::Note an initialization step is required to set the API key
::run
::NuGet setApiKey <APIKey goes here> -Source https://www.myget.org/F/ap-chocolatey-packages/
@echo off
set list= ^
gister ^
multiedit ^
powershelltools ^
routingassistant ^
specflow ^
vscommands.vs2013 ^
editorconfig ^
sqlserverdatatools.2013 ^
git-credential-winstore

(for %%a in (%list%) do (
	echo Packing %%a
	cd %%a
	cpack
	::NuGet push *.nupkg -Source https://www.myget.org/F/ap-chocolatey-packages/
	cp %%a.*.nupkg ../nupkgs/
	cd ..
))
