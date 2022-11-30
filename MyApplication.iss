#define MyAppName "我的应用"
#define MyRegistryKeyName "MyApplication"
#define MyAppPublisher "我的公司"
#define MyAppURL "http://www.myApplication.cn/"
#define MyProgramFileDir "MyApplication"
#define MyDataFileDir "MyApplicationData"
#define MyAppVersion "2.11"
#define MyEXEName "我的应用-2.11"
#define MyUpdateJsonDir "MyApplicationProduct"
#define MyUpdateJsonName "1854322.json"       ;我的应用产品号
#define MySilentParamName "mySilent"       ;静默安装参数

[setup]
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyProgramFileDir}
DefaultGroupName={#MyAppName}
OutputBaseFilename={#MyEXEName}
SetupIconFile=myIco.ico
UninstallIconFile=myIco.ico
OutputDir=.
Compression=lzma/ultra64
SolidCompression=yes
PrivilegesRequired=admin
AlwaysRestart=no
Uninstallable=yes
//AlwaysRestart=yes强制重启
//ultra64

DisableReadyPage=yes
DisableProgramGroupPage=yes
DirExistsWarning=no
DisableDirPage=yes
[Messages]
SetupAppTitle={#MyAppName} 安装向导
SetupWindowTitle={#MyAppName} 安装向导

[Files]
//onlyifdoesntexist 仅在文件不存在的时候 安装
Source: tmp\*; DestDir: {tmp}; Flags: dontcopy solidbreak ; Attribs: hidden system
//Source: app - 测试用\*; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;
Source: app\*; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;

[Icons]
;Name: C:\ProgramData\Microsoft\Windows\Start Menu\Programs\{#MyAppName}\{#MyAppName}; Filename: {app}\MyStartUp.exe; WorkingDir: {app};
//开始菜单快捷方式
//Name: C:\ProgramData\Microsoft\Windows\Start Menu\Programs\{#MyAppName}\卸载 {#MyAppName}; Filename:{uninstallexe}; WorkingDir: {app};
//开始菜单卸载程序

Name: "{group}\{#MyAppName}"; Filename: "{app}\MyApplication.exe"
//桌面快捷方式，改到安装完成之后判断是否创建
//Name: {commondesktop}\{#MyAppName}; Filename: {app}\MyApplication.exe; WorkingDir: {app};

[UninstallDelete]
//删除桌面快捷方式
Type: files; Name: "{commondesktop}\{#MyAppName}.lnk"

[Registry]
;CAD2012
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R18.2\ACAD-A001:804\Applications\{#MyRegistryKeyName};ValueType: string; ValueName:LOADER;ValueData:{app}\ACAD\2012\CFD.Main2012.dll;Flags: uninsdeletekey
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R18.2\ACAD-A001:804\Applications\{#MyRegistryKeyName};ValueType: dword; ValueName:LOADCTRLS;ValueData:2;Flags: uninsdeletekey
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R18.2\ACAD-A001:804\Applications\{#MyRegistryKeyName};ValueType: dword; ValueName:MANAGED;ValueData:1;Flags: uninsdeletekey
;CAD2014
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R19.1\ACAD-D001:804\Applications\{#MyRegistryKeyName};ValueType: string; ValueName:LOADER;ValueData:{app}\ACAD\2014\CFD.Main2014.dll;Flags: uninsdeletekey
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R19.1\ACAD-D001:804\Applications\{#MyRegistryKeyName};ValueType: dword; ValueName:LOADCTRLS;ValueData:2;Flags: uninsdeletekey
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R19.1\ACAD-D001:804\Applications\{#MyRegistryKeyName};ValueType: dword; ValueName:MANAGED;ValueData:1;Flags: uninsdeletekey
;CAD2016
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R20.1\ACAD-F001:804\Applications\{#MyRegistryKeyName};ValueType: string; ValueName:LOADER;ValueData:{app}\ACAD\2016\CFD.Main2016.dll;Flags: uninsdeletekey
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R20.1\ACAD-F001:804\Applications\{#MyRegistryKeyName};ValueType: dword; ValueName:LOADCTRLS;ValueData:2;Flags: uninsdeletekey
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R20.1\ACAD-F001:804\Applications\{#MyRegistryKeyName};ValueType: dword; ValueName:MANAGED;ValueData:1;Flags: uninsdeletekey
;CAD2018
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R22.0\ACAD-1001:804\Applications\{#MyRegistryKeyName};ValueType: string; ValueName:LOADER;ValueData:{app}\ACAD\2018\CFD.Main2018.dll;Flags: uninsdeletekey
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R22.0\ACAD-1001:804\Applications\{#MyRegistryKeyName};ValueType: dword; ValueName:LOADCTRLS;ValueData:2;Flags: uninsdeletekey
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R22.0\ACAD-1001:804\Applications\{#MyRegistryKeyName};ValueType: dword; ValueName:MANAGED;ValueData:1;Flags: uninsdeletekey
;CAD2020
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R23.1\ACAD-3001:804\Applications\{#MyRegistryKeyName};ValueType: string; ValueName:LOADER;ValueData:{app}\ACAD\2020\CFD.Main2020.dll;Flags: uninsdeletekey
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R23.1\ACAD-3001:804\Applications\{#MyRegistryKeyName};ValueType: dword; ValueName:LOADCTRLS;ValueData:2;Flags: uninsdeletekey
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R23.1\ACAD-3001:804\Applications\{#MyRegistryKeyName};ValueType: dword; ValueName:MANAGED;ValueData:1;Flags: uninsdeletekey
;CAD2022
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R24.1\ACAD-5101:804\Applications\{#MyRegistryKeyName};ValueType: string; ValueName:LOADER;ValueData:{app}\ACAD\2022\CFD.Main2022.dll;Flags: uninsdeletekey
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R24.1\ACAD-5101:804\Applications\{#MyRegistryKeyName};ValueType: dword; ValueName:LOADCTRLS;ValueData:2;Flags: uninsdeletekey
Root:HKLM64;Subkey:SOFTWARE\Autodesk\AutoCAD\R24.1\ACAD-5101:804\Applications\{#MyRegistryKeyName};ValueType: dword; ValueName:MANAGED;ValueData:1;Flags: uninsdeletekey

[Run]
//Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

//桌面快捷方式
[Messages]
;卸载对话框说明
//ConfirmUninstall=您真的想要从电脑中卸载吗?%n%n按 [是] 则完全删除 %1 以及它的所有组件;%n按 [否]则让软件继续留在您的电脑上.

[Code]
#include 'dll.iss'

procedure ExitProcess(exitCode:integer);
external 'ExitProcess@kernel32.dll stdcall';

  //全局变量
var
  label1,label2,label3,label4,label5,label6,label7,label8,MainLabel:TLabel;
  imgJingGao,BGimg:longint;
  licenseBtn,MinBtn,CancelBtn,btn_Browser,btn_Browser2,btn_setup,btn5,btnBack,MinBtnZ,CancelBtnZ:HWND;
  c_btn,xypd,keepUserData,setupFlag1,setupFlag2:boolean;
  _isSilent:boolean;//静默安装
  pathEdit:tedit;
  pathEdit2:tedit;
  licenseImg,progressbgImgbk,progressbgImg,PBOldProc:longint;
  Timer1: TTimer;
  licenseCheck,desktopIconCheck,keepUserDataCheck,saveMyDirRadio,saveCustomDirRadio:HWND;
  licenseRich:TRichEditViewer;
  BackgroundBitmapImage: TBitmapImage;
  BackgroundBitmapText: TNewStaticText;
  
  freespacelabel: TLabel;
  FreeSpace, TotalSpace: Cardinal;
  //卸载窗口
  UnStartForm:TForm;
  UninstalledForm:TSetupForm;
  UninstallImage, IconI, IconTitle: longint;
  MResult: Integer;
  UnConfirmButton,UnCloseButton :TButton;
  UnprogressbgImg: Longint;
  PBOldProcU : Longint;
  
  WorkFolderPath:String;

//创建弹窗
  function ShowDialog(owner:TWinControl;caption1:string;isConfirm:Boolean):Integer;
  var titleImage:TBitmapImage;
  var mlabel1:TLabel;
  var btnConfirm,btnCancel,btnOk:TButton;
  var dialogBox:TForm;
  var ScreenWidth,ScreenHeight:Integer;
  begin
    dialogBox := TForm.Create(owner);
    with dialogBox do
      begin
      //Parent := owner;
      Caption := '{#MyAppName}';
      Font.Name:='苹方-简 常规体'
      Font.Size:=10
      Left:=120
      Top:=120
      Width:=260
      Height:=160
      BorderStyle:=bsDialog//导致没Icon
      Position:=poOwnerFormCenter
      end;

    mlabel1:=TLabel.Create(dialogBox);
    with mlabel1 do
      begin
      Parent := dialogBox;
      Caption := caption1;
      Font.Name:='苹方-简 常规体'
      Font.Size:=10
      Transparent := TRUE;
      Visible := True;
      SetBounds(50,45,200,17)
      end;
    btnConfirm:=TButton.Create(dialogBox);
    with btnConfirm do
      begin
      Parent := dialogBox;
      ModalResult := mrOk;
      Caption := '确定';
      Font.Name:='苹方-简 常规体'
      Font.Size:=10
      Visible := isConfirm=True;
      SetBounds(185,100,60,20)
      end;
    btnOk:=TButton.Create(dialogBox);
    with btnOk do
      begin
      Parent := dialogBox;
      ModalResult := mrOk;
      Caption := '是';
      Font.Name:='苹方-简 常规体'
      Font.Size:=10
      Visible := isConfirm=False;
      SetBounds(185,100,60,20)
      end;
    btnCancel:=TButton.Create(dialogBox);
    with btnCancel do
      begin
      Parent := dialogBox;
      ModalResult := mrCancel;
      Cancel := True;
      Caption := '否';
      Font.Name:='苹方-简 常规体'
      Font.Size:=10
      Visible := isConfirm=False;
      SetBounds(115,100,60,20)
      end;
    result:=dialogBox.ShowModal;
  end;
  
Function StartMenu(): Boolean;
begin
  Result :=BtngetChecked(saveCustomDirRadio)
end;

Function desktop(): Boolean;
begin
  Result :=BtngetChecked(saveMyDirRadio)
end;

procedure CancelButtonClick(CurPageId:Integer;var Cancel,Confirm:Boolean);
var flag:Integer;
begin
  Confirm:=False;
  flag:=MsgBox('您确定退出{#MyAppName}的安装吗？', mbConfirmation, MB_YESNO)
  if flag=IDYES then
  begin
    WizardForm.Hide;
    MsgBox('您已退出{#MyAppName}的安装！', mbInformation, MB_OK)
    Cancel:=True;
  end
  else
  begin
    Cancel:=False;
  end;
end;
  
procedure CancelBtnOnClick(hBtn:HWND);
begin
 WizardForm.CancelButton.OnClick(hBtn);
end;

procedure MinBtnOnClick(hBtn:HWND);
begin
SendMessage(WizardForm.Handle,WM_SYSCOMMAND,61472,0);
end;

procedure ShowFreeSpaceOnDisc(Sender: TObject);
begin
  if GetSpaceOnDisk(ExtractFileDrive(WizardForm.DirEdit.Text), True, FreeSpace, TotalSpace) then
  begin
    freespacelabel.Caption:= '剩余空间: ' + IntToStr(FreeSpace) + ' MB';
    if StrToInt(IntToStr(FreeSpace)) < StrToInt('366') then
    begin
      label7.Visible :=true;
      ImgSetVisibility(imgJingGao, true);
      freespacelabel.Font.Color:= clRed
    end
    else
    begin
      label7.Visible :=false;
      ImgSetVisibility(imgJingGao, false);
      freespacelabel.Font.Color:= clBlack
    end
  end
  else
  begin
    freespacelabel.Caption:= '剩余空间: 0 MB';
    label7.Visible :=true;
    ImgSetVisibility(imgJingGao, true);
    freespacelabel.Font.Color:= clRed
  end;
  if (BtnGetChecked(licenseCheck) and (label7.Visible<>true)) then
    BtnSetEnabled(btn_setup,true)
  else
    BtnSetEnabled(btn_setup,false);
  ImgApplyChanges(WizardForm.Handle);
end;
  
procedure btn5click(hBtn:HWND);
begin
  if c_btn then
  begin
  BtnSetPosition(licenseCheck,22,475,15,15);
  BtnSetPosition(licenseBtn,100,475,108,15);
  BtnSetPosition(desktopIconCheck,200,475,108,15);
  BtnSetPosition(btn5,560,479,75,15);
  pathEdit.show;
  //pathEdit2.show;
  BtnSetVisibility(btn_Browser,true)
  //BtnSetVisibility(btn_Browser2,true)
  WizardForm.Height:=508
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\询问安装.png'),0,0,768,428,true,true);
  c_btn := false
  end else
  begin
  BtnSetPosition(licenseCheck,22,421,15,15);
  BtnSetPosition(licenseBtn,100,421,108,15);
  BtnSetPosition(desktopIconCheck,200,475,108,15);
  BtnSetPosition(btn5,560,421,75,15);
  pathEdit.Hide;
  //pathEdit2.Hide;
  BtnSetVisibility(btn_Browser,false)
  //BtnSetVisibility(btn_Browser2,false)
  WizardForm.Height:=450
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\询问安装.png'),0,0,768,428,false,true);
  c_btn := true
  end;
  ImgApplyChanges(WizardForm.Handle);
end;

//点击浏览目录
procedure btn_Browserclick(hBtn:HWND);
begin
  //WizardForm.DirBrowseButton.Click;
  WizardForm.DirBrowseButton.OnClick(WizardForm);
  pathEdit.text := WizardForm.DirEdit.text;
end;

//修改文件路径
procedure pathEditChange(Sender: TObject);
begin
  WizardForm.DirEdit.text:=pathEdit.Text ;
end;

//浏览安装文件目录
procedure DirBrowseButtonClick(hBtn:HWND);
var
  res: Boolean;
  UserSelectDir,strEnd: string;
begin
  UserSelectDir := pathEdit.Text;
  UserSelectDir := Copy(UserSelectDir, 0, Length(UserSelectDir) - Length('{#MyProgramFileDir}') - 1);//取用户选择部分 C:\ProgramFiles
  res :=  BrowseForFolder('浏览安装文件目录', UserSelectDir, True);
  if res then
  begin
  strEnd:=Copy(UserSelectDir,Length(UserSelectDir),1);//取最后一个字符
    if '\'=strEnd then
    pathEdit.Text := UserSelectDir + '{#MyProgramFileDir}'
    else
    pathEdit.Text := UserSelectDir + '\{#MyProgramFileDir}';
  end;

end;

//浏览工程文件目录
procedure DirBrowseButtonClick2(hBtn:HWND);
var
  res: Boolean;
  UserSelectDir,strEnd: string;
begin
  UserSelectDir := pathEdit2.Text;
  UserSelectDir := Copy(UserSelectDir, 0, Length(UserSelectDir) - Length('{#MyDataFileDir}') - 1);//取用户选择部分 C:\ProgramFiles
  res := BrowseForFolder('浏览工程文件目录', UserSelectDir, True);
  if res then
  begin
  strEnd:=Copy(UserSelectDir,Length(UserSelectDir),1);//取最后一个字符
    if '\'=strEnd then
    pathEdit2.Text := UserSelectDir + '{#MyDataFileDir}'
    else
    pathEdit2.Text := UserSelectDir + '\{#MyDataFileDir}';
  WorkFolderPath := pathEdit2.Text;
  end;
end;

//修改json的ProductPath
function SetProductPath(strArray:TArrayOfString):TArrayOfString;
var
  lineStr:String;
  index1:Integer;
  index2:Integer;
  index3:Integer;
  index4:Integer;
  key:String;
  value:String;
  i:Integer;
  j:Integer;
begin
  for i:=0 to Length(strArray)-1 do
  begin
    lineStr:=strArray[i];
    index1:=-1;index2:=-1;index3:=-1;index4:=-1;
    for j:=1 to Length(lineStr) do //获取四个“的索引位置
      if lineStr[j]='"' then
        if index1=-1 then index1:=j
        else if index2=-1 then index2:=j
        else if index3=-1 then index3:=j
        else index4:=j;
    key:=Copy(lineStr, index1+1, index2-index1-1);//key值
    if key='ProductPath' then
    begin //删掉原值，插入新值：安装目录，重写文件
      value:=WizardForm.DirEdit.Text;//value值
      StringChange(value,'\','\\');//单\转换成双\\
      Delete(lineStr, index3+1, index4-index3-1);
      Insert(value, lineStr, index3+1);
      strArray[i]:=lineStr;
    end;
    if key='Version' then
    begin //删掉原值，插入新值：版本，重写文件
      value:='{#MyAppVersion}';//value值
      Delete(lineStr, index3+1, index4-index3-1);
      Insert(value, lineStr, index3+1);
      strArray[i]:=lineStr;
    end;
    if key='NewVersion' then
    begin //删掉原值，插入新值：版本，重写文件
      value:='{#MyAppVersion}';//value值
      Delete(lineStr, index3+1, index4-index3-1);
      Insert(value, lineStr, index3+1);
      strArray[i]:=lineStr;
    end;
  end;
  result:=strArray;
end;

//复制Product
procedure CopyProductJsonFile();
var
  jsonDirName,jsonFileName:string;
  strArray:TArrayOfString;
begin
  jsonDirName:= ExpandConstant('{commonappdata}\{#MyUpdateJsonDir}');
  jsonFileName:= ExpandConstant('{commonappdata}\{#MyUpdateJsonDir}\{#MyUpdateJsonName}');
  ExtractTemporaryFile('{#MyUpdateJsonName}');
  if DirExists(jsonDirName)=false then
    CreateDir(jsonDirName);
  if FileExists(jsonFileName)=true then
    DeleteFile(jsonFileName);

  LoadStringsFromFile(ExpandConstant('{tmp}\{#MyUpdateJsonName}'),strArray);
  strArray:=SetProductPath(strArray);
  SaveStringsToFile(jsonFileName, strArray, false);
end;

//修改更新配置文件
procedure SetProductPath2();
var
  params:string;
  ErrorCode:Integer;
begin
  params:='"'+WizardForm.DirEdit.Text+ExpandConstant('\AutoUpdate\MyApplicationProduct\{#MyUpdateJsonName}" "')+WizardForm.DirEdit.Text+'" "{#MyAppVersion}"';
  if not Exec(ExpandConstant('{tmp}\CFDInstallScript.exe'),params,'',SW_HIDE,ewWaitUntilTerminated,ErrorCode) then
    begin
      //失败
    end;
end;

//勾选同意时 是否能开始安装
procedure check_licenseclick(hBtn:HWND);
begin
    if (BtnGetChecked(licenseCheck) and (label7.Visible<>true)) then
      BtnSetEnabled(btn_setup,true)
    else
      BtnSetEnabled(btn_setup,false)
end;

//勾选创建桌面快捷方式
procedure check_desktopIconlick(hBtn:HWND);
var str:string;
var flag:Boolean;
begin
  
end;

//开始安装
procedure btn_setupclick(hBtn:HWND);
var dirPath:string;
var flag,res:Boolean;
var ErrorCode:Integer;
begin
  //验证安装路径
  if Length(WizardForm.DirEdit.Text)=0 then
  begin
    MsgBox('请指定安装路径', mbInformation, MB_OK)
    exit;
  end;
  dirPath:=ExtractFileDrive(WizardForm.DirEdit.Text);
  if DirExists(ExtractFileDrive(WizardForm.DirEdit.Text))<>True then
  begin
    MsgBox('无法创建安装路径：'+WizardForm.DirEdit.Text, mbCriticalError, MB_OK)
    exit;
  end;
  //验证工程路径
  if Length(WorkFolderPath)=0 then
  begin
    MsgBox('请指定工程路径', mbInformation, MB_OK)
    exit;
  end;
  if DirExists(ExtractFileDrive(WorkFolderPath))<>True then
  begin
    MsgBox('无法创建工程路径：'+WorkFolderPath, mbCriticalError, MB_OK)
    exit;
  end;
  //写入注册表
  res:=RegWriteStringValue(HKLM64,'SOFTWARE\{#MyAppName}','WorkFolder',WorkFolderPath);
  if res=false then
  begin
    MsgBox('写入注册表失败', mbCriticalError, MB_OK)
    exit;
  end;
  //CopyProductJsonFile();

    //前强制杀进程
  if not ShellExec('', ExpandConstant('{tmp}\kill.bat'),
     '', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode) then
  begin
    // 如果需要处理失败
  end;

  WizardForm.NextButton.OnClick(hBtn);
end;

//安装完成
procedure btn_down(hBtn:HWND);
var RCode:Integer;
begin
  WizardForm.NextButton.OnClick(hBtn);
  if _isSilent=false then
    Exec(ExpandConstant('{app}\MyApplication.exe'),'','',SW_SHOW,ewNoWait,RCode);

end;

//进度条
function PBProc(h:hWnd;Msg,wParam,lParam:Longint):Longint;
var
  pr,i1,i2 : Extended;
  w : integer;
begin
  Result:=CallWindowProc(PBOldProc,h,Msg,wParam,lParam);
  if (Msg=$402) and (WizardForm.ProgressGauge.Position>WizardForm.ProgressGauge.Min) then
  begin
    i1:=WizardForm.ProgressGauge.Position-WizardForm.ProgressGauge.Min;
    i2:=WizardForm.ProgressGauge.Max-WizardForm.ProgressGauge.Min;
    pr:=i1*100/i2;
    label5.Caption:='解压缩：'+IntToStr(Round(pr))+'%';
    w:=Round(728*pr/100);
    //进度条位置
    ImgSetPosition(progressbgImg,20,397,w,10);
    ImgSetVisiblePart(progressbgImg,0,0,w,10);
    ImgApplyChanges(WizardForm.Handle);
  end;
end;

//设置界面可鼠标拖动
procedure WizardMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture
  SendMessage(WizardForm.Handle, $0112, $F012, 0)
end;

//全局变量
var
 b1,b2,b3,b4,t1,t2,t3,t4,DHIMG1:Longint;
 js1,js2:integer;

 //定时（不清楚在做什么）
procedure Timer1Timer(Sender: TObject);   //核心代码 时钟控制动画 需要inno5 增强版      代码.mad8834671
begin

  js2:=js2+10; //控制图片透明度
//if js2<650 then
//  begin
//  ImgSetTransparentEx(t1,t2,t3,t4,-650+js2)
//  end

  if  (js2>650) then      //控制图片透明度 计数归零
  begin
  js2:=0
  js1:=js1+1;
  end;


if js2<650 then
begin
    //控制显示图片
  if js1=1 then
  begin
  ImgSetPosition(t1,-650+js2,0,650,374)
 // ImgSetVisibilityEx(t1,t2,t3,t4,1,0,0,0)
 //ImgSetVisibility(t1,true)
 ImgSetVisibility(t2,false)
 ImgSetVisibility(t3,false)
 ImgSetVisibility(t4,false)
 ImgSetVisibility(t1,true)
 
  end;
  if js1=2 then
  begin
  ImgSetPosition(t2,-650+js2,0,650,374)
  //ImgSetVisibilityEx(t1,t2,t3,t4,0,1,0,0)
 ImgSetVisibility(t1,false)

 ImgSetVisibility(t3,false)
 ImgSetVisibility(t4,false)
 ImgSetVisibility(t2,true)
 
 ImgSetVisibility(b1,true)
 ImgSetVisibility(b3,false)
 ImgSetVisibility(b4,false)
 ImgSetVisibility(b2,false)
  end;
  if js1=3 then
  begin
  ImgSetPosition(t3,-650+js2,0,650,374)
 // ImgSetVisibilityEx(t1,t2,t3,t4,0,0,1,0)
 ImgSetVisibility(t1,false)
 ImgSetVisibility(t2,false)
 
 ImgSetVisibility(t4,false)
 ImgSetVisibility(t3,true)
 
 ImgSetVisibility(b1,false)
 ImgSetVisibility(b3,false)
 ImgSetVisibility(b4,false)
 ImgSetVisibility(b2,true)
  end;
  if js1=4 then
  begin
  ImgSetPosition(t4,-650+js2,0,650,374)
 // ImgSetVisibilityEx(t1,t2,t3,t4,0,0,0,1)
 ImgSetVisibility(t1,false)
 ImgSetVisibility(t2,false)
 ImgSetVisibility(t3,false)
 ImgSetVisibility(t4,true)
 
  ImgSetVisibility(b1,false)
 ImgSetVisibility(b3,true)
 ImgSetVisibility(b4,false)
 ImgSetVisibility(b2,false)
  end;
  if js1>4 then
  begin
  ImgSetPosition(t1,-650+js2,0,650,374)
 // ImgSetVisibilityEx(t1,t2,t3,t4,1,0,0,0)
  ImgSetVisibility(t2,false)
 ImgSetVisibility(t3,false)
 ImgSetVisibility(t4,false)
 ImgSetVisibility(t1,true)
 
 ImgSetVisibility(b1,false)
 ImgSetVisibility(b3,false)
 ImgSetVisibility(b4,true)
 ImgSetVisibility(b2,false)
 
  js1:=1
  end;
end;


if (js2>260) and (js2<520) then  //控制图片透明度
//  begin
//  ImgSetTransparentEx(t1,t2,t3,t4,js2-255)
//  end

  ImgApplyChanges(WizardForm.Handle)
end;

//许可协议界面
procedure locklicenseclick(hBtn:HWND);
begin
if c_btn=false then
begin
  BtnSetPosition(licenseCheck,22,421,15,15);
  BtnSetPosition(licenseBtn,100,421,108,15);
  BtnSetPosition(desktopIconCheck,200,475,108,15);
  BtnSetPosition(btn5,560,421,75,15);
  pathEdit.Hide;
  //pathEdit2.Hide;
  BtnSetVisibility(btn_Browser,false)
  //BtnSetVisibility(btn_Browser2,false)
  WizardForm.Height:=443
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\询问安装.png'),0,0,768,428,false,true);
  c_btn := true
end;
  if xypd=true then
  begin
    licenseImg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\bg_license.png'),0,0,768,428,false,false);
    xypd:=false
    licenseRich.Height:=310
    BtnSetVisibility(licenseCheck,false)
    BtnSetVisibility(licenseBtn,false)
    BtnSetVisibility(desktopIconCheck,false)
    BtnSetVisibility(btn5,false)
    BtnSetVisibility(btn_setup,false)
    BtnSetVisibility(btn_Browser,false)
    //BtnSetVisibility(btn_Browser2,false)
    pathEdit.Hide
    //pathEdit2.Hide
    BtnSetVisibility(btnBack,true)
    BtnSetVisibility(CancelBtn,false)
    BtnSetVisibility(MinBtn,false)
        BtnSetVisibility(CancelBtnZ,false)
    BtnSetVisibility(MinBtnZ,false)
  end
  else
  begin
    xypd:=true
    BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\询问安装.png'),0,0,768,428,false,true);
    licenseRich.Height:=0
    BtnSetVisibility(licenseCheck,true)
    BtnSetVisibility(licenseBtn,true)
    BtnSetVisibility(desktopIconCheck,true)
    BtnSetVisibility(btn5,true)
    BtnSetVisibility(btn_setup,true)
    BtnSetVisibility(btn_Browser,true)
    //BtnSetVisibility(btn_Browser2,true)
    pathEdit.Show;
    //pathEdit2.Show;
    ImgRelease(licenseImg)
    BtnSetVisibility(btnBack,false)
        BtnSetVisibility(CancelBtn,true)
    BtnSetVisibility(MinBtn,true)
            BtnSetVisibility(CancelBtnZ,true)
    BtnSetVisibility(MinBtnZ,true)
  end;
    ImgApplyChanges(WizardForm.Handle)
end;

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//安装界面
procedure InitializeWizard();
var ansiString:AnsiString;
var i:Integer;
begin
  WizardForm.OuterNotebook.hide;
  WizardForm.Bevel.Hide;
  WizardForm.BorderStyle:=bsnone;
  WizardForm.Position:=poScreenCenter;
  WizardForm.Width:=768;
  WizardForm.Height:=428;
  WizardForm.Color:=clWhite ;
  xypd:=true;

  //WizardForm.OnMouseDown:=@WizardMouseDown
  c_btn := true;

  ExtractTemporaryFile('kill.bat');
  ExtractTemporaryFile('MyInstallScript.exe');
  ExtractTemporaryFile('bg_license.png');
  ExtractTemporaryFile('license.rtf');
  ExtractTemporaryFile('btn_complete.png');
  ExtractTemporaryFile('btn_setup.png');
  ExtractTemporaryFile('询问安装.png');
  ExtractTemporaryFile('btn_Browser.png');
  ExtractTemporaryFile('loading.png');
  ExtractTemporaryFile('license.png');
  ExtractTemporaryFile('checkbox.png');
  ExtractTemporaryFile('checkboxdeep.png');
  ExtractTemporaryFile('jinggao@2x.png');
  ExtractTemporaryFile('loading_pic.png');
  ExtractTemporaryFile('finish_bg.png');
  ExtractTemporaryFile('btn_close.png');
  ExtractTemporaryFile('btn_min.png');
  ExtractTemporaryFile('back.png');
  ExtractTemporaryFile('紫色关闭.png');
  ExtractTemporaryFile('紫色最小化.png');
  
  MainLabel:=TLabel.Create(WizardForm);
  MainLabel.Parent:=WizardForm;
  MainLabel.AutoSize:=False;
  MainLabel.Left:=0;
  MainLabel.Top:=0;
  MainLabel.Width:=WizardForm.Width;
  MainLabel.Height:=WizardForm.Height;
  MainLabel.Caption:='';
  MainLabel.Transparent:=True;
  MainLabel.OnMouseDown:=@WizardMouseDown
  
  //关闭
  CancelBtn:=BtnCreate(WizardForm.Handle,731,24,16,16,ExpandConstant('{tmp}\btn_close.png'),1,False)
  BtnSetEvent(CancelBtn,BtnClickEventID,WrapBtnCallback(@CancelBtnOnClick,1));
  
  //CancelBtnZ:=BtnCreate(WizardForm.Handle,608,24,16,16,ExpandConstant('{tmp}\紫色关闭.png'),1,False)
  //BtnSetEvent(CancelBtnZ,BtnClickEventID,WrapBtnCallback(@CancelBtnOnClick,1));
  
  //最小化
  MinBtn:=BtnCreate(WizardForm.Handle,693,24,16,16,ExpandConstant('{tmp}\btn_min.png'),1,False)
  BtnSetEvent(MinBtn,BtnClickEventID,WrapBtnCallback(@MinBtnOnClick,1));
  
  //MinBtnZ:=BtnCreate(WizardForm.Handle,570,24,16,16,ExpandConstant('{tmp}\紫色最小化.png'),1,False)
  //BtnSetEvent(MinBtnZ,BtnClickEventID,WrapBtnCallback(@MinBtnOnClick,1));
  //立即安装按钮
  btn_setup:=BtnCreate(WizardForm.Handle,669,362,80,26,ExpandConstant('{tmp}\btn_setup.png'),1,False)
  BtnSetEvent(btn_setup,BtnClickEventID,WrapBtnCallback(@btn_setupclick,1));

  //许可协议
  licenseBtn:=BtnCreate(WizardForm.Handle,120,405,48,12,ExpandConstant('{tmp}\license.png'),4,false)
  BtnSetEvent(licenseBtn,BtnClickEventID,WrapBtnCallback(@locklicenseclick,1));

  //已阅读并同意
  licenseCheck:=BtnCreate(WizardForm.Handle,20,403,15,15,ExpandConstant('{tmp}\checkboxdeep.png'),1,true)
  BtnSetEvent(licenseCheck,BtnClickEventID,WrapBtnCallback(@check_licenseclick,1));
  BtnSetChecked(licenseCheck,true)

   //添加桌面快捷方式
  desktopIconCheck:=BtnCreate(WizardForm.Handle,220,403,15,15,ExpandConstant('{tmp}\checkboxdeep.png'),1,true)
  BtnSetEvent(desktopIconCheck,BtnClickEventID,WrapBtnCallback(@check_desktopIconlick,1));
  BtnSetChecked(desktopIconCheck,true)
  
  //返回
  btnBack:=BtnCreate(WizardForm.Handle,335,385,80,26,ExpandConstant('{tmp}\back.png'),1,False)
  BtnSetEvent(btnBack,BtnClickEventID,WrapBtnCallback(@locklicenseclick,1));
  BtnSetVisibility(btnBack,false)
  
  //选择路径
  pathEdit:= TEdit.Create(WizardForm);
  with pathEdit do
  begin
    Parent := WizardForm;
    text :=WizardForm.DirEdit.text;
    Font.Name:='宋体'
    Font.Size:=12
    BorderStyle:=bsNone;
    //安装目录
    SetBounds(22,365,389,18)
    OnChange:=@pathEditChange;
    //Color := $00D0e2ff;    cl3dlight  clwhite
    Color := clwhite
    TabStop :=false;
  end;
  //选择工程路径
  pathEdit2:= TEdit.Create(WizardForm);
  with pathEdit2 do
  begin
    Parent := WizardForm;
    text :='D:\{#MyDataFileDir}';
    Font.Name:='宋体'
    Font.Size:=12
    BorderStyle:=bsNone;
    //安装目录
    SetBounds(22,365,389,18)
    OnChange:=@pathEditChange;
    //Color := $00D0e2ff;    cl3dlight  clwhite
    Color := clwhite
    TabStop :=false;
    Visible :=false;
  end;
  WorkFolderPath := pathEdit2.Text;
  
  //已阅读并同意
  label3:= TLabel.Create(WizardForm);
    with label3 do
    begin
    Parent := WizardForm;
    Caption := '已阅读并同意';
    Font.Name:='苹方-简 常规体'
    Font.Size:=10
    Transparent := TRUE;
    Visible := TRUE;
    SetBounds(38 ,404,100,17)
    end;

  //创建桌面快捷方式
  label8:= TLabel.Create(WizardForm);
    with label8 do
    begin
    Parent := WizardForm;
    Caption := '添加桌面快捷方式';
    Font.Name:='苹方-简 常规体'
    Font.Size:=10
    Transparent := TRUE;
    Visible := TRUE;
    SetBounds(238 ,404,120,17)
    end;

  //需要空间
  label6:= TLabel.Create(WizardForm);
  label6.Parent:= WizardForm;
  label6.Left:= 20;
  label6.Top:= 316;
  label6.Height:= 17;
  label6.Width:= 117;
  label6.Transparent := TRUE;
  label6.Caption:='需要空间：213 MB'

  //剩余空间
  label7:= TLabel.Create(WizardForm);
  label7.Parent:= WizardForm;
  label7.Left:= 677;
  label7.Top:= 316;
  label7.Height:= 17;
  label7.Width:= 72;
  label7.Transparent := TRUE;
  label7.Caption:='剩余空间不足';
  label7.Visible:=True;
  label7.Font.Color := clRed

  //可用空间
  freespacelabel:= TLabel.Create(WizardForm);
  freespacelabel.Parent:= WizardForm;
  freespacelabel.Left:= 167;
  freespacelabel.Top:= 316;
  freespacelabel.Height:= 17;
  freespacelabel.Width:= 117;
  freespacelabel.Transparent := TRUE;
  freespacelabel.Caption:= '剩余空间: 0 MB';

  //剩余空间检测
  WizardForm.DirEdit.OnChange:=@ShowFreeSpaceOnDisc;

  //警告图标
  imgJingGao:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\jinggao@2x.png'),657,316,12,12,True,False);

  //浏览路径
  btn_Browser:=BtnCreate(WizardForm.Handle,419,368,21,17,ExpandConstant('{tmp}\btn_Browser.png'),1,False)
  BtnSetEvent(btn_Browser,BtnClickEventID,WrapBtnCallback(@DirBrowseButtonClick,1));
    //浏览路径
  //btn_Browser2:=BtnCreate(WizardForm.Handle,419,368,21,17,ExpandConstant('{tmp}\btn_Browser.png'),1,False)
  //BtnSetEvent(btn_Browser2,BtnClickEventID,WrapBtnCallback(@DirBrowseButtonClick,1));

  //BtnSetVisibility(btn_Browser,false)

  //btn5:=BtnCreate(WizardForm.Handle,560,421,75,15,ExpandConstant('{tmp}\btn_n.png'),1,False)
  //BtnSetEvent(btn5,BtnClickEventID,WrapBtnCallback(@btn5click,1));

  PBOldProc:=SetWindowLong(WizardForm.ProgressGauge.Handle,-4,PBCallBack(@PBProc,4));

  Timer1 := TTimer.Create(WizardForm);
  with Timer1 do
  begin
    OnTimer := @Timer1Timer;
  end;
   js1:=1
   js2:=0
  //许可协议
  licenseRich:= TRichEditViewer.Create(WizardForm);
  with licenseRich do
  begin
  Parent := WizardForm;
  ReadOnly:= true;
  SCROLLBARS:= ssVertical;
  font.Name:='宋体'
  Color:=clWhite;
  BorderStyle:= bsNone;
  SetBounds(42,56,690,172)
  //读取许可协议文件
  LoadStringFromFile(ExpandConstant('{tmp}\license.rtf'), ansiString);
  RTFText:=ansiString;
  //Lines.LoadFromFile(ExpandConstant('{tmp}\license.rtf'));
  TabStop:=false;
  Height := 0;
  end;
  
  ImgApplyChanges(WizardForm.Handle)
end;

//关闭安装
procedure DeinitializeSetup();
begin
  gdipShutdown;
  if PBOldProc<>0 then SetWindowLong(WizardForm.ProgressGauge.Handle,-4,PBOldProc);
end;

//创建桌面快捷方式
procedure CreateDesktopShellLink();
begin
  //Name: {commondesktop}\{#MyAppName}; Filename: {app}\MyApplication.exe; WorkingDir: {app};

  if BtnGetChecked(desktopIconCheck)=true then
  CreateShellLink(
    ExpandConstant('{commondesktop}\{#MyAppName}.lnk'),
    '',
    ExpandConstant('{app}\MyApplication.exe'),
    '',
    ExpandConstant('{app}'),
    ExpandConstant('{app}\Image\myIco.ico'),
    0,
    SW_SHOWNORMAL);
end;

//切换页面时
procedure CurPageChanged(CurPageID: Integer);
var
  text:string;
  paramsStr:string;
  paramsCount:Integer;
  i:Integer;
begin
  WizardForm.NextButton.Visible:=false;
  WizardForm.CancelButton.Height:=0;
  WizardForm.BackButton.Height:=0;
  //询问安装界面
  if CurPageID=wpWelcome then
  begin
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\询问安装.png'),0,0,768,428,true,true);
  
  //检测剩余空间
  ShowFreeSpaceOnDisc(WizardForm.DirEdit)

   //BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic.png'),0,0,650,450,false,true);
  // ImgSetPosition(BGimg,-100,0,650,450);
  //  ImgSetVisiblePart(progressbgImg,0,0,w,15);
  
  WizardForm.Width:=768;
  WizardForm.Height:=428;
  WizardForm.Show;

  paramsCount:=ParamCount(); //获取参数数量
  if paramsCount>0 then
    begin
      for i:=0 to paramsCount do
      begin
        paramsStr:=ParamStr(i); //获取第i个参数
        if Pos('{#MySilentParamName}',paramsStr)>0 then //判断有个参数是静默安装时执行静默安装
          begin
            _isSilent:=true;
            btn_setupclick(WizardForm.Handle);
            break;
          end;
      end;
    end;
  end;

  //等待安装界面
  if CurPageId = wpPreparing then
  begin
    WizardForm.PreparingYesRadio.Checked:=false;
    text:= WizardForm.PreparingLabel.Caption;
    if CompareText(text,'*')<>0 then
    begin
      if Length(WizardForm.PreparingMemo.Text)<>0 then
        text:= text+Chr(13)+Chr(13)+WizardForm.PreparingMemo.Text;//Chr(13)表示换行
      MsgBox(text, mbCriticalError, MB_OK);
    end;
  end;

  //安装中界面
  if CurPageID = wpInstalling then
  begin
   // ImgSetPosition(progressbgImg,0,400,650,10);
   // ImgSetVisiblePart(progressbgImg,0,0,0,10);

  BtnSetVisibility(CancelBtn,false)
  BtnSetVisibility(MinBtn,false)
  label3.Visible:=False;
  label8.Visible:=False;
  label6.Visible:=False;
  freespacelabel.Visible:=False;
  ImgSetVisibility(imgJingGao, false);
  BtnSetPosition(licenseCheck,560,421,75,15);
  BtnSetPosition(btn5,560,421,75,15);
  pathEdit.Hide;
  BtnSetVisibility(btn_Browser,false)
  WizardForm.Height:=443
 // BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\xy.png'),0,0,650,450,false,true);
  c_btn := true
  BtnSetVisibility(btn5,false);
  BtnSetVisibility(licenseBtn,false);
  BtnSetVisibility(desktopIconCheck,false);
  BtnSetVisibility(licenseCheck,false);

  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic.png'),0,0,768,428,false,true);
  progressbgImg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading.png'),20,397,0,0,true,True);


  //b1:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic1.png'),0,0,650,374,true,true);    //加载图片必备的
  //b2:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic2.png'),0,0,650,374,true,true);
  //b3:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic3.png'),0,0,650,374,true,true);
  //b4:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic4.png'),0,0,650,374,true,true);

  
  //t1:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic1.png'),0,0,650,374,true,true);    //加载图片必备的
  //t2:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic2.png'),0,0,650,374,true,true);
  //t3:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic3.png'),0,0,650,374,true,true);
  //t4:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic4.png'),0,0,650,374,true,true);
  
 // ImgSetVisibility(t1,false)     //出现动画时 第一张显示的图片   下面几张禁用的
 // ImgSetVisibility(t2,false)
 // ImgSetVisibility(t3,false)
 // ImgSetVisibility(t4,false)
  
 // ImgSetVisibility(b1,false)     //出现动画时 第一张显示的图片   下面几张禁用的
//  ImgSetVisibility(b2,false)
//  ImgSetVisibility(b3,false)
 // ImgSetVisibility(b4,false)
  
  BtnSetVisibility(btn_setup,false);
  Timer1.Interval:=50
    label4:= TLabel.Create(WizardForm);
    with label4 do
    begin
    Parent := WizardForm;
    Caption := '正在安装...';
    Font.Name:='苹方-简 常规体'
    Font.Size:=10
    Transparent := TRUE;
    SetBounds(20 ,375,100,17) ;
    end;
    
    label5:= TLabel.Create(WizardForm);
    with label5 do
    begin
    Parent := WizardForm;
    Caption := '解压缩：';
    Font.Name:='苹方-简 常规体'
    Font.Size:=10
    Transparent := TRUE;
    SetBounds(652,375,100,17) ;
    end;
  end;
  
  //安装完成
  if CurPageID = wpFinished then
  begin
   Timer1.Interval:=0
   ImgSetVisibility(progressbgImgbk,false)
   ImgSetVisibility(progressbgImg,false)
   //BtnSetVisibility(CancelBtn,false);
   label4.Visible := false;
   label5.Visible := false;
   btn_setup:=BtnCreate(WizardForm.Handle,321,284,126,34,ExpandConstant('{tmp}\btn_complete.png'),1,False)
   //CancelBtn:=BtnCreate(WizardForm.Handle,608,24,16,16,ExpandConstant('{tmp}\btn_close.png'),1,False)
   BtnSetEvent(btn_setup,BtnClickEventID,WrapBtnCallback(@btn_down,1));
   BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\finish_bg.png'),0,0,768,428,false,true);
   BtnSetVisibility(CancelBtnZ,false)
   BtnSetVisibility(MinBtnZ,false)
   //saveMyDirRadio:=BtnCreate(WizardForm.Handle,50,300,15,15,ExpandConstant('{tmp}\checkbox.png'),4,TRUE)
   //saveCustomDirRadio:=BtnCreate(WizardForm.Handle,50,340,15,15,ExpandConstant('{tmp}\checkbox.png'),4,TRUE)

   //修改配置文件
   SetProductPath2();

   //创建桌面快捷方式
   CreateDesktopShellLink();

   if _isSilent=true then
     btn_down(WizardForm.Handle);
  end;
  
  ImgApplyChanges(WizardForm.Handle)
end;

//--------------------------------------------------------------------------------------------------------------------------------------------------------

//设置界面可鼠标拖动
procedure UnStartFormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  begin
    ReleaseCapture
    SendMessage(UnStartForm.Handle, WM_SYSCOMMAND, $F012, 0)
  end;

 //取消卸载按钮点击事件
procedure UnStartFrmCloseBtnOnClick(hBtn: HWND);
var flag:Integer;
begin
  flag:=MsgBox('您确定退出{#MyAppName}的卸载吗？', mbConfirmation, MB_YESNO)
  if flag=IDYES then
  begin
    UnStartForm.Hide;
    MsgBox('您已退出{#MyAppName}的卸载！', mbInformation, MB_OK)
    UnCloseButton.Click;
  end
  //  UnStartForm.Close;
   // UninstallProgressForm.CancelButton.Click;
end;

//确定卸载按钮事件
procedure UnConfirmBtnOnClick(hBtn: HWND);
var ErrorCode:Integer;
begin
  //前强制杀进程
  if not ShellExec('', ExpandConstant('{tmp}\kill.bat'),
     '', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode) then
  begin
    // 如果需要处理失败
  end;
  UnConfirmButton.Click;
end;

//卸载进度窗体
procedure UnProgressFrmMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture
  SendMessage(UninstallProgressForm.Handle, WM_SYSCOMMAND, $F012, 0)
end;

//卸载进度百分比
function PBProcU(h: hWnd; Msg, wParam, lParam:Longint): Longint;
var
  pr, i1, i2 : Extended;
  w: integer;
begin
  Result := CallWindowProc(PBOldProcU, h, Msg, wParam, lParam);
  if (Msg = $402) and (UninstallProgressForm.ProgressBar.Position > UninstallProgressForm.ProgressBar.Min) then
  begin
    i1 := UninstallProgressForm.ProgressBar.Position - UninstallProgressForm.ProgressBar.Min;
    i2 := UninstallProgressForm.ProgressBar.Max - UninstallProgressForm.ProgressBar.Min;
    pr := i1 * 100 / i2;
    label5.Caption := '解压缩：' + IntToStr(Round(pr)) + '%';
    w := Round(728 * pr / 100);
    ImgSetPositionU(UnprogressbgImg, 20, 397, w, 10);
    ImgSetVisiblePartU(UnprogressbgImg, 0, 0, w, 10);
    ImgApplyChanges(UninstallProgressForm.Handle);
  end;
end;

//卸载完成页面右上角关闭按钮
procedure UninstalledFrmCloseBtnOnClick(hBtn: HWND);
begin
  UninstalledForm.Close;
end;

// 开始卸载界面最小化按钮
procedure UnMinBtnOnClick(hBtn:HWND);
  begin
    SendMessage(UnStartForm.Handle,WM_SYSCOMMAND,61472,0);
  end;

//卸载完成Form
procedure UninstalledFormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture
  SendMessage(UninstalledForm.Handle, WM_SYSCOMMAND, $F012, 0)
end;

//卸载完成“完成”按钮点击
procedure UninstalledBtnOnClick(hBtn: HWND);
begin
  UninstalledForm.Close;
end;

//卸载图标、dll拷贝
procedure CopyFileToTmpDir();
begin

  FileCopy(ExpandConstant('{app}\uninstall\botva2.dll'), ExpandConstant('{tmp}\botva2.dll'), True);
  FileCopy(ExpandConstant('{app}\uninstall\InnoCallback.dll'), ExpandConstant('{tmp}\InnoCallback.dll'), True);
  FileCopy(ExpandConstant('{app}\uninstall\IsTask.dll'), ExpandConstant('{tmp}\IsTask.dll'), True);
  FileCopy(ExpandConstant('{app}\uninstall\kill.bat'), ExpandConstant('{tmp}\kill.bat'), True);

  FileCopy(ExpandConstant('{app}\uninstall\un_bg.png'), ExpandConstant('{tmp}\un_bg.png'), True);
  FileCopy(ExpandConstant('{app}\uninstall\loading.png'), ExpandConstant('{tmp}\loading.png'), True);
  FileCopy(ExpandConstant('{app}\uninstall\un_continue.png'), ExpandConstant('{tmp}\un_continue.png'), True);
  FileCopy(ExpandConstant('{app}\uninstall\un_cancle.png'), ExpandConstant('{tmp}\un_cancle.png'), True);
  FileCopy(ExpandConstant('{app}\uninstall\un_loading.png'), ExpandConstant('{tmp}\un_loading.png'), True);
  FileCopy(ExpandConstant('{app}\uninstall\un_done.png'), ExpandConstant('{tmp}\un_done.png'), True);
  FileCopy(ExpandConstant('{app}\uninstall\btn_close.png'), ExpandConstant('{tmp}\btn_close.png'), True);
  FileCopy(ExpandConstant('{app}\uninstall\btn_min.png'), ExpandConstant('{tmp}\btn_min.png'), True);
  FileCopy(ExpandConstant('{app}\uninstall\un_btn_ok.png'), ExpandConstant('{tmp}\un_btn_ok.png'), True);
  FileCopy(ExpandConstant('{app}\uninstall\checkboxdeep.png'), ExpandConstant('{tmp}\checkboxdeep.png'), True);
  //FileCopy(ExpandConstant('{app}\uninstall\紫色关闭.png'), ExpandConstant('{tmp}\紫色关闭.png'), True);
  //FileCopy(ExpandConstant('{app}\uninstall\紫色最小化.png'), ExpandConstant('{tmp}\紫色最小化.png'), True);
  //FileCopy(ExpandConstant('{app}\uninstall\询问安装.png'), ExpandConstant('{tmp}\询问安装.png'), True);

end;

 // 卸载
function InitializeUninstall(): Boolean;
  var ErrorCode: Integer;
  begin
  CopyFileToTmpDir();
   // ShellExec('open','taskkill.exe','/f /im {#MyAppExeName}','',SW_HIDE,ewNoWait,ErrorCode);
  //  ShellExec('open','tskill.exe',' {#MyAppName}','',SW_HIDE,ewNoWait,ErrorCode);

    result := True;
    //执行静默卸载

    if Pos('silent', Lowercase(GetCmdTail)) > 0 then
    begin
      result := True;
    end
    else begin
      //Exec(ExpandConstant('{uninstallexe}'), ' /Silent', '', SW_SHOW, ewNoWait, ErrorCode)
      //result := False;
    exit;
    end
  end;

  //保留用户数据
procedure check_keepUserDataChecklick(hBtn:HWND);
begin
  keepUserData:=BtnGetChecked(keepUserDataCheck);
end;

//开始卸载
procedure CreateUninstallSetpForm();
 var
    ScreenWidth, ScreenHeight: Integer;
    UnCloseBtn,UnConfirmBtn, UnInstallBtn, InCancelBtn,UnGlobalCloseBtn,UnGlobalMinBtn: HWND;
 begin

 UnStartForm := TForm.Create(UninstallProgressForm);
 UninstallProgressForm.Hide;
   try

      UnStartForm.Width := 768;
      UnStartForm.Height := 428;
      UnStartForm.BorderStyle := bsNone;
      //UnStartForm.OnMouseDown := @UnStartFormMouseDown;
      
      MainLabel:=TLabel.Create(UnStartForm);
      MainLabel.Parent:=UnStartForm;
      MainLabel.AutoSize:=False;
      MainLabel.Left:=0;
      MainLabel.Top:=0;
      MainLabel.Width:=UnStartForm.Width;
      MainLabel.Height:=UnStartForm.Height;
      MainLabel.Caption:='';
      MainLabel.Transparent:=True;
      MainLabel.OnMouseDown:=@UnStartFormMouseDown
      //卸载背景
      UninstallImage := ImgLoad(UnStartForm.Handle,ExpandConstant('{tmp}\un_bg.png'),0,0,768,428,false,True);

      UnCloseButton := TButton.Create(UnStartForm);
      UnCloseButton.Parent := UnStartForm;
      UnCloseButton.ModalResult := mrCancel;
      UnCloseButton.Cancel := True;
      UnCloseButton.SetBounds(0, 0, 0, 0);

      //右上角关闭
      UnGlobalCloseBtn:=BtnCreate(UnStartForm.Handle, 731,24,16,16,ExpandConstant('{tmp}\btn_close.png'),1,False);
      BtnSetEvent(UnGlobalCloseBtn, BtnClickEventID, WrapBtnCallback(@UnStartFrmCloseBtnOnClick, 1));
      //右上角最小化
      UnGlobalCloseBtn:=BtnCreate(UnStartForm.Handle, 693,24,16,16,ExpandConstant('{tmp}\btn_min.png'),1,False);
      BtnSetEvent(UnGlobalCloseBtn, BtnClickEventID, WrapBtnCallback(@UnMinBtnOnClick, 1));

      //继续卸载
      UnConfirmButton := TButton.Create(UnStartForm);
      UnConfirmButton.Parent := UnStartForm;
      UnConfirmButton.ModalResult := mrOk;
      UnConfirmButton.SetBounds(0, 0, 0, 0);

      //取消卸载按钮
      UnCloseBtn := BtnCreate(UnStartForm.Handle, 675, 385, 80, 26, ExpandConstant('{tmp}\un_cancle.png') ,1, false);
      BtnSetEvent(UnCloseBtn, BtnClickEventID, WrapBtnCallback(@UnStartFrmCloseBtnOnClick, 1));


       //确定卸载按钮
      UnConfirmBtn := BtnCreate(UnStartForm.Handle, 585, 385, 80, 26, ExpandConstant('{tmp}\un_continue.png'), 1, false);
      BtnSetEvent(UnConfirmBtn, BtnClickEventID, WrapBtnCallback(@UnConfirmBtnOnClick, 1));

      //保留用户数据
      keepUserDataCheck:=BtnCreate(UnStartForm.Handle,20,392,15,15,ExpandConstant('{tmp}\checkboxdeep.png'),1,true)
      BtnSetEvent(keepUserDataCheck,BtnClickEventID,WrapBtnCallback(@check_keepUserDataChecklick,1));
      BtnSetChecked(keepUserDataCheck,true)
      keepUserData:=true;

      //保留用户数据
      label3:= TLabel.Create(UnStartForm);
      with label3 do
      begin
      Parent := UnStartForm;
      Caption := '保留用户数据';
      Font.Name:='苹方-简 常规体'
      Font.Size:=10
      Transparent := TRUE;
      Visible := TRUE;
      SetBounds(38 ,392,100,17)
      end;

      //展示窗体
     // ShapeForm(UnStartForm, 5);
      ScreenWidth := GetPM(SM_CXSCREEN);
      ScreenHeight := GetPM(SM_CYSCREEN);
      UnStartForm.SetBounds((ScreenWidth - UnStartForm.Width) div 2, (ScreenHeight - UnStartForm.Height) div 2 - 15, UnStartForm.Width, UnStartForm.Height);

      ImgApplyChanges(UnStartForm.Handle);
      MResult := UnStartForm.ShowModal;
    //  MsgBox('error:' #13#13 'Uninstall is about to start.', mbInformation, MB_OK)
   finally
      UnStartForm.Hide;
      UnStartForm.Free;
     // MsgBox('11111111111111:' #13#13 'Uninstall is about to start.', mbInformation, MB_OK)
      if MResult <> mrOk then
      begin
        Abort;
      end;
   end;

    //卸载进度窗体
    UninstallProgressForm.Width :=768;
    UninstallProgressForm.Height := 428;
    UninstallProgressForm.BorderStyle := bsNone;

    UninstallProgressForm.OuterNotebook.Hide;
    UninstallProgressForm.MainPanel.Hide;
    UninstallProgressForm.Bevel1.Hide;
    UninstallProgressForm.StatusLabel.Hide;
    UninstallProgressForm.BeveledLabel.Hide;
    UninstallProgressForm.Bevel.Hide;
    UninstallProgressForm.CancelButton.Hide;

   // ShapeForm(UninstallProgressForm, 5);
    //UninstallProgressForm.OnMouseDown := @UnProgressFrmMouseDown;
    
      MainLabel:=TLabel.Create(UninstallProgressForm);
      MainLabel.Parent:=UninstallProgressForm;
      MainLabel.AutoSize:=False;
      MainLabel.Left:=0;
      MainLabel.Top:=0;
      MainLabel.Width:=UninstallProgressForm.Width;
      MainLabel.Height:=UninstallProgressForm.Height;
      MainLabel.Caption:='';
      MainLabel.Transparent:=True;
      MainLabel.OnMouseDown:=@UnProgressFrmMouseDown

    UninstallImage := ImgLoad(UninstallProgressForm.Handle, ExpandConstant('{tmp}\un_loading.png'), 0, 0, 768,428, false, True);

    UnprogressbgImg := ImgLoad(UninstallProgressForm.Handle, ExpandConstant('{tmp}\loading.png'), 20, 397, 0, 0, True, True)

    label4:= TLabel.Create(UninstallProgressForm);
    with label4 do
    begin
    Parent := UninstallProgressForm;
    Caption := '正在准备卸载...';
    Font.Name:='苹方-简 常规体'
    Font.Size:=10
    Transparent := TRUE;
    SetBounds(20 ,375,100,17) ;
    end;

    label5:= TLabel.Create(UninstallProgressForm);
    with label5 do
    begin
    Parent := UninstallProgressForm;
    Caption := '解压缩：';
    Font.Name:='苹方-简 常规体'
    Font.Size:=10
    Transparent := TRUE;
    SetBounds(652,375,100,17) ;
    end;

    ScreenWidth := GetPM(SM_CXSCREEN);
    ScreenHeight := GetPM(SM_CYSCREEN);
    UninstallProgressForm.SetBounds((ScreenWidth - UninstallProgressForm.Width) div 2, (ScreenHeight - UninstallProgressForm.Height) div 2 - 15, UninstallProgressForm.Width, UninstallProgressForm.Height);

    PBOldProcU := SetWindowLong(UninstallProgressForm.ProgressBar.Handle, -4, PBCallBackU(@PBProcU, 4));

    ImgApplyChanges(UninstallProgressForm.Handle);
    UnInstallProgressForm.Show;
    //MsgBox('error:' #13#13 'Uninstall is about to start.', mbInformation, MB_OK)

end;

//卸载完成界面
procedure CreateUninstalledForm();
var
  UnCloseBtn, UninstalledBtn :HWND;
  ScreenWidth, ScreenHeight:Integer;
begin
  //UnStartForm.Hide;
  //UnStartForm.Free;
  try
  UninstalledForm := CreateCustomForm();
  UninstalledForm.Width := 768;
  UninstalledForm.Height := 428;
  UninstalledForm.BorderStyle := bsNone;
 // ShapeForm(UninstalledForm, 5);
  //UninstalledForm.Center;
  //UninstalledForm.OnMouseDown := @UninstalledFormMouseDown;
 
      MainLabel:=TLabel.Create(UninstalledForm);
      MainLabel.Parent:=UninstalledForm;
      MainLabel.AutoSize:=False;
      MainLabel.Left:=0;
      MainLabel.Top:=0;
      MainLabel.Width:=UninstalledForm.Width;
      MainLabel.Height:=UninstalledForm.Height;
      MainLabel.Caption:='';
      MainLabel.Transparent:=True;
      MainLabel.OnMouseDown:=@UninstalledFormMouseDown
  
  UninstallImage := ImgLoad(UninstalledForm.Handle, ExpandConstant('{tmp}\un_done.png'), 0, 0, 768,428, True, True);

  //右上角关闭按钮
//  UnCloseBtn := BtnCreate(UninstalledForm.Handle, 608,24,16,16,ExpandConstant('{tmp}\btn_close.png'),1,False);
 // BtnSetEvent(UnCloseBtn, BtnClickEventID, WrapBtnCallback(@UninstalledFrmCloseBtnOnClick, 1));

  //卸载完成按钮
  UninstalledBtn := BtnCreate(UninstalledForm.Handle, 321, 287, 126, 34, ExpandConstant('{tmp}\un_btn_ok.png'), 1, False);
  BtnSetEvent(UninstalledBtn, BtnClickEventID, WrapBtnCallback(@UninstalledBtnOnClick, 1));


  ScreenWidth := GetPM(SM_CXSCREEN);
  ScreenHeight := GetPM(SM_CYSCREEN);
  UninstalledForm.SetBounds((ScreenWidth - UninstalledForm.Width) div 2, (ScreenHeight - UninstalledForm.Height) div 2 - 15, UninstalledForm.Width, UninstalledForm.Height);

  ImgApplyChanges(UninstalledForm.Handle);

  //UnloadDll(ExpandConstant('{tmp}\plugin\ISTask.dll'));
  //UnloadDll(ExpandConstant('{tmp}\plugin\botva2.dll'));
  //UnloadDll(ExpandConstant('{tmp}\plugin\InnoCallback.dll'));
  //DelTree(ExpandConstant('{app}\'), True, True, True);
  //ImgApplyChanges(UninstalledForm.Handle);
  MResult :=UninstalledForm.ShowModal;
  //UninstalledForm.Show;
  finally
      UninstalledForm.Hide;
      UninstalledForm.Free;
  //    if MResult <> mrOk then Abort;
   end;

end;

//卸载用户数据
procedure UninstallUserData();
var path:string;
begin
  if keepUserData=false then
  begin
    //删除用户数据
    path:=ExpandConstant('{userappdata}\myApplication');
    DelTree(path,True,True,True);
    //读取注册表
    //res:=RegQueryStringValue(HKLM64,'SOFTWARE\{#MyAppName}','WorkFolder',WorkFolderPath);
    //if res=true then
    //begin
    //   DelTree('D:\新建文件夹',True,True,True);//删除目录
    //   //删除注册表
    //   RegDeleteKeyIncludingSubkeys(HKLM64,'SOFTWARE\{#MyAppName}');
    //end;
  end;
end;

//自定义卸载页面
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  case CurUninstallStep of
    usUninstall:
      begin // 开始卸载
        CreateUninstallSetpForm();
      end;

    usPostUninstall:
      begin
      //卸载用户数据
      UninstallUserData();
      // 卸载完成
      CreateUninstalledForm();
      end;

    usDone:
      begin

        //UnloadDll(ExpandConstant('{tmp}\plugin\ISTask.dll'));
       // UnloadDll(ExpandConstant('{tmp}\plugin\botva2.dll'));
        //UnloadDll(ExpandConstant('{tmp}\plugin\InnoCallback.dll'));
        //DelTree(ExpandConstant('{app}\'), True, True, True);
      end;
  end;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
 begin
    if PageID=wpLicense then
      result:=true;
    if PageID=wpInfoBefore then
      result:=true;
    if PageID=wpUserInfo then
      result:=true;
    if PageID=wpSelectDir then
      result:=true;
    if PageID=wpSelectComponents then
      result:=true;
    if PageID=wpSelectProgramGroup then
      result:=true;
    if PageID=wpSelectTasks then
      result:=true;
  end;
