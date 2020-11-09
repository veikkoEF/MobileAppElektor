unit TabbedTemplate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Gestures, FMX.Controls.Presentation, FMX.ListBox,
  FMX.Layouts, FMX.Objects;

type
  TTabbedForm = class(TForm)
    HeaderToolBar: TToolBar;
    ToolBarLabel: TLabel;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem4: TTabItem;
    GestureManager1: TGestureManager;
    GridPanelLayout1: TGridPanelLayout;
    ComboBoxRing1: TComboBox;
    ComboBoxRing2: TComboBox;
    ComboBoxRing3: TComboBox;
    ComboBoxRing4: TComboBox;
    RectangleRing1: TRectangle;
    RectangleRing2: TRectangle;
    RectangleRing3: TRectangle;
    RectangleRing4: TRectangle;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    LabelValue: TLabel;
    LabelTolerance: TLabel;
    Image1: TImage;
    Label9: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure ComboBoxRing1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TabbedForm: TTabbedForm;

implementation

{$R *.fmx}
{$R *.iPhone47in.fmx IOS}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TTabbedForm.ComboBoxRing1Change(Sender: TObject);
var
  digit1: Integer;
  digit2: Integer;
  digit3: Integer;
  tolerance: Integer;

  value: Double;

  result: string;
  toleranceValue: string;

begin
  digit1 := ComboBoxRing1.ItemIndex;
  digit2 := ComboBoxRing2.ItemIndex;
  digit3 := ComboBoxRing3.ItemIndex;
  tolerance := ComboBoxRing4.ItemIndex;

  case digit1 of
    0:
      begin
        RectangleRing1.Fill.Color := TAlphaColors.Black;
      end;
    1:
      begin
        RectangleRing1.Fill.Color := TAlphaColors.Brown;
      end;
    2:
      begin
        RectangleRing1.Fill.Color := TAlphaColors.Red;
      end;
    3:
      begin
        RectangleRing1.Fill.Color := TAlphaColors.Orange;
      end;
    4:
      begin
        RectangleRing1.Fill.Color := TAlphaColors.Yellow;
      end;
    5:
      begin
        RectangleRing1.Fill.Color := TAlphaColors.Green;
      end;
    6:
      begin
        RectangleRing1.Fill.Color := TAlphaColors.Blue;
      end;
    7:
      begin
        RectangleRing1.Fill.Color := TAlphaColors.Violet;
      end;
    8:
      begin
        RectangleRing1.Fill.Color := TAlphaColors.Gray;
      end;
    9:
      begin
        RectangleRing1.Fill.Color := TAlphaColors.White;
      end;
  end;

  case digit2 of
    0:
      begin
        RectangleRing2.Fill.Color := TAlphaColors.Black;
      end;
    1:
      begin
        RectangleRing2.Fill.Color := TAlphaColors.Brown;
      end;
    2:
      begin
        RectangleRing2.Fill.Color := TAlphaColors.Red;
      end;
    3:
      begin
        RectangleRing2.Fill.Color := TAlphaColors.Orange;
      end;
    4:
      begin
        RectangleRing2.Fill.Color := TAlphaColors.Yellow;
      end;
    5:
      begin
        RectangleRing2.Fill.Color := TAlphaColors.Green;
      end;
    6:
      begin
        RectangleRing2.Fill.Color := TAlphaColors.Blue;
      end;
    7:
      begin
        RectangleRing2.Fill.Color := TAlphaColors.Violet;
      end;
    8:
      begin
        RectangleRing2.Fill.Color := TAlphaColors.Gray;
      end;
    9:
      begin
        RectangleRing2.Fill.Color := TAlphaColors.White;
      end;
  end;

  case digit3 of
    0:
      begin
        RectangleRing3.Fill.Color := TAlphaColors.Black;
      end;
    1:
      begin
        RectangleRing3.Fill.Color := TAlphaColors.Brown;
      end;
    2:
      begin
        RectangleRing3.Fill.Color := TAlphaColors.Red;
      end;
    3:
      begin
        RectangleRing3.Fill.Color := TAlphaColors.Orange;
      end;
    4:
      begin
        RectangleRing3.Fill.Color := TAlphaColors.Yellow;
      end;
    5:
      begin
        RectangleRing3.Fill.Color := TAlphaColors.Green;
      end;
    6:
      begin
        RectangleRing3.Fill.Color := TAlphaColors.Blue;
      end;
    7:
      begin
        RectangleRing3.Fill.Color := TAlphaColors.Violet;
      end;
    8:
      begin
        RectangleRing3.Fill.Color := TAlphaColors.Gold;
      end;
    9:
      begin
        RectangleRing3.Fill.Color := TAlphaColors.Silver;
      end;
  end;

  toleranceValue := '';
  case tolerance of
    0:
      begin
        RectangleRing4.Fill.Color := TAlphaColors.Brown;
        toleranceValue := '1';
      end;
    1:
      begin
        RectangleRing4.Fill.Color := TAlphaColors.Red;
        toleranceValue := '2';
      end;
    2:
      begin
        RectangleRing4.Fill.Color := TAlphaColors.Green;
        toleranceValue := '0.5';
      end;
    3:
      begin
        RectangleRing4.Fill.Color := TAlphaColors.Blue;
        toleranceValue := '0.25';
      end;
    4:
      begin
        RectangleRing4.Fill.Color := TAlphaColors.Violet;
        toleranceValue := '0.1';
      end;
    5:
      begin
        RectangleRing4.Fill.Color := TAlphaColors.Gray;
        toleranceValue := '0.05';
      end;
    6:
      begin
        RectangleRing4.Fill.Color := TAlphaColors.Gold;
        toleranceValue := '5';
      end;
    7:
      begin
        RectangleRing4.Fill.Color := TAlphaColors.Silver;
        toleranceValue := '10';
      end;
  end;

  // Calc Value
  if digit3 < 8 then
    value := Power10((digit1 * 10 + digit2), digit3)
  else if digit3 = 8 then
    value := (digit1 * 10 + digit2) * 0.1
  else if digit3 = 9 then
    value := (digit1 * 10 + digit2) * 0.01;

  result := FloatToStr(value) + ' Ohm';

  if value > 1000 then
    result := FloatToStr((value / 1000)) + ' k Ohm';

  if value > 1000000 then
    result := FloatToStr((value / 1000000)) + ' M Ohm';

  LabelValue.Text := result;

  LabelTolerance.Text := toleranceValue + '%';

end;

procedure TTabbedForm.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
  TabControl1.ActiveTab := TabItem1;
end;

procedure TTabbedForm.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
{$IFDEF ANDROID}
  case EventInfo.GestureID of
    sgiLeft:
      begin
        if TabControl1.ActiveTab <> TabControl1.Tabs[TabControl1.TabCount - 1]
        then
          TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex + 1];
        Handled := True;
      end;

    sgiRight:
      begin
        if TabControl1.ActiveTab <> TabControl1.Tabs[0] then
          TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex - 1];
        Handled := True;
      end;
  end;
{$ENDIF}
end;

end.
