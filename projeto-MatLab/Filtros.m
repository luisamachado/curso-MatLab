function varargout = Filtros(varargin)
% FILTROS MATLAB code for Filtros.fig
%      FILTROS, by itself, creates a new FILTROS or raises the existing
%      singleton*.
%
%      H = FILTROS returns the handle to a new FILTROS or the handle to
%      the existing singleton*.
%
%      FILTROS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FILTROS.M with the given input arguments.
%
%      FILTROS('Property','Value',...) creates a new FILTROS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Filtros_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Filtros_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Filtros

% Last Modified by GUIDE v2.5 06-Dec-2018 15:45:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Filtros_OpeningFcn, ...
                   'gui_OutputFcn',  @Filtros_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before Filtros is made visible.
function Filtros_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Filtros (see VARARGIN)

% Choose default command line output for Filtros
handles.output = hObject;
handles.salvar = false;
set(handles.uipanel2, 'visible', 'off')

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Filtros wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Filtros_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.salvar == false
    if handles.radiobutton1.Value
        handles.caminho = strcat(handles.edit1.String,'.jpeg');
    elseif handles.radiobutton2.Value
        handles.caminho = strcat(handles.edit1.String,'.jpg');
    elseif handles.radiobutton3.Value
        handles.caminho = strcat(handles.edit1.String,'.png');
    end
    
    fid = fopen(handles.caminho, 'r');
    if fid == -1
        alerta = questdlg('Imagem não encontrada! Abrir nova imagem', 'Alerta', 'Sim', 'Sair', 'Sair');
        switch alerta
            case 'Sim'
                handles.edit1.String = 'Ex: "caminho/nome"';
            case 'Sair'
                close(Filtros);
                return
        end
    else
        x_old = imread(handles.caminho);

        handles.original = im2double(x_old);

        imshow(handles.original, 'Parent', handles.axes1)

        set(handles.uipanel2, 'visible', 'on')

        handles.cont = 0;
    end
else
    if handles.radiobutton1.Value
        novonome = strcat(handles.edit1.String,'.jpeg');
    elseif handles.radiobutton2.Value
        novonome = strcat(handles.edit1.String,'.jpg');
    elseif handles.radiobutton3.Value
        novonome = strcat(handles.edit1.String,'.png');
    end
    imwrite(handles.new_image, novonome);
    alerta = questdlg('Imagem salva com sucesso! Editar nova imagem', 'Alerta', 'Editar', 'Sair', 'Sair');
    switch alerta
        case 'Editar'
            set(handles.uipanel2, 'visible', 'off');
            handles.uipanel1.Title = 'Editor de fotos';
            handles.text2.String = 'Caminho da imagem:';
            handles.edit1.String = 'Ex: "caminho/nome"';
            handles.pushbutton1.String = 'Abrir';
            handles.salvar = false;
        case 'Sair'
            close(Filtros);
            return
    end
end

% Update handles structure
guidata(hObject, handles); % atualiza a estrutura handles

% --- Executes on button press in aplicar.
function aplicar_Callback(hObject, eventdata, handles)
% hObject    handle to aplicar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.cont ~= 0
    x = handles.new_image;
else
    x = handles.original;
end

if handles.radiobutton4.Value
    % Negativo da imagem
    handles.new_image = 1 - x;

elseif handles.radiobutton5.Value
    % Preto e branco
    if size(x, 3) == 1
        alerta = msgbox('Este filtro já foi aplicado!', 'Alerta');
        return
    end
    r = x(:, :, 1);
    g = x(:, :, 2);
    b = x(:, :, 3);
    
    handles.new_image = (r + g + b)/3;

elseif handles.radiobutton6.Value
    % Inversão de cores
    if size(x, 3) == 1
        alerta = questdlg( ...
            'Para aplicar este filtro a imagem não deve estar em Preto e Branco! Voltar imagem original e aplicar filtro?', ...
            'Alerta', 'Ok', 'Cancelar', 'Cancelar');
        switch alerta
            case 'Ok'
                x = handles.original;
            case 'Cancelar'
                return
        end
    end
    handles.new_image(:, :, 1:3) = x(:, :, 3:-1:1);
    
elseif handles.radiobutton7.Value
    % Mistura de cores
    if size(x, 3) == 1
        alerta = questdlg( ...
            'Para aplicar este filtro a imagem não deve estar em Preto e Branco! Voltar imagem original e aplicar filtro?', ...
            'Alerta', 'Ok', 'Cancelar', 'Cancelar');
        switch alerta
            case 'Ok'
                x = handles.original;
            case 'Cancelar'
                return
        end
    end
    handles.new_image(:, :, 1:3) = x(:, :, [2 3 1]);

elseif handles.radiobutton8.Value
    % Suavizar imagem
    mask1 = (1/9)*ones(3);
    if size(x, 3) == 1
        suav1 = conv2(x, mask1);
        handles.new_image = suav1(2:end-1, 2:end-1, 1);
    else
        suav1 = conv2(x(:, :, 1), mask1);
        suav1(:, :, 2) = conv2(x(:, :, 2), mask1);
        suav1(:, :, 3) = conv2(x(:, :, 3), mask1);
        handles.new_image = suav1(2:end-1, 2:end-1, 1);
        handles.new_image(:, :, 2) = suav1(2:end-1, 2:end-1, 2);
        handles.new_image(:, :, 3) = suav1(2:end-1, 2:end-1, 3);
    end    
    
elseif handles.radiobutton9.Value
    % contraste
    def = {'5'};
    prompt = inputdlg('Valor do contraste:', 'Contraste', [1 20], def);
    aux = str2num(prompt{1});
    handles.new_image = x*aux;   

elseif handles.radiobutton10.Value
    % Contorno
    sobel_v = [-1 -2 -1; 0 0 0; 1 2 1];
    if size(x, 3) == 1
        bv = conv2(x, sobel_v);
        handles.new_image = bv(:, :, 1);
    else
        bv = conv2(x(:, :, 1), sobel_v);
        bv(:, :, 2) = conv2(x(:, :, 2), sobel_v);
        bv(:, :, 3) = conv2(x(:, :, 3), sobel_v);
        handles.new_image = bv(:, :, 1);
        handles.new_image(:, :, 2) = bv(:, :, 2);
        handles.new_image(:, :, 3) = bv(:, :, 3);
    end
    
elseif handles.radiobutton11.Value
    % Envelhecida
    if size(x, 3) == 1
        alerta = questdlg( ...
            'Para aplicar este filtro a imagem não deve estar em Preto e Branco! Voltar imagem original e aplicar filtro?', ...
            'Alerta', 'Ok', 'Cancelar', 'Cancelar');
        switch alerta
            case 'Ok'
                x = handles.original;
            case 'Cancelar'
                return
        end
    end
    red = x(:,:,1); 
    green = x(:,:,2);
    blue = x(:,:,3);
    manipulaR = (red * .500) + (green *.800);
    manipulaG = (green *.686) + (blue * .168);
    manipulaB = (red * .300) + (blue * .250);
    out = cat(3, manipulaR, manipulaG, manipulaB);
    handles.new_image = out;    
    
elseif handles.radiobutton12.Value
    if size(x, 3) == 1
        alerta = questdlg( ...
            'Para aplicar este filtro a imagem não deve estar em Preto e Branco! Voltar imagem original e aplicar filtro?', ...
            'Alerta', 'Ok', 'Cancelar', 'Cancelar');
        switch alerta
            case 'Ok'
                x = handles.original;
            case 'Cancelar'
                return
        end
    end
    red = x(:,:,1); 
    green = x(:,:,2);
    blue = x(:,:,3);
    manipulaR = (red * .393) + (green *.800) + (blue * .189);
    manipulaG = (red * .349) + (green *.686) + (blue * .168);
    manipulaB = (red * .300) + (green *.534) + (blue * .250);
    out = cat(3, manipulaR, manipulaG, manipulaB);
    handles.new_image = out;
end

imshow(handles.new_image, 'Parent', handles.axes1)

handles.cont = handles.cont + 1;
guidata(hObject, handles);
%imshow(imread(handles.caminho), 'Parent', handles.axes1)

% --- Executes on button press in original.
function original_Callback(hObject, eventdata, handles)
% hObject    handle to original (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
alerta = questdlg( ...
    'Ir para a imagem original perderá as modificações feitas! Tem certeza que deseja voltar?', ...
    'Alerta', 'Ok', 'Cancelar', 'Cancelar');
switch alerta
    case 'Ok'
        handles.new_image = handles.original;
        imshow(handles.new_image, 'Parent', handles.axes1)
        handles.cont = 0;
        guidata(hObject, handles);
        
    case 'Cancelar'
        return
end

% --- Executes on button press in voltar.
function voltar_Callback(hObject, eventdata, handles)
% hObject    handle to voltar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
alerta = questdlg( ...
    'Voltar para o início perderá as modificações feitas! Tem certeza que deseja voltar?', ...
    'Alerta', 'Ok', 'Cancelar', 'Cancelar');
switch alerta
    case 'Ok'
        set(handles.uipanel2, 'visible', 'off')
        handles.edit1.String = 'Ex: "caminho/nome"';
    case 'Cancelar'
        return
end

% --- Executes on button press in salvar.
function salvar_Callback(hObject, eventdata, handles)
% hObject    handle to salvar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel2, 'visible', 'off');
handles.uipanel1.Title = 'Salvar foto';
handles.text2.String = 'Salvar como:';
handles.edit1.String = 'Ex: "novonome"';
handles.pushbutton1.String = 'Salvar';
handles.salvar = true;
guidata(hObject, handles);
