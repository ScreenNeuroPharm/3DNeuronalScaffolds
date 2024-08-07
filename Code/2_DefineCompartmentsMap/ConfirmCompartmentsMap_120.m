function varargout = ConfirmCompartmentsMap_120(varargin)
%CONFIRMCOMPARTMENTSMAP_120 MATLAB code file for ConfirmCompartmentsMap_120.fig
%      CONFIRMCOMPARTMENTSMAP_120, by itself, creates a new CONFIRMCOMPARTMENTSMAP_120 or raises the existing
%      singleton*.
%
%      H = CONFIRMCOMPARTMENTSMAP_120 returns the handle to a new CONFIRMCOMPARTMENTSMAP_120 or the handle to
%      the existing singleton*.
%
%      CONFIRMCOMPARTMENTSMAP_120('Property','Value',...) creates a new CONFIRMCOMPARTMENTSMAP_120 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to ConfirmCompartmentsMap_120_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      CONFIRMCOMPARTMENTSMAP_120('CALLBACK') and CONFIRMCOMPARTMENTSMAP_120('CALLBACK',hObject,...) call the
%      local function named CALLBACK in CONFIRMCOMPARTMENTSMAP_120.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ConfirmCompartmentsMap_120

% Last Modified by GUIDE v2.5 09-Jun-2019 15:55:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ConfirmCompartmentsMap_120_OpeningFcn, ...
                   'gui_OutputFcn',  @ConfirmCompartmentsMap_120_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before ConfirmCompartmentsMap_120 is made visible.
function ConfirmCompartmentsMap_120_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for ConfirmCompartmentsMap_120
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ConfirmCompartmentsMap_120 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ConfirmCompartmentsMap_120_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
    

% --- Executes on button press in Toggle002.
function Toggle002_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle002 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle002


% --- Executes on button press in Toggle003.
function Toggle003_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle003 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle003


% --- Executes on button press in Toggle004.
function Toggle004_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle004 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle004


% --- Executes on button press in Toggle005.
function Toggle005_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle005 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle005


% --- Executes on button press in Toggle006.
function Toggle006_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle006 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle006


% --- Executes on button press in Toggle007.
function Toggle007_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle007 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle007


% --- Executes on button press in Toggle008.
function Toggle008_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle008 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle008


% --- Executes on button press in Toggle009.
function Toggle009_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle009 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle009


% --- Executes on button press in Toggle010.
function Toggle010_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle010 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle010


% --- Executes on button press in Toggle011.
function Toggle011_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle011 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle011

% --- Executes on button press in Toggle012.
function Toggle012_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle012 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle012

% --- Executes on button press in Toggle013.
function Toggle013_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle013 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle013



% --- Executes on button press in Toggle014.
function Toggle014_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle014 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle014


% --- Executes on button press in Toggle015.
function Toggle015_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle015 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle015

% --- Executes on button press in Toggle016.
function Toggle016_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle016 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle016


% --- Executes on button press in Toggle017.
function Toggle017_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle017 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle017


% --- Executes on button press in Toggle018.
function Toggle018_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle018 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle018


% --- Executes on button press in Toggle019.
function Toggle019_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle019 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle019


% --- Executes on button press in Toggle020.
function Toggle020_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle020 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle020


% --- Executes on button press in Toggle021.
function Toggle021_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle021 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle021


% --- Executes on button press in Toggle022.
function Toggle022_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle022 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle022


% --- Executes on button press in Toggle023.
function Toggle023_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle023 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle023


% --- Executes on button press in Toggle024.
function Toggle024_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle024 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle024


% --- Executes on button press in Toggle025.
function Toggle025_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle025 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle025


% --- Executes on button press in Toggle026.
function Toggle026_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle026 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle026


% --- Executes on button press in Toggle027.
function Toggle027_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle027 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle027


% --- Executes on button press in Toggle028.
function Toggle028_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle028 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle028



% --- Executes on button press in Toggle029.
function Toggle029_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle029 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle029


% --- Executes on button press in Toggle030.
function Toggle030_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle030 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle030


% --- Executes on button press in Toggle031.
function Toggle031_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle031 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle031


% --- Executes on button press in Toggle032.
function Toggle032_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle032 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle032


% --- Executes on button press in Toggle033.
function Toggle033_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle033 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle033


% --- Executes on button press in Toggle034.
function Toggle034_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle034 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle034


% --- Executes on button press in Toggle035.
function Toggle035_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle035 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle035


% --- Executes on button press in Toggle036.
function Toggle036_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle036 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle036


% --- Executes on button press in Toggle037.
function Toggle037_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle037 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle037


% --- Executes on button press in Toggle038.
function Toggle038_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle038 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle038


% --- Executes on button press in Toggle039.
function Toggle039_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle039 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle039


% --- Executes on button press in Toggle040.
function Toggle040_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle040 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle040


% --- Executes on button press in Toggle041.
function Toggle041_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle041 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle041


% --- Executes on button press in Toggle042.
function Toggle042_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle042 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle042


% --- Executes on button press in Toggle043.
function Toggle043_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle043 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle043


% --- Executes on button press in Toggle044.
function Toggle044_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle044 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle044


% --- Executes on button press in Toggle045.
function Toggle045_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle045 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle045


% --- Executes on button press in Toggle046.
function Toggle046_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle046 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle046


% --- Executes on button press in Toggle047.
function Toggle047_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle047 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle047


% --- Executes on button press in Toggle048.
function Toggle048_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle048 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle048


% --- Executes on button press in Toggle049.
function Toggle049_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle049 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle049


% --- Executes on button press in Toggle050.
function Toggle050_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle050 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle050


% --- Executes on button press in Toggle051.
function Toggle051_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle051 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle051


% --- Executes on button press in Toggle052.
function Toggle052_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle052 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle052


% --- Executes on button press in Toggle053.
function Toggle053_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle053 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle053


% --- Executes on button press in Toggle054.
function Toggle054_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle054 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle054


% --- Executes on button press in Toggle055.
function Toggle055_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle055 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle055



% --- Executes on button press in Toggle056.
function Toggle056_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle056 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle056


% --- Executes on button press in Toggle057.
function Toggle057_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle057 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle057


% --- Executes on button press in Toggle058.
function Toggle058_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle058 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle058


% --- Executes on button press in Toggle059.
function Toggle059_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle059 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle059


% --- Executes on button press in Toggle060.
function Toggle060_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle060 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle060


% --- Executes on button press in Toggle061.
function Toggle061_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle061 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle061


% --- Executes on button press in Toggle062.
function Toggle062_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle062 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle062


% --- Executes on button press in Toggle063.
function Toggle063_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle063 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle063


% --- Executes on button press in Toggle064.
function Toggle064_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle064 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle064


% --- Executes on button press in Toggle065.
function Toggle065_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle065 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle065


% --- Executes on button press in Toggle066.
function Toggle066_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle066 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle066


% --- Executes on button press in Toggle067.
function Toggle067_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle067 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle067


% --- Executes on button press in Toggle068.
function Toggle068_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle068 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle068


% --- Executes on button press in Toggle069.
function Toggle069_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle069 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle069


% --- Executes on button press in Toggle070.
function Toggle070_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle070 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle070


% --- Executes on button press in Toggle071.
function Toggle071_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle071 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle071


% --- Executes on button press in Toggle072.
function Toggle072_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle072 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle072


% --- Executes on button press in Toggle073.
function Toggle073_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle073 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle073


% --- Executes on button press in Toggle074.
function Toggle074_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle074 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle074


% --- Executes on button press in Toggle075.
function Toggle075_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle075 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle075


% --- Executes on button press in Toggle076.
function Toggle076_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle076 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle076


% --- Executes on button press in Toggle077.
function Toggle077_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle077 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)    color = hObject.BackgroundColor;
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle077


% --- Executes on button press in Toggle078.
function Toggle078_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle078 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle078


% --- Executes on button press in Toggle079.
function Toggle079_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle079 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle079


% --- Executes on button press in Toggle080.
function Toggle080_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle080 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle148


% --- Executes on button press in Toggle081.
function Toggle081_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle081 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle081


% --- Executes on button press in Toggle082.
function Toggle082_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle082 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle082


% --- Executes on button press in Toggle083.
function Toggle083_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle083 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle083


% --- Executes on button press in Toggle084.
function Toggle084_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle084 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle084


% --- Executes on button press in Toggle085.
function Toggle085_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle085 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle085


% --- Executes on button press in Toggle086.
function Toggle086_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle086 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle086


% --- Executes on button press in Toggle087.
function Toggle087_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle087 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle087


% --- Executes on button press in Toggle088.
function Toggle088_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle088 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle088


% --- Executes on button press in Toggle089.
function Toggle089_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle089 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle089


% --- Executes on button press in Toggle090.
function Toggle090_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle090 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle090


% --- Executes on button press in Toggle091.
function Toggle091_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle091 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle091
%%%%%%

% --- Executes on button press in Toggle092.
function Toggle092_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle092 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle092


% --- Executes on button press in Toggle093.
function Toggle093_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle093 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle093


% --- Executes on button press in Toggle094.
function Toggle094_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle094 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle094


% --- Executes on button press in Toggle095.
function Toggle095_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle095 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle095


% --- Executes on button press in Toggle096.
function Toggle096_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle096 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle096


% --- Executes on button press in Toggle097.
function Toggle097_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle097 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle097


% --- Executes on button press in Toggle098.
function Toggle098_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle098 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle098


% --- Executes on button press in Toggle099.
function Toggle099_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle099 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle099


% --- Executes on button press in Toggle100.
function Toggle100_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle100


% --- Executes on button press in Toggle101.
function Toggle101_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle101


% --- Executes on button press in Toggle102.
function Toggle102_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle102 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle102


% --- Executes on button press in Toggle103.
function Toggle103_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle103 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle103


% --- Executes on button press in Toggle104.
function Toggle104_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle104 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle104


% --- Executes on button press in Toggle105.
function Toggle105_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle105 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle105


% --- Executes on button press in Toggle106.
function Toggle106_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle106 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle106


% --- Executes on button press in Toggle107.
function Toggle107_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle107 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle107


% --- Executes on button press in Toggle108.
function Toggle108_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle108 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle108

% --- Executes on button press in Toggle109.
function Toggle109_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle109 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle109


% --- Executes on button press in Toggle110.
function Toggle110_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle110 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle110


% --- Executes on button press in Toggle111.
function Toggle111_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle111


% --- Executes on button press in Toggle112.
function Toggle112_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle112

% --- Executes on button press in Toggle113.
function Toggle113_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle113 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle113


% --- Executes on button press in Toggle114.
function Toggle114_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle114 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle114


% --- Executes on button press in Toggle115.
function Toggle115_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle115 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle115


% --- Executes on button press in Toggle116.
function Toggle116_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle116 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle116


% --- Executes on button press in Toggle117.
function Toggle117_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle117 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle117


% --- Executes on button press in Toggle118.
function Toggle118_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle118 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle118


% --- Executes on button press in Toggle119.
function Toggle119_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle119 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle119


% --- Executes on button press in Toggle120.
function Toggle120_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle120 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle120



% --- Executes on button press in Toggle001.
function Toggle001_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle001 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle001


% --- Executes on button press in conf120.
function conf120_Callback(hObject, eventdata, handles)
% hObject    handle to conf120 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
NumElec = 120;


for i = 1:NumElec
    if i < 10 
        color(i,:) = handles.(strcat('Toggle00',num2str(i))).BackgroundColor;
    elseif i < 100  
        color(i,:) = handles.(strcat('Toggle0',num2str(i))).BackgroundColor;
    else 
        color(i,:) = handles.(strcat('Toggle',num2str(i))).BackgroundColor;
    end
end

cd ..
cd ..
start_folder = pwd;
dirtmp = dir;
name = split(dirtmp(3).name,'_');
exp = name(1);
mkdir(strcat(char(exp),'_ColorElectrode'));
cd(strcat(char(exp),'_ColorElectrode'));
save ('ColorElectrode.mat','color');

EndOfProcessing (start_folder, 'Successfully accomplished');

fields = fieldnames(handles);
for k = 1:length(fields)
    if strcmp(fields{k},'figure1')  
        close(handles.(fields{k}));
    end
end

return


% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fields = fieldnames(handles);
for k = 1:length(fields)
    if ~isempty(strfind(fields{k},'Toggle'))
        handles.(fields{k}).BackgroundColor = [0 1 0];
    end
end


% --- Executes on button press in Save.
function Save_Callback(hObject, eventdata, handles)
% hObject    handle to Save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fields = fieldnames(handles);
fields = sort(fields);
i = 0;

for k = 1:length(fields)
    if ~isempty(strfind(fields{k},'Toggle'))
        i = i+1;
        map{i,1} = fields{k};
        map{i,2} = handles.(fields{k}).BackgroundColor;
    end
end
uisave('map','CompartmentMap');

        


% --- Executes on button press in Upload.
function Upload_Callback(hObject, eventdata, handles)
% hObject    handle to Upload (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uiopen('*.mat')
if length(map)==120
    for k = 1:length(map)
        handles.(map{k,1}).BackgroundColor = map{k,2};
    end
else
    errordlg('Selection failed - Incompatible format','Error');
    return
end
