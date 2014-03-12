; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "SnoopSpy"
#define MyAppVersion "3.0"
#define MyAppPublisher "gilgil"
#define MyAppURL "http://www.snoopspy.com/"
#define MyAppExeName "snoopspy.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{6FC315FE-CE09-40F3-8EC5-7BB72B14B5EF}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputBaseFilename=snoopspy3_setup_64
SetupIconFile=..\snoop.ico
Compression=lzma
SolidCompression=yes
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
; snoop
Source: "..\bin\snoopspy.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\enuminterface.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\rtmrecover.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\sscon.exe"; DestDir: "{app}"; Flags: ignoreversion
; vdream
Source: "..\..\..\vdream\vdream90\bin\getline.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\..\vdream\vdream90\bin\httpproxy.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\..\vdream\vdream90\bin\logserver.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\..\vdream\vdream90\bin\netc.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\..\vdream\vdream90\bin\netclient.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\..\vdream\vdream90\bin\nets.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\..\vdream\vdream90\bin\netserver.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\..\vdream\vdream90\bin\vlog.exe"; DestDir: "{app}"; Flags: ignoreversion
; certificate
Source: "..\..\certificate\*"; DestDir: "{app}\certificate"; Flags: ignoreversion recursesubdirs createallsubdirs
; openssl
Source: "C:\OpenSSL-Win64\bin\libeay32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\OpenSSL-Win64\bin\ssleay32.dll"; DestDir: "{app}"; Flags: ignoreversion
; windivert
Source: "..\..\windivert\1.1.2-rc\mingw\amd64\WinDivert.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\windivert\1.1.2-rc\mingw\amd64\WinDivert64.sys"; DestDir: "{app}"; Flags: ignoreversion; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\certificate\_init_site.bat"
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
