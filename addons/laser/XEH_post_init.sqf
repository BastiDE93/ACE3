#include "script_component.hpp"

["laser_laserOn", {_this call DFUNC(handleLaserOn)}] call EFUNC(common,addEventHandler);
["laser_laserOff", {_this call DFUNC(handleLaserOff)}] call EFUNC(common,addEventHandler);

