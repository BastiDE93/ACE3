#include "script_component.hpp"

#include "initKeybinds.sqf"

if ((profileNamespace getVariable ["ACE_ATragMX_profileNamespaceVersion", 0]) == ATRAGMX_PROFILE_NAMESPACE_VERSION && count (profileNamespace getVariable ["ACE_ATragMX_gunList", []]) > 0) then {
    GVAR(gunList) = profileNamespace getVariable "ACE_ATragMX_gunList";
} else {
    // Profile Name, Muzzle Velocity, Zero Range, Scope Base Angle, AirFriction, Bore Height, Scope Unit, Scope Click Unit, Scope Click Number, Maximum Elevation, Dialed Elevation, Dialed Windage, Mass, Bullet Diameter, Rifle Twist, BC, Drag Model, Atmosphere Model
    GVAR(gunList) =  [["12.7x108mm"        , 820, 100, 0.0657, -0.0006400, 3.81, 0, 2, 10, 120, 0, 0, 48.28, 12.7, 38.10, 0.630, 1, "ASM" ],
    
                      ["12.7x99mm AMAX"    , 860, 100, 0.0612, -0.0003740, 3.81, 0, 2, 10, 120, 0, 0, 48.60, 12.7, 38.10, 1.050, 1, "ASM" ],
                      ["12.7x99mm"         , 853, 100, 0.0623, -0.0006000, 3.81, 0, 2, 10, 120, 0, 0, 41.92, 12.7, 38.10, 0.670, 1, "ASM" ],
                      
                      ["12.7x54mm"         , 300, 100, 0.3395, -0.0001400, 3.81, 0, 2, 10, 120, 0, 0, 48.60, 12.7, 24.13, 1.050, 1, "ASM" ],
                      
                      [".408 Chey Tac"     , 910, 100, 0.0571, -0.0003950, 3.81, 0, 2, 10, 120, 0, 0, 27.15, 10.4, 33.02, 0.970, 1, "ASM" ],
                      
                      ["9.3×64mm"          , 870, 100, 0.0619, -0.0010600, 3.81, 0, 2, 10, 120, 0, 0, 14.90, 9.30, 35.56, 0.368, 1, "ASM" ],
                      
                      [".338LM 250gr"      , 880, 100, 0.0598, -0.0006060, 3.81, 0, 2, 10, 120, 0, 0, 16.20, 8.58, 25.40, 0.322, 7, "ICAO"],
                      [".338LM 300gr"      , 800, 100, 0.0677, -0.0005350, 3.81, 0, 2, 10, 120, 0, 0, 19.44, 8.58, 25.40, 0.381, 7, "ICAO"],
                      [".338LM API526"     , 880, 100, 0.0601, -0.0006730, 3.81, 0, 2, 10, 120, 0, 0, 16.39, 8.58, 25.40, 0.290, 7, "ICAO"],
                      
                      [".300WM Mk248 Mod 0", 900, 100, 0.0584, -0.0008300, 3.81, 0, 2, 10, 120, 0, 0, 13.31, 7.80, 25.40, 0.268, 7, "ICAO"],
                      [".300WM Mk248 Mod 1", 867, 100, 0.0611, -0.0008150, 3.81, 0, 2, 10, 120, 0, 0, 14.26, 7.80, 25.40, 0.310, 7, "ICAO"],
                      [".300WM Berger OTM" , 853, 100, 0.0622, -0.0007600, 3.81, 0, 2, 10, 120, 0, 0, 14.90, 7.80, 25.40, 0.368, 7, "ICAO"],
                      
                      ["7.62x54mmR"        , 800, 100, 0.0692, -0.0010230, 3.81, 0, 2, 10, 120, 0, 0, 9.849, 7.92, 24.13, 0.400, 1, "ICAO"],
                      
                      ["7.62x51mm M80"     , 810, 100, 0.0679, -0.0010350, 3.81, 0, 2, 10, 120, 0, 0, 9.525, 7.82, 25.40, 0.200, 7, "ICAO"],
                      ["7.62x51mm M118LR"  , 820, 100, 0.0662, -0.0008525, 3.81, 0, 2, 10, 120, 0, 0, 11.34, 7.82, 25.40, 0.243, 7, "ICAO"],
                      ["7.62x51mm Mk319"   , 820, 100, 0.0670, -0.0010300, 3.81, 0, 2, 10, 120, 0, 0, 8.424, 7.82, 25.40, 0.377, 1, "ICAO"],
                      ["7.62x51mm Subsonic", 320, 100, 0.3060, -0.0004910, 3.81, 0, 2, 10, 120, 0, 0, 12.96, 7.82, 25.40, 0.235, 7, "ICAO"],
                      
                      ["6.5x39mm"          , 800, 100, 0.0683, -0.0007850, 3.81, 0, 2, 10, 120, 0, 0, 7.970, 6.71, 22.86, 0.263, 7, "ICAO"],
                      ["6.5x47mm Lapua"    , 800, 100, 0.0682, -0.0007710, 3.81, 0, 2, 10, 120, 0, 0, 9.007, 6.71, 22.86, 0.290, 7, "ICAO"],
                      
                      ["5.56x45mm M855"    , 870, 100, 0.0626, -0.0012650, 3.81, 0, 2, 10, 120, 0, 0, 4.018, 5.70, 17.78, 0.151, 7, "ASM" ],
                      ["5.56x45mm Mk262"   , 820, 100, 0.0671, -0.0011250, 3.81, 0, 2, 10, 120, 0, 0, 4.990, 5.70, 17.78, 0.361, 1, "ASM" ],
                      ["5.56x45mm Mk318"   , 880, 100, 0.0616, -0.0011200, 3.81, 0, 2, 10, 120, 0, 0, 4.018, 5.70, 17.78, 0.307, 1, "ASM" ]];
    
    [] call FUNC(clear_user_data);
    profileNamespace setVariable ["ACE_ATragMX_gunList", GVAR(gunList)];
};

[] call FUNC(init);
[] call FUNC(restore_user_data);

["RangerfinderData", {_this call FUNC(sord)}] call EFUNC(common,addEventHandler);
