function [Y,Xf,Af] = narx_net(X,Xi,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 08-Apr-2016 16:25:21.
% 
% [Y,Xf,Af] = myNeuralNetworkFunction(X,Xi,~) takes these arguments:
% 
%   X = 2xTS cell, 2 inputs over TS timsteps
%   Each X{1,ts} = 5xQ matrix, input #1 at timestep ts.
%   Each X{2,ts} = 1xQ matrix, input #2 at timestep ts.
% 
%   Xi = 2x2 cell 2, initial 2 input delay states.
%   Each Xi{1,ts} = 5xQ matrix, initial states for input #1.
%   Each Xi{2,ts} = 1xQ matrix, initial states for input #2.
% 
%   Ai = 2x0 cell 2, initial 2 layer delay states.
%   Each Ai{1,ts} = 10xQ matrix, initial states for layer #1.
%   Each Ai{2,ts} = 1xQ matrix, initial states for layer #2.
% 
% and returns:
%   Y = 1xTS cell of 2 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
%   Xf = 2x2 cell 2, final 2 input delay states.
%   Each Xf{1,ts} = 5xQ matrix, final states for input #1.
%   Each Xf{2,ts} = 1xQ matrix, final states for input #2.
% 
%   Af = 2x0 cell 2, final 0 layer delay states.
%   Each Af{1ts} = 10xQ matrix, final states for layer #1.
%   Each Af{2ts} = 1xQ matrix, final states for layer #2.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

  % ===== NEURAL NETWORK CONSTANTS =====
  
  % Input 1
  x1_step1_xoffset = [-0.00512260540217772;0.147768073750606;-0.0126633526580937;0;0];
  x1_step1_gain = [2;2;2;2;2];
  x1_step1_ymin = -1;
  
  % Input 2
  x2_step1_xoffset = -0.00512260540217772;
  x2_step1_gain = 2;
  x2_step1_ymin = -1;
  
  % Layer 1
  b1 = [1.5829807367050228173;1.1828139756344895339;1.1989310763782980995;-0.23457809517758504425;-0.1408641137730833881;0.4097220799319134521;1.7153712181062754638;-0.35962179981129210882;0.78243587761249522305;1.8901946995726464085];
  IW1_1 = [-0.31288885951430106536 -0.043389485810750701156 0.80712976655503354539 0.48678186066665479759 0.13329386020917813327 -0.45430720314640382629 0.65577239295555145304 0.47446696923305381466 -0.61078252116642117731 0.61788974114135541971;0.3646207763281636427 0.39468559630810379213 0.37916294766616509548 -0.74287204041230936458 0.67458909042009584933 0.78511931953585301081 -0.60626076022200725557 -0.083510038089343610612 -0.41897261667578611366 -0.026138401608956716993;-0.70760005411833770683 -0.53066811858694951098 -1.0539822714224589273 -0.11332856639656348208 0.058125883144586110163 0.28231312576940598147 0.543174422622940134 0.50870454509217177819 0.048721989669971585424 0.15473830507309929705;-2.2004274062838478088 0.3134626643855774053 0.31125835700635889891 -0.06251267432328128093 0.12110945797497228715 1.7610775310782276204 -0.043937922062514803145 -0.42471442873293019371 0.10922999539390580714 -0.2106380666015787162;-0.22941218450117450978 -0.40302677472620623833 -0.1901430739926817659 -0.10595576890100767697 0.07235797954155101519 0.86932997578805903949 1.2478783339832983934 -0.79256942832480314909 0.13594064592328580776 -0.16794719916889255806;0.74040120501605621861 0.016752764508901601265 -0.28775260108298911232 0.050710094298614567798 0.023868376881458895633 0.59928309551729563864 0.12697735195014744902 0.087121307680769713433 -0.23096600499794017747 -1.269462841678127285;1.2492021819515815029 0.29397876239884956906 0.73842375581768671111 0.018521081472781995847 -0.03741822646471824193 -0.83209295285792428398 -0.55952809391235291958 -0.46643837652807124128 0.022951140754006255085 -0.06846229596658268135;-0.59302381723506103484 -0.45715554168250760458 -0.47929459824148240576 -0.10080332111883823221 -0.47514356447628885993 0.58437511587093160514 -0.34736486879368699832 0.16783041026841499788 0.2114957622327768294 -0.60303633387071009508;-0.3217849229862672078 0.94915332738538460422 -0.27571037037089662913 0.0060644449536911282372 0.17527629310388384565 -0.058927059519728652859 -0.66558046112920454807 -0.37505988961325875675 -0.057758519691071111279 0.0078879832268920965777;0.5427519661029600595 -0.064256070846121324247 -0.30401877728364828934 -0.40849341318185716787 -0.7890960094809600367 0.43988554866508799979 0.58916251454280310629 0.3625099238431682136 0.97677097354889796943 0.39569620353418721859];
  IW1_2 = [0.017886767608654589867 -0.3475333491087155835;0.56074691827967071411 0.77520438878408204353;0.20717243002641166916 -0.47867520417179665326;-2.1089051778769172252 1.8905548982871296371;-0.93716194810389263914 1.1722648108139781531;1.2982930823357752281 -0.22423274070717869044;0.84098182575393587435 0.30260114349026873137;-0.21433518600144410571 0.029757078561370896991;-1.011937915133393151 0.49094729084749583192;0.20263543696585814557 0.16768493349462687547];
  
  % Layer 2
  b2 = -0.57740193238934978126;
  LW2_1 = [0.011442683413197313538 0.0058379801247366190295 0.88270341004800467744 -0.17776167452025862237 0.5630529356201889879 0.037752141426072569064 0.45655026224671652058 -0.064097852485680228973 -0.85789411840883678106 -0.021442963497956161328];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 2;
  y1_step1_xoffset = -0.00512260540217772;
  
  % ===== SIMULATION ========
  
  % Format Input Arguments
  isCellX = iscell(X);
  if ~isCellX, X = {X}; end;
  if (nargin < 2), error('Initial input states Xi argument needed.'); end
  
  % Dimensions
  TS = size(X,2); % timesteps
  if ~isempty(X)
    Q = size(X{1},2); % samples/series
  elseif ~isempty(Xi)
    Q = size(Xi{1},2);
  else
    Q = 0;
  end
  
  % Input 1 Delay States
  Xd1 = cell(1,3);
  for ts=1:2
    Xd1{ts} = mapminmax_apply(Xi{1,ts},x1_step1_gain,x1_step1_xoffset,x1_step1_ymin);
  end
  
  % Input 2 Delay States
  Xd2 = cell(1,3);
  for ts=1:2
    Xd2{ts} = mapminmax_apply(Xi{2,ts},x2_step1_gain,x2_step1_xoffset,x2_step1_ymin);
  end
  
  % Allocate Outputs
  Y = cell(1,TS);
  
  % Time loop
  for ts=1:TS
  
    % Rotating delay state position
    xdts = mod(ts+1,3)+1;
  
    % Input 1
    Xd1{xdts} = mapminmax_apply(X{1,ts},x1_step1_gain,x1_step1_xoffset,x1_step1_ymin);
    
    % Input 2
    Xd2{xdts} = mapminmax_apply(X{2,ts},x2_step1_gain,x2_step1_xoffset,x2_step1_ymin);
    
    % Layer 1
    tapdelay1 = cat(1,Xd1{mod(xdts-[1 2]-1,3)+1});
    tapdelay2 = cat(1,Xd2{mod(xdts-[1 2]-1,3)+1});
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*tapdelay1 + IW1_2*tapdelay2);
    
    % Layer 2
    a2 = repmat(b2,1,Q) + LW2_1*a1;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a2,y1_step1_gain,y1_step1_xoffset,y1_step1_ymin);
  end
  
  % Final Delay States
  finalxts = TS+(1: 2);
  xits = finalxts(finalxts<=2);
  xts = finalxts(finalxts>2)-2;
  Xf = [Xi(:,xits) X(:,xts)];
  Af = cell(2,0);
  
  % Format Output Arguments
  if ~isCellX, Y = cell2mat(Y); end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings_gain,settings_xoffset,settings_ymin)
  y = bsxfun(@minus,x,settings_xoffset);
  y = bsxfun(@times,y,settings_gain);
  y = bsxfun(@plus,y,settings_ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n)
  a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings_gain,settings_xoffset,settings_ymin)
  x = bsxfun(@minus,y,settings_ymin);
  x = bsxfun(@rdivide,x,settings_gain);
  x = bsxfun(@plus,x,settings_xoffset);
end
