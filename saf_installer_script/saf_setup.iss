; -- The Age of the Ring Mod for BFME 2 ROTWK Installer --
; by ICT
; later maintained by Necro
; mod created by Mathijs/RoR et al
; Modified by Spartan184 for Shadow and Flame

[Setup]
AppName=Shadow and Flame Mod
AppVersion=1.0
AppId=SaF1.0

DefaultDirName="{userappdata}\My Battle for Middle-earth Files"
DisableDirPage=no
DirExistsWarning=no
Compression=lzma2
SolidCompression=yes
DiskSpanning=yes
SlicesPerDisk=2
DiskSliceSize=1500000000 
WizardImageFile=saf.bmp
OutputBaseFilename=ShadowAndFlameInstaller1.0
DisableProgramGroupPage=no
DefaultGroupName=Shadow and Flame
AppPublisher=SaF staff
AppPublisherURL=https://www.moddb.com/mods/shadow-and-flame
PrivilegesRequired=admin


[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"


[Files]
Source: "saf.ico"; DestDir:{app}
#ifdef Debug
Source: "saf_src_debug\*"; DestDir:{app}; Flags: ignoreversion recursesubdirs
#else
Source: "saf_src\*"; DestDir:{app}; Flags: ignoreversion recursesubdirs
#endif

[Icons]
Name: "{userdesktop}\Shadow and Flame"; Filename: "{code:getBFMEDir}\lotrbfme.exe"; Parameters: "-mod SaF1.0.big"; WorkingDir: "{code:getBFMEDir}"; IconFilename: "{userappdata}\My Battle for Middle-earth Files\saf.ico"
Name: "{group}\Shadow and Flame";      Filename: "{code:getBFMEDir}\lotrbfme.exe"; Parameters: "-mod SaF1.0.big"; WorkingDir: "{code:getBFMEDir}"; IconFilename: "{userappdata}\My Battle for Middle-earth Files\saf.ico"
Name: {group}\{cm:UninstallProgram, Shadow and Flame}; Filename: {uninstallexe}

[Code]
function getBFMEDir(Value: string): string;
var 
  installDir: string;
begin
  if isWin64 then
  begin
      RegQueryStringValue(HKLM, 'SOFTWARE\WOW6432Node\Electronic Arts\EA Games\The Battle for Middle-earth', 'InstallPath', installDir);
  end
  else
	    RegQueryStringValue(HKLM, 'SOFTWARE\Electronic Arts\EA Games\The Battle for Middle-earth', 'InstallPath', installDir);
  Result := installDir;
end;

function NextButtonClick(PageId: Integer): Boolean;
begin
    Result := True;
    {We make sure that BFME1 1.06 is installed.}
    if (PageId = wpReady) and not FileExists(ExpandConstant('{code:getBFMEDir}\_patch106.big')) then begin
        MsgBox('It seems you do not have BFME1 patch 1.06 installed. Please install and try again.', mbError, MB_OK);
        Result := False;
        exit;
    end;
end;

[Run]
Filename: https://www.moddb.com/mods/shadow-and-flame; Description: "Visit our ModDB page!"; Flags: postinstall shellexec
Filename: https://discord.gg/SHm3QrZ; Description: "Join the SaF Discord!"; Flags: postinstall shellexec unchecked
