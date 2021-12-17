function [y1] = myNeuralNetworkFunction(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 22-Nov-2021 19:07:25.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = Qx1 matrix, input #1
% and returns:
%   y = Qx3 matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====
Iter=10000;
% Input 1
x1_step1.xoffset = 1;
x1_step1.gain = 0.0689655172413793;
x1_step1.ymin = -1;

% Layer 1
b1 = [89.399073358180487503;86.756092460768499564;-83.940056199602310016;-81.067304586270807931;78.222259626943738908;-75.377701334282591006;-72.55215076290920706;-69.677796559527493514;66.84462737566198598;64.000000262999563461;61.155555541630960192;58.311109331029754799;-55.467470693367651791;52.787822838865992026;-49.777552026630260684;-46.933334392578046845;-44.088888903218006021;41.244444208559876586;38.400271055155378974;-35.572941275339204026;32.770730511468556756;-29.831149228231357284;27.557823122307254948;-24.180889001001418137;-21.213778012965288866;18.492064582363049396;15.701501843938045155;12.800871926905202258;9.9402879610117178544;-7.1108748813125606247;-4.2666472807292743497;1.4222222394802508383;-1.4222221689605680783;-4.2665608689944285459;7.1166683475940040182;9.7940602385668498187;12.824724233965257625;14.700629265385902755;18.484682536856603008;-21.441475664666086232;24.164278192318487726;-27.070859309324273312;-29.864394665492859815;32.768790370562676628;-35.494369530045098315;38.399894992444089326;-41.244427618371176436;-44.087372672659228101;46.925957645973937815;-49.780964378922213598;52.613965873974926524;-55.466492444206430434;58.109653131168968798;61.155097157401236529;-64.243225285840480865;-66.806004099671554286;-69.688877571362908725;72.533341637307330529;-75.399792405211044866;-78.185287412438839283;-81.065900317895412286;83.911116162898167659;-86.756290835786217031;89.735935574546886073];
IW1_1 = [-89.800926292526057182;-89.599468145320670942;89.573050710803912011;89.599406075580034781;-89.599965099489679687;89.600060625187978758;89.585075831709787053;89.608797364665832674;-89.599854916620543577;-89.599999791409075556;-89.600000008016962738;-89.600001043495723252;89.599528674002868911;-89.502923776450217019;89.600132336879553918;89.599999379062779781;89.599999990940105477;-89.60000008945620209;-89.599897185852924508;89.593405404576969886;-89.577382051997062717;89.610992026980284209;-89.433774242026260026;89.599278937283713731;89.628858205795012282;-89.599045036708034218;-89.590162855589923652;-89.599823907585687266;-89.601579602283621284;89.600024442813165138;89.600002005454115306;-89.599999998081983676;-89.600000005493740218;-89.600010944518786005;89.599425115137989906;89.616704880416463652;89.595594008364912497;89.762726442874608779;89.600246314231057454;-89.57389704861213886;89.603266096462661494;-89.584904693353422545;-89.600684306589741368;89.578120962474159228;-89.623208493029707711;89.600039820337983087;-89.600008692538636978;-89.600784248597804549;89.603815281333041298;-89.598127142050657312;89.604839665078998223;-89.599947558752688792;89.731989956857319157;89.600274444140382002;-89.423869303152173416;-89.627836120854396995;-89.600008183476589352;89.599992857345810648;-89.581021872833105135;-89.631840353245010533;-89.600660638950330394;89.599994838092129612;-89.599264720032536502;89.464064425451269358];

% Layer 2
b2 = [-0.53015321425507544451;0.25616838158995020036;-0.25063509541765721655];
LW2_1 = [-0.78893952033368985877 -0.20433166106062725098 -1.0462563613119850725 0.34259814487971484986 0.35840224419217697749 -0.75816880192968993946 1.0089835627741272628 0.16997494855992206775 -0.21902315053039200787 -0.39775430145047402375 0.035835203410082075437 -0.25525865061610492068 -0.55376499827726233249 0.85029141724566359439 0.39348945627180642592 0.28956810252641584924 0.075176294981169400344 0.70820515250244309158 -0.41173560607478887352 -0.18111699583444387796 0.33672342430219959208 0.38267528848036630462 0.03640260378668386948 -0.019779058279038409102 -0.081230119276397921846 -0.3585060224482348179 0.31782501723243600233 -0.34270789739722662404 0.3475515846691212829 0.39575047268436780445 -0.27885824202004289019 -0.62953376322370246942 0.025027186868227573047 1.1433525534183124339 0.62666583361641203798 -0.086796391672030959175 -0.46897423164244889104 0.64744697869845702076 -0.16767160269719527665 -0.32072318932280302617 -0.19766441368364992548 0.010805630698673825488 -0.039943345851529192536 0.12200842127983713148 -0.15751082661035584187 -0.19275066286479630717 -0.52770623301356445189 0.43762805162083828758 -0.14977822468947987744 -0.41588883398996967511 -0.36386396811840371335 0.18597120309738754407 0.55869475304342486321 -0.60908800392271533752 -0.76132490897109916794 0.34870640463592861291 -0.30425743356817275265 0.56509944601622841276 0.4665640222575135887 0.67563037395057778944 -0.82480440119806786026 -0.036253109045476503147 0.36950066659025654348 0.96010710449173963799;-0.17505486093189392971 0.33280140237785016399 0.22385040373852266304 0.044121506692908200875 0.41284087923548878907 0.66230424151326905413 -0.39754000588234900126 -0.095050015616805760832 -0.87316051813624795397 0.59696806887352693582 -1.139600036700545882 0.60478710521831779978 -0.29112498026793287575 0.67174044046447223266 0.65996739696513873064 -0.68515711295254533297 -0.7329689338173427382 -0.15348923288861399117 -0.91898752026373553559 -0.11767804262465038356 -0.037784055514472732196 0.30049842221703015888 0.84310799877330466767 0.43260188035213809066 0.29802436702365470156 -0.24493764555390321047 0.68363106668129336452 -0.46128674588667095691 0.36697217076114474477 0.41139296199672786836 0.70877647422236778052 -0.29219418074674585739 0.16523232639745427663 0.76314411790526481827 -0.23188794976419038751 -0.058916508881219700755 -0.35687690352961881635 0.633022436133395483 0.42860042395227010426 1.2186451285187569482 -0.33330970987167996 -1.0538097142492848235 -0.654695829212218805 -0.67533114526885340556 -0.025179421561752513004 -0.66050342443942877679 -0.29338967244513702859 -0.75519145784660890452 -0.81963185652376402413 -0.44794882932603236059 0.56437302609992934244 0.60660169536184171957 0.34598977793632107458 -0.033776639458336782385 0.019300095674116907879 -0.14685073956735661405 0.26392887342793902583 -0.22443513093474634634 -0.34283599302364364814 -0.99573267795699960114 -0.12493217187977279092 0.10478001130316062783 0.67838081005345118868 -0.62875340159083525915;0.27914764731243529861 -0.094052786169729868382 0.11166848805499991759 -0.30593901562991016041 -0.594717298088112023 0.23301298135001560774 -0.55302305048357913719 0.68092374117603027273 0.375390629094920103 0.5323468948030665171 -0.67104048152168427332 0.23253339992703445094 -0.15912224131632032864 -0.0032628756067905832078 -0.88225873415992484006 -0.084611640453313971544 -0.79952494033656895667 -0.33673365166592444941 -0.77099422331773848072 0.60567904258107141402 -0.078658588230005030417 -0.028169496099758946361 0.7341327938018419319 0.91975583444718800319 -0.71123048873380090296 -0.27798318063088311991 -0.033473079331845512208 0.49849644757750688484 -0.64408697293555250418 0.82864128745983678392 0.8066285661473108215 0.51100170414458012669 0.77893235134615790294 0.02491880886722700264 -0.54138167485135713086 0.37549422834494666779 -0.36327897244867635163 0.22931680810184232322 0.3188853668755604609 0.52271277498777191095 0.5734819451084978148 0.51971856139133909558 -0.51732494265910855535 -0.34493619419894067102 0.54427091727741694349 -0.64882321270824583337 -1.196377509023042629 -0.030301830376246355336 0.36593466289742565545 0.069645788495863877876 0.37279125999021195392 0.52327132344685201026 0.30679171723244724745 0.29352604088236328161 0.22768307740557638952 0.80936770637178001575 -0.23140627449532905069 0.43802691158446876996 -0.2180561158848660086 0.2908859845537368205 -0.1561696209177858008 0.15427274961639561579 -0.14436180152940716881 -0.097595640281580187114];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = [0.500682113572258;0.505335646428025;0.46745812521805];
y1_step1.xoffset = [1.01582265122005;1.72952717049385;1.97806472552629];

% ===== SIMULATION ========

% Dimensions
Q = size(x1,1); % samples

% Input 1
x1 = x1';
xp1 = mapminmax_apply(x1,x1_step1);

% Layer 1
a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*xp1);

% Layer 2
a2 = repmat(b2,1,Q) + LW2_1*a1;

% Output 1
y1 = mapminmax_reverse(a2,y1_step1);
y1 = y1';
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
x = bsxfun(@minus,y,settings.ymin);
x = bsxfun(@rdivide,x,settings.gain);
x = bsxfun(@plus,x,settings.xoffset);
end
