function varargout = ConfirmCompartmentsMap_60(varargin)
%CONFIRMCOMPARTMENTSMAP_60 MATLAB code file for ConfirmCompartmentsMap_60.fig
%      CONFIRMCOMPARTMENTSMAP_60, by itself, creates a new CONFIRMCOMPARTMENTSMAP_60 or raises the existing
%      singleton*.
%
%      H = CONFIRMCOMPARTMENTSMAP_60 returns the handle to a new CONFIRMCOMPARTMENTSMAP_60 or the handle to
%      the existing singleton*.
%
%      CONFIRMCOMPARTMENTSMAP_60('Property','Value',...) creates a new CONFIRMCOMPARTMENTSMAP_60 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to ConfirmCompartmentsMap_60_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      CONFIRMCOMPARTMENTSMAP_60('CALLBACK') and CONFIRMCOMPARTMENTSMAP_60('CALLBACK',hObject,...) call the
%      local function named CALLBACK in CONFIRMCOMPARTMENTSMAP_60.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ConfirmCompartmentsMap_60

% Last Modified by GUIDE v2.5 09-Jun-2019 16:25:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ConfirmCompartmentsMap_60_OpeningFcn, ...
                   'gui_OutputFcn',  @ConfirmCompartmentsMap_60_OutputFcn, ...
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


% --- Executes just before ConfirmCompartmentsMap_60 is made visible.
function ConfirmCompartmentsMap_60_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for ConfirmCompartmentsMap_60
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ConfirmCompartmentsMap_60 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ConfirmCompartmentsMap_60_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

   

% --- Executes on button press in Toggle012.
function Toggle012_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle012 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle012

% --- Executes on button press in Toggle053.
function Toggle013_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle053 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle053



% --- Executes on button press in Toggle047.
function Toggle014_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle047 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle047


% --- Executes on button press in Toggle015.
function Toggle015_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle015 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle015

% --- Executes on button press in Toggle038.
function Toggle016_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle038 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle038


% --- Executes on button press in Toggle028.
function Toggle017_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle028 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle028


% --- Executes on button press in Toggle028.
function Toggle021_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle028 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle028


% --- Executes on button press in Toggle046.
function Toggle022_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle046 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle046


% --- Executes on button press in Toggle042.
function Toggle023_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle042 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle042


% --- Executes on button press in Toggle045.
function Toggle024_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle045 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle045


% --- Executes on button press in Toggle038.
function Toggle025_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle038 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle038


% --- Executes on button press in Toggle045.
function Toggle026_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle045 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle045


% --- Executes on button press in Toggle035.
function Toggle027_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle035 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle035


% --- Executes on button press in Toggle025.
function Toggle028_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle025 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle025



% --- Executes on button press in Toggle064.
function Toggle031_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle064 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle064


% --- Executes on button press in Toggle054.
function Toggle032_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle054 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle054


% --- Executes on button press in Toggle047.
function Toggle033_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle047 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle047


% --- Executes on button press in Toggle045.
function Toggle034_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle045 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle045


% --- Executes on button press in Toggle034.
function Toggle035_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle034 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle034


% --- Executes on button press in Toggle042.
function Toggle036_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle042 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle042


% --- Executes on button press in Toggle053.
function Toggle037_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle053 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle053


% --- Executes on button press in Toggle042.
function Toggle038_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle042 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle042


% --- Executes on button press in Toggle012.
function Toggle041_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle012 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle012


% --- Executes on button press in Toggle046.
function Toggle042_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle046 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle046


% --- Executes on button press in Toggle054.
function Toggle043_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle054 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle054


% --- Executes on button press in Toggle042.
function Toggle044_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle042 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle042


% --- Executes on button press in Toggle021.
function Toggle045_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle021 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle021


% --- Executes on button press in Toggle064.
function Toggle046_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle064 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle064


% --- Executes on button press in Toggle047.
function Toggle047_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle047 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle047


% --- Executes on button press in Toggle053.
function Toggle048_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle053 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle053




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


% --- Executes on button press in Toggle051.
function Toggle053_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle051 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle051


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



% --- Executes on button press in Toggle073.
function Toggle056_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle073 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle073


% --- Executes on button press in Toggle074.
function Toggle057_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle074 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle074


% --- Executes on button press in Toggle058.
function Toggle058_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle058 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle058



% --- Executes on button press in Toggle074.
function Toggle061_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle074 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle074


% --- Executes on button press in Toggle073.
function Toggle062_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle073 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle073


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


% --- Executes on button press in Toggle071.
function Toggle065_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle071 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle071


% --- Executes on button press in Toggle072.
function Toggle066_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle072 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle072


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
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle077


% --- Executes on button press in Toggle083.
function Toggle078_Callback(hObject, eventdata, handles)
% hObject    handle to Toggle083 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    color = hObject.BackgroundColor;
    c = changecolor(color);
    hObject.BackgroundColor = c;
% Hint: get(hObject,'Value') returns toggle state of Toggle083


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
      
NumElec = 60;
MEA = [12:17,21:28,31:38,41:48,51:58,61:68,71:78,82:87];

for i = 1:NumElec
    color(i,:) = handles.(strcat('Toggle0',num2str(MEA(i)))).BackgroundColor;
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
if length(map)==60
    for k = 1:length(map)
        handles.(map{k,1}).BackgroundColor = map{k,2};
    end
else
    errordlg('Selection failed - Incompatible format','Error');
    return
end

