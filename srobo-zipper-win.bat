@ECHO OFF

set codeloc=%~f1
set pyenvloc="%~dp0pyenv\pyenv"
set outputloc=%userprofile%\Desktop

for %%i in (c d e f g h i j k l m n o p q r s t u v w x y z) do ( 
if exist %%i:\.srobo (set outputloc=%%i:)
)

cd "%~dp0pyenv"
git pull


ECHO "Code Location: %codeloc%"
ECHO "Pyenv Location: %pyenvloc%"
ECHO "Output Location: %outputloc%"

ECHO "Copying temporary files..."
mkdir "%temp%\robot"
xcopy "%pyenvloc%" "%temp%\robot" /s /e
mkdir "%temp%\robot\user"
xcopy "%codeloc%" "%temp%\robot\user" /s /e
copy /y NUL "%temp%\robot\.pyenv-rev" >NUL
copy /y NUL "%temp%\robot\user\.user-rev" >NUL

ECHO "Compressing..."
"%~dp07za.exe" a -tzip "%outputloc%\robot.zip" "%temp%\robot\*" -r

ECHO "Removing temporary files..."
RD /S /Q "%temp%\robot"

ECHO "Complete!"