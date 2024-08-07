function varargout = ConfirmCompartmentsMap_256(varargin)
%CONFIRMCOMPARTMENTSMAP_256 MATLAB code file for ConfirmCompartmentsMap_256.fig
%      CONFIRMCOMPARTMENTSMAP_256, by itself, creates a new CONFIRMCOMPARTMENTSMAP_256 or raises the existing
%      singleton*.
%
%      H = CONFIRMCOMPARTMENTSMAP_256 returns the handle to a new CONFIRMCOMPARTMENTSMAP_256 or the handle to
%      the existing singleton*.
%
%      CONFIRMCOMPARTMENTSMAP_256('Property','Value',...) creates a new CONFIRMCOMPARTMENTSMAP_256 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to ConfirmCompartmentsMap_256_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      CONFIRMCOMPARTMENTSMAP_256('CALLBACK') and CONFIRMCOMPARTMENTSMAP_256('CALLBACK',hObject,...) call the
%      local function named CALLBACK in CONFIRMCOMPARTMENTSMAP_256.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ConfirmCompartmentsMap_256

% Last Modified by GUIDE v2.5 10-Jun-2019 10:22:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ConfirmCompartmentsMap_256_OpeningFcn, ...
                   'gui_OutputFcn',  @ConfirmCompartmentsMap_256_OutputFcn, ...
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


% --- Executes just before ConfirmCompartmentsMap_256 is made visible.
function ConfirmCompartmentsMap_256_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for ConfirmCompartmentsMap_256
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ConfirmCompartmentsMap_256 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ConfirmCompartmentsMap_256_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

   

% --- Executes on button press in Toggle132.
function Toggle002_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle132 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle132


% --- Executes on button press in Toggle090.
function Toggle003_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle090 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle090


% --- Executes on button press in Toggle089.
function Toggle004_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle089 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle089


% --- Executes on button press in Toggle088.
function Toggle005_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle088 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle088


% --- Executes on button press in Toggle087.
function Toggle006_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle087 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle087


% --- Executes on button press in Toggle074.
function Toggle007_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle074 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle074


% --- Executes on button press in Toggle073.
function Toggle008_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle073 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle073


% --- Executes on button press in Toggle072.
function Toggle009_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle072 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle072


% --- Executes on button press in Toggle071.
function Toggle010_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle071 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle071


% --- Executes on button press in Toggle058.
function Toggle011_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle058 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle058

% --- Executes on button press in Toggle057.
function Toggle012_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle057 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle057

% --- Executes on button press in Toggle056.
function Toggle013_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle056 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle056



% --- Executes on button press in Toggle055.
function Toggle014_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle055 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle055


% --- Executes on button press in Toggle041.
function Toggle015_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle041 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle041

% --- Executes on button press in Toggle051.
function Toggle016_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle051 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle051


% --- Executes on button press in Toggle024.
function Toggle017_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle024 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle024


% --- Executes on button press in Toggle070.
function Toggle018_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle070 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle070


% --- Executes on button press in Toggle039.
function Toggle019_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle039 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle039


% --- Executes on button press in Toggle038.
function Toggle020_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle038 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle038


% --- Executes on button press in Toggle073.
function Toggle021_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle073 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle073


% --- Executes on button press in Toggle054.
function Toggle022_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle054 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle054


% --- Executes on button press in Toggle038.
function Toggle023_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle038 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle038


% --- Executes on button press in Toggle054.
function Toggle024_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle054 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle054


% --- Executes on button press in Toggle074.
function Toggle025_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle074 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle074


% --- Executes on button press in Toggle053.
function Toggle026_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle053 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle053


% --- Executes on button press in Toggle037.
function Toggle027_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle037 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle037


% --- Executes on button press in Toggle021.
function Toggle028_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle021 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle021



% --- Executes on button press in Toggle087.
function Toggle029_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle087 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle087


% --- Executes on button press in Toggle069.
function Toggle030_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle069 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle069


% --- Executes on button press in Toggle084.
function Toggle031_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle084 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle084


% --- Executes on button press in Toggle068.
function Toggle032_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle068 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle068


% --- Executes on button press in Toggle088.
function Toggle033_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle088 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle088


% --- Executes on button press in Toggle038.
function Toggle034_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle038 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle038


% --- Executes on button press in Toggle052.
function Toggle035_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle052 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle052


% --- Executes on button press in Toggle052.
function Toggle036_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle052 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle052


% --- Executes on button press in Toggle089.
function Toggle037_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle089 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle089


% --- Executes on button press in Toggle039.
function Toggle038_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle039 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle039


% --- Executes on button press in Toggle052.
function Toggle039_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle052 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle052


% --- Executes on button press in Toggle051.
function Toggle040_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle051 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle051


% --- Executes on button press in Toggle090.
function Toggle041_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle090 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle090


% --- Executes on button press in Toggle070.
function Toggle042_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle070 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle070


% --- Executes on button press in Toggle034.
function Toggle043_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle034 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle034


% --- Executes on button press in Toggle050.
function Toggle044_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle050 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle050


% --- Executes on button press in Toggle024.
function Toggle045_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle024 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle024


% --- Executes on button press in Toggle033.
function Toggle046_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle033 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle033


% --- Executes on button press in Toggle068.
function Toggle047_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle068 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle068


% --- Executes on button press in Toggle067.
function Toggle048_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle067 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle067


% --- Executes on button press in Toggle049.
function Toggle049_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle049 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle049


% --- Executes on button press in Toggle067.
function Toggle050_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle067 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle067


% --- Executes on button press in Toggle068.
function Toggle051_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle068 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle068


% --- Executes on button press in Toggle166.
function Toggle052_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle166 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle166


% --- Executes on button press in Toggle182.
function Toggle053_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle182 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle182


% --- Executes on button press in Toggle133.
function Toggle054_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle133 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle133


% --- Executes on button press in Toggle063.
function Toggle055_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle063 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle063



% --- Executes on button press in Toggle131.
function Toggle056_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle131 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle131


% --- Executes on button press in Toggle178.
function Toggle057_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle178 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle178


% --- Executes on button press in Toggle162.
function Toggle058_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle162 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle162


% --- Executes on button press in Toggle146.
function Toggle059_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle146 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle146


% --- Executes on button press in Toggle147.
function Toggle060_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle147 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle147


% --- Executes on button press in Toggle134.
function Toggle061_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle134 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle134


% --- Executes on button press in Toggle150.
function Toggle062_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle150 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle150


% --- Executes on button press in Toggle149.
function Toggle063_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle149 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle149


% --- Executes on button press in Toggle133.
function Toggle064_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle133 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle133


% --- Executes on button press in Toggle182.
function Toggle065_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle182 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle182


% --- Executes on button press in Toggle166.
function Toggle066_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle166 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle166


% --- Executes on button press in Toggle138.
function Toggle067_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle138 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle138


% --- Executes on button press in Toggle119.
function Toggle068_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle119 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle119


% --- Executes on button press in Toggle120.
function Toggle069_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle120 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle120


% --- Executes on button press in Toggle121.
function Toggle070_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle121 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle121


% --- Executes on button press in Toggle127.
function Toggle071_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle127 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle127


% --- Executes on button press in Toggle128.
function Toggle072_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle128 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle128


% --- Executes on button press in Toggle129.
function Toggle073_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle129 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle129


% --- Executes on button press in Toggle130.
function Toggle074_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle130 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle130


% --- Executes on button press in Toggle144.
function Toggle075_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle144 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle144


% --- Executes on button press in Toggle145.
function Toggle076_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle145 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle145


% --- Executes on button press in Toggle161.
function Toggle077_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle161 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)    color = hObject.BackgroundColor;
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle161


% --- Executes on button press in Toggle122.
function Toggle078_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle122 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle122


% --- Executes on button press in Toggle146.
function Toggle079_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle146 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle146


% --- Executes on button press in Toggle162.
function Toggle080_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle162 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle148


% --- Executes on button press in Toggle178.
function Toggle081_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle178 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle178


% --- Executes on button press in Toggle131.
function Toggle082_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle131 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle131


% --- Executes on button press in Toggle147.
function Toggle083_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle147 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle147


% --- Executes on button press in Toggle163.
function Toggle084_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle163 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle163


% --- Executes on button press in Toggle179.
function Toggle085_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle179 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle179


% --- Executes on button press in Toggle132.
function Toggle086_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle132 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle132


% --- Executes on button press in Toggle148.
function Toggle087_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle148 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle148


% --- Executes on button press in Toggle164.
function Toggle088_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle164 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle164


% --- Executes on button press in Toggle180.
function Toggle089_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle180 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle180


% --- Executes on button press in Toggle151.
function Toggle090_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle151 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle151


% --- Executes on button press in Toggle183.
function Toggle091_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle183 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle183
%%%%%%

% --- Executes on button press in Toggle135.
function Toggle092_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle135 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle135


% --- Executes on button press in Toggle181.
function Toggle093_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle181 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle181


% --- Executes on button press in Toggle165.
function Toggle094_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle165 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle165


% --- Executes on button press in Toggle149.
function Toggle095_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle149 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle149


% --- Executes on button press in Toggle133.
function Toggle096_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle133 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle133


% --- Executes on button press in Toggle182.
function Toggle097_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle182 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle182


% --- Executes on button press in Toggle166.
function Toggle098_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle166 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle166


% --- Executes on button press in Toggle150.
function Toggle099_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle150 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle150


% --- Executes on button press in Toggle134.
function Toggle100_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle134 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle134


% --- Executes on button press in Toggle183.
function Toggle101_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle183 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle183


% --- Executes on button press in Toggle167.
function Toggle102_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle167 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle167


% --- Executes on button press in Toggle151.
function Toggle103_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle151 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle151


% --- Executes on button press in Toggle135.
function Toggle104_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle135 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle135


% --- Executes on button press in Toggle168.
function Toggle105_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle168 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle168


% --- Executes on button press in Toggle152.
function Toggle106_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle152 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle152


% --- Executes on button press in Toggle153.
function Toggle107_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle153 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle153


% --- Executes on button press in Toggle118.
function Toggle108_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle118 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle118

% --- Executes on button press in Toggle136.
function Toggle109_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle136 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle136


% --- Executes on button press in Toggle137.
function Toggle110_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle137 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle137


% --- Executes on button press in Toggle138.
function Toggle111_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle138 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle138


% --- Executes on button press in Toggle119.
function Toggle112_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle119 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle119

% --- Executes on button press in Toggle120.
function Toggle113_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle120 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle120


% --- Executes on button press in Toggle121.
function Toggle114_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle121 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle121


% --- Executes on button press in Toggle122.
function Toggle115_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle122 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle122


% --- Executes on button press in Toggle151.
function Toggle116_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle151 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle151


% --- Executes on button press in Toggle135.
function Toggle117_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle135 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle135


% --- Executes on button press in Toggle168.
function Toggle118_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle168 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle168


% --- Executes on button press in Toggle152.
function Toggle119_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle152 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle152


% --- Executes on button press in Toggle167.
function Toggle120_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle167 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle167


% --- Executes on button press in Toggle121.
function Toggle121_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle121 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle121


% --- Executes on button press in Toggle122.
function Toggle122_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle122 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle122


% --- Executes on button press in Toggle123.
function Toggle123_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle123 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle123


% --- Executes on button press in Toggle124.
function Toggle124_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle124 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle124


% --- Executes on button press in Toggle125.
function Toggle125_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle125 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle125


% --- Executes on button press in Toggle126.
function Toggle126_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle126 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle126


% --- Executes on button press in Toggle127.
function Toggle127_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle127 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle127


% --- Executes on button press in Toggle128.
function Toggle128_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle128 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle128


% --- Executes on button press in Toggle129.
function Toggle129_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle129 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle129


% --- Executes on button press in Toggle130.
function Toggle130_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle130 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle130


% --- Executes on button press in Toggle131.
function Toggle131_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle131 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle131


% --- Executes on button press in Toggle132.
function Toggle132_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle132 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle132


% --- Executes on button press in Toggle133.
function Toggle133_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle133 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle133


% --- Executes on button press in Toggle134.
function Toggle134_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle134 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle134


% --- Executes on button press in Toggle135.
function Toggle135_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle135 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle135


% --- Executes on button press in Toggle136.
function Toggle136_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle136 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle136


% --- Executes on button press in Toggle137.
function Toggle137_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle137 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle137


% --- Executes on button press in Toggle138.
function Toggle138_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle138 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle138


% --- Executes on button press in Toggle139.
function Toggle139_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle139 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle139


% --- Executes on button press in Toggle140.
function Toggle140_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle140 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle140


% --- Executes on button press in Toggle141.
function Toggle141_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle141 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle141


% --- Executes on button press in Toggle142.
function Toggle142_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle142 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle142


% --- Executes on button press in Toggle143.
function Toggle143_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle143 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle143


% --- Executes on button press in Toggle144.
function Toggle144_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle144 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle144



% --- Executes on button press in Toggle145.
function Toggle145_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle145 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle145


% --- Executes on button press in Toggle146.
function Toggle146_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle146 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle146


% --- Executes on button press in Toggle147.
function Toggle147_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle147 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle147


% --- Executes on button press in Toggle148.
function Toggle148_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle148 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle148


% --- Executes on button press in Toggle149.
function Toggle149_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle149 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle149


% --- Executes on button press in Toggle150.
function Toggle150_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle150 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle150


% --- Executes on button press in Toggle151.
function Toggle151_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle151 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle151


% --- Executes on button press in Toggle152.
function Toggle152_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle152 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle152


% --- Executes on button press in Toggle153.
function Toggle153_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle153 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle153


% --- Executes on button press in Toggle154.
function Toggle154_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle154 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle154


% --- Executes on button press in Toggle155.
function Toggle155_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle155 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle155


% --- Executes on button press in Toggle156.
function Toggle156_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle156 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle156


% --- Executes on button press in Toggle157.
function Toggle157_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle157 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle157


% --- Executes on button press in Toggle158.
function Toggle158_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle158 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle158


% --- Executes on button press in Toggle159.
function Toggle159_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle159 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle159


% --- Executes on button press in Toggle160.
function Toggle160_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle160 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle160

% --- Executes on button press in Toggle161.
function Toggle161_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle161 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle161


% --- Executes on button press in Toggle162.
function Toggle162_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle162 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle162


% --- Executes on button press in Toggle163.
function Toggle163_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle163 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle163


% --- Executes on button press in Toggle164.
function Toggle164_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle164 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle164


% --- Executes on button press in Toggle165.
function Toggle165_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle165 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle165


% --- Executes on button press in Toggle166.
function Toggle166_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle166 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle166


% --- Executes on button press in Toggle167.
function Toggle167_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle167 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle167


% --- Executes on button press in Toggle168.
function Toggle168_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle168 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle168


% --- Executes on button press in Toggle169.
function Toggle169_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle169 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle169


% --- Executes on button press in Toggle170.
function Toggle170_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle170 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle170


% --- Executes on button press in Toggle171.
function Toggle171_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle171 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle171


% --- Executes on button press in Toggle172.
function Toggle172_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle172 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle172


% --- Executes on button press in Toggle173.
function Toggle173_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle173 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle173


% --- Executes on button press in Toggle174.
function Toggle174_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle174 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle174


% --- Executes on button press in Toggle175.
function Toggle175_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle175 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle175



% --- Executes on button press in Toggle176.
function Toggle176_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle176 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle176


% --- Executes on button press in Toggle177.
function Toggle177_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle177 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle177


% --- Executes on button press in Toggle178.
function Toggle178_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle178 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle178


% --- Executes on button press in Toggle179.
function Toggle179_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle179 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle179


% --- Executes on button press in Toggle180.
function Toggle180_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle180 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle180


% --- Executes on button press in Toggle181.
function Toggle181_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle181 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle181


% --- Executes on button press in Toggle182.
function Toggle182_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle182 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle182


% --- Executes on button press in Toggle183.
function Toggle183_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle183 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle183


% --- Executes on button press in Toggle184.
function Toggle184_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle184 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle184


% --- Executes on button press in Toggle185.
function Toggle185_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle185 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle185


% --- Executes on button press in Toggle186.
function Toggle186_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle186 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle186


% --- Executes on button press in Toggle187.
function Toggle187_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle187 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle187


% --- Executes on button press in Toggle188.
function Toggle188_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle188 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle188



% --- Executes on button press in Toggle189.
function Toggle189_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle189 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle189


% --- Executes on button press in Toggle190.
function Toggle190_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle190 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle190


% --- Executes on button press in Toggle191.
function Toggle191_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle191 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle191


% --- Executes on button press in Toggle192.
function Toggle192_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle192 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle192


% --- Executes on button press in Toggle193.
function Toggle193_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle193 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle193


% --- Executes on button press in Toggle194.
function Toggle194_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle194 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle194


% --- Executes on button press in Toggle195.
function Toggle195_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle195 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle195


% --- Executes on button press in Toggle196.
function Toggle196_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle196 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle196


% --- Executes on button press in Toggle197.
function Toggle197_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle197 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle197


% --- Executes on button press in Toggle198.
function Toggle198_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle198 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle198


% --- Executes on button press in Toggle199.
function Toggle199_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle199 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle199


% --- Executes on button press in Toggle200.
function Toggle200_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle200 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle200


% --- Executes on button press in Toggle201.
function Toggle201_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle201 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle201


% --- Executes on button press in Toggle202.
function Toggle202_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle202 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle202


% --- Executes on button press in Toggle203.
function Toggle203_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle203 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle203


% --- Executes on button press in Toggle204.
function Toggle204_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle204 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle204


% --- Executes on button press in Toggle205.
function Toggle205_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle205 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle205


% --- Executes on button press in Toggle206.
function Toggle206_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle206 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle206


% --- Executes on button press in Toggle207.
function Toggle207_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle207 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle207


% --- Executes on button press in Toggle208.
function Toggle208_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle208 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle208


% --- Executes on button press in Toggle209.
function Toggle209_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle209 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle209


% --- Executes on button press in Toggle210.
function Toggle210_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle210 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle210


% --- Executes on button press in Toggle211.
function Toggle211_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle211 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle211


% --- Executes on button press in Toggle212.
function Toggle212_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle212 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle212


% --- Executes on button press in Toggle213.
function Toggle213_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle213 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle213


% --- Executes on button press in Toggle214.
function Toggle214_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle214 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle214


% --- Executes on button press in Toggle215.
function Toggle215_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle215 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle215


% --- Executes on button press in Toggle216.
function Toggle216_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle216 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle216


% --- Executes on button press in Toggle217.
function Toggle217_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle217 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle217


% --- Executes on button press in Toggle218.
function Toggle218_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle218 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle218


% --- Executes on button press in Toggle219.
function Toggle219_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle219 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle219


% --- Executes on button press in Toggle220.
function Toggle220_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle220 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle220


% --- Executes on button press in Toggle221.
function Toggle221_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle221 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle221


% --- Executes on button press in Toggle222.
function Toggle222_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle222 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle222


% --- Executes on button press in Toggle223.
function Toggle223_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle223 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle223


% --- Executes on button press in Toggle224.
function Toggle224_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle224 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle224


% --- Executes on button press in Toggle225.
function Toggle225_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle225 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle225


% --- Executes on button press in Toggle226.
function Toggle226_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle226 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle226


% --- Executes on button press in Toggle227.
function Toggle227_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle227 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle227


% --- Executes on button press in Toggle228.
function Toggle228_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle228 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle228


% --- Executes on button press in Toggle229.
function Toggle229_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle229 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle229


% --- Executes on button press in Toggle230.
function Toggle230_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle230 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle230


% --- Executes on button press in Toggle231.
function Toggle231_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle231 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle231


% --- Executes on button press in Toggle232.
function Toggle232_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle232 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle232


% --- Executes on button press in Toggle233.
function Toggle233_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle233 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle233


% --- Executes on button press in Toggle234.
function Toggle234_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle234 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle234


% --- Executes on button press in Toggle235.
function Toggle235_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle235 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle235


% --- Executes on button press in Toggle236.
function Toggle236_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle236 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle236


% --- Executes on button press in Toggle237.
function Toggle237_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle237 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle237


% --- Executes on button press in Toggle238.
function Toggle238_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle238 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle238


% --- Executes on button press in Toggle239.
function Toggle239_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle239 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle239


% --- Executes on button press in Toggle240.
function Toggle240_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle240 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle240


% --- Executes on button press in Toggle241.
function Toggle241_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle241 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle241


% --- Executes on button press in Toggle242.
function Toggle242_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle242 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle242


% --- Executes on button press in Toggle243.
function Toggle243_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle243 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle243


% --- Executes on button press in Toggle244.
function Toggle244_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle244 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle244


% --- Executes on button press in Toggle245.
function Toggle245_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle245 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle245


% --- Executes on button press in Toggle246.
function Toggle246_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle246 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle246


% --- Executes on button press in Toggle247.
function Toggle247_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle247 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle247


% --- Executes on button press in Toggle248.
function Toggle248_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle248 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle248


% --- Executes on button press in Toggle249.
function Toggle249_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle249 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle249


% --- Executes on button press in Toggle250.
function Toggle250_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle250 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle250


% --- Executes on button press in Toggle251.
function Toggle251_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle251 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle251


% --- Executes on button press in Toggle252.
function Toggle252_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle252 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle252


% --- Executes on button press in Toggle253.
function Toggle253_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle253 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle253


% --- Executes on button press in Toggle254.
function Toggle254_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle254 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle254


% --- Executes on button press in Toggle255.
function Toggle255_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle255 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle255


% --- Executes on button press in Toggle256.
function Toggle256_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle256 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle256


% --- Executes on button press in Toggle085.
function Toggle001_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle085 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle085


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
NumElec = 252;

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
if length(map)== 252
    for k = 1:length(map)
        handles.(map{k,1}).BackgroundColor = map{k,2};
    end
else
    errordlg('Selection failed - Incompatible format','Error');
    return
end
