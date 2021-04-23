; -- The Age of the Ring Mod for BFME 2 ROTWK Installer --
; by ICT
; later maintained by Necro
; mod created by Mathijs/RoR et al

[Setup]
AppName=Age of the Ring Mod
AppVersion=6.0
AppId=AOTR6.0

DefaultDirName={pf}\AOTR6.0
DisableDirPage=no
DirExistsWarning=no
Compression=lzma2
SolidCompression=yes
DiskSpanning=yes
SlicesPerDisk=2
DiskSliceSize=1500000000 
WizardImageFile=aotr.bmp
OutputBaseFilename=AgeOfTheRingInstaller6.0
DisableProgramGroupPage=no
DefaultGroupName=Age of the Ring
AppPublisher=AotR staff
AppPublisherURL=http://www.moddb.com/mods/the-horse-lords-a-total-modification-for-bfme
PrivilegesRequired=admin


[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"


[Files]
Source: "aotr.ico"; DestDir: "{app}\aotr"
#ifdef Debug
Source: "aotr_src_debug\*"; DestDir: "{app}\aotr"; Flags: ignoreversion recursesubdirs
#else
Source: "aotr_src\*"; DestDir: "{app}\aotr"; Flags: ignoreversion recursesubdirs
#endif

[Icons]
Name: "{userdesktop}\Age of the Ring 6.0"; Filename: "{code:getBFMEDir}\lotrbfme2ep1.exe"; Parameters: "-mod ""{app}\aotr"""; IconFilename: "{app}\aotr\aotr.ico"
Name: "{group}\Age of the Ring 6.0";      Filename: "{code:getBFMEDir}\lotrbfme2ep1.exe"; Parameters: "-mod ""{app}\aotr"""; IconFilename: "{app}\aotr\aotr.ico"
Name: {group}\{cm:UninstallProgram, Age of the Ring}; Filename: {uninstallexe}

[Code]
function getInstallDir(Value: string): string;
var 
  installDir: string;
begin
  if isWin64 then
  begin
      RegQueryStringValue(HKLM, 'SOFTWARE\Wow6432Node\Electronic Arts\Electronic Arts\The Lord of the Rings, The Rise of the Witch-king', 'UserDataLeafName', installDir);
  end
  else
	    RegQueryStringValue(HKLM, 'SOFTWARE\Electronic Arts\Electronic Arts\The Lord of the Rings, The Rise of the Witch-king', 'UserDataLeafName', installDir);

  Result := ExpandConstant('{userappdata}') + '\' + installDir;
end;

function getBFMEDir(Value: string): string;
var 
  installDir: string;
begin
  if isWin64 then
  begin
      RegQueryStringValue(HKLM, 'SOFTWARE\Wow6432Node\Electronic Arts\Electronic Arts\The Lord of the Rings, The Rise of the Witch-king', 'InstallPath', installDir);
  end
  else
	    RegQueryStringValue(HKLM, 'SOFTWARE\Electronic Arts\Electronic Arts\The Lord of the Rings, The Rise of the Witch-king', 'InstallPath', installDir);
  Result := installDir;
end;

function getBFME2Dir(Value: string): string;
var 
  installDir: string;
begin
  if isWin64 then
  begin
      RegQueryStringValue(HKLM, 'SOFTWARE\Wow6432Node\Electronic Arts\Electronic Arts\The Battle for Middle-earth II', 'InstallPath', installDir);
  end
  else
	    RegQueryStringValue(HKLM, 'SOFTWARE\Electronic Arts\Electronic Arts\The Battle for Middle-earth II', 'InstallPath', installDir);
  Result := installDir;
end;

function NextButtonClick(PageId: Integer): Boolean;
begin
    Result := True;
    {We make sure that 2.02 is enabled}
    if (PageId = wpReady) and not FileExists(ExpandConstant('{code:getBFMEDir}\###########202_v8.0.1.big')) then begin
        MsgBox('It seems you do not have RotWk patch 2.02 v8.01 enabled. Please install or enable it and try again.', mbError, MB_OK);
        Result := False;
        exit;
    end;

    {We make sure that 2.02 is not enabled to anything above 8.0.1}
    if (pageId = wpReady) and FileExists(ExpandConstant('{code:getBFMEDir}\############202_v8.2.0.big')) then begin
        MsgBox('You have a version higher than v8.01 enabled, please make sure that 2.02 is enabled on version 8.01', mbError, MB_OK);
        Result := False;
        exit;
    end;

    {We check if the chosen directory starts with the same text as the rotwk game directory}
    if (PageId = wpSelectDir) and (Pos(ExpandConstant('{code:getBFMEDir}'), ExpandConstant('{app}')) <> 0) then begin
        MsgBox('Please do not install the mod in your game folder', mbError, MB_OK);
        Result := False;
        exit;
    end;

    {We check if the chosen directory starts with the same text as the BFME game directory}
    if (PageId = wpSelectDir) and (Pos(ExpandConstant('{code:getBFME2Dir}'), ExpandConstant('{app}')) <> 0) then begin
        MsgBox('Please do not install the mod in your game folder', mbError, MB_OK);
        Result := False;
        exit;
    end;
end;

[Run]
Filename: https://docs.google.com/document/d/12XteHeviEyIz8jaGMTyjKVeuJUVmEYUX4jbixkJFzhU/edit; Description: "Open the README"; Flags: postinstall shellexec
Filename: https://discord.gg/SHm3QrZ; Description: "Join the AotR Discord!"; Flags: postinstall shellexec unchecked
Filename: https://aotr.wikia.com/wiki/AOTR_Wiki; Description: "Bookmark the Wiki!"; Flags: postinstall shellexec unchecked
