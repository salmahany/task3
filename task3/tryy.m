function varargout = tryy(varargin)
% TRYY MATLAB code for tryy.fig
%      TRYY, by itself, creates a new TRYY or raises the existing
%      singleton*.
%
%      H = TRYY returns the handle to a new TRYY or the handle to
%      the existing singleton*.
%
%      TRYY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRYY.M with the given input arguments.
%
%      TRYY('Property','Value',...) creates a new TRYY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tryy_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tryy_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tryy

% Last Modified by GUIDE v2.5 17-Oct-2018 18:40:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tryy_OpeningFcn, ...
                   'gui_OutputFcn',  @tryy_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

% global s
% s=serial('COM8','BaudRate', 9600);
% fopen(s);
% End initialization code - DO NOT EDIT


% --- Executes just before tryy is made visible.
function tryy_OpeningFcn(hObject, eventdata, handles, varargin)
postion=[];
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tryy (see VARARGIN)
% global s
% s=serial('COM8','BaudRate', 9600);
% fopen(s);
% Choose default command line output for tryy
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tryy wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tryy_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global s
axes(handles.axes1);

line=imline;
pos = getPosition(line)

par='L'
parx='x'
pary='y'

x1=string(pos(1));
y1=string(pos(2));
x2=string(pos(3));
y2=string(pos(4));

a = strcat(par,x1,parx,y1,pary,x2,parx,y2,pary)
%str = string(a)

s=serial('COM5','BaudRate', 9600);
display('geavfc');
fopen(s);



fprintf(s,a);


fclose(s);
    





% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton1.
function pushbutton1_ButtonDownFcn(hObject, eventdata, handles)

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
global s
axes(handles.axes1);
rectangle=imrect;
pos = getPosition(rectangle);
x1=pos(1)
y1=pos(2)
x2=x1+pos(3)
y2=y1
x3=x2
y3=y1+pos(4)
x4=x1
y4=y3





% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)


% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
