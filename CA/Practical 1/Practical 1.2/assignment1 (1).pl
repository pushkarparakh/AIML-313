% =================================================================
% EXPERT SYSTEM: COMPUTER HARDWARE DIAGNOSTICS
% Author: Pushkar Parakh
% PRN: 202401040313
% =================================================================

check(powerLightIsOn, true).
check(fansAreSpinning, true).
check(screenIsBlack, true).
check(beepingSoundHeard, true).
check(motherboardLogoShows, false).
check(windowsLoadingIconShows, false).
check(clickSoundFromDrive, false).
check(computerShutsDownRandomly, false).
check(blueScreenErrorAppears, false).
check(usbDevicesNotWorking, false).
check(internetCablePluggedIn, true).
check(routerLightsAreNormal, true).

diagnose(deadPowerSupply) :-
    check(powerLightIsOn, false),
    check(fansAreSpinning, false),
    check(screenIsBlack, true).

diagnose(badRamChips) :-
    check(powerLightIsOn, true),
    check(fansAreSpinning, true),
    check(beepingSoundHeard, true),
    check(screenIsBlack, true).

diagnose(gpuFailure) :-
    check(powerLightIsOn, true),
    check(fansAreSpinning, true),
    check(beepingSoundHeard, false),
    check(screenIsBlack, true).

diagnose(corruptedOperatingSystem) :-
    check(powerLightIsOn, true),
    check(motherboardLogoShows, true),
    check(windowsLoadingIconShows, false).

diagnose(failingHardDrive) :-
    check(powerLightIsOn, true),
    check(clickSoundFromDrive, true),
    check(blueScreenErrorAppears, true).

diagnose(cpuOverheating) :-
    check(powerLightIsOn, true),
    check(fansAreSpinning, true),
    check(computerShutsDownRandomly, true).

diagnose(friedMotherboardPorts) :-
    check(powerLightIsOn, true),
    check(usbDevicesNotWorking, true).

diagnose(brokenNetworkCard) :-
    check(internetCablePluggedIn, true),
    check(routerLightsAreNormal, true),
    check(windowsLoadingIconShows, true).

fix(deadPowerSupply,
    'Replace the power supply unit and check the wall outlet socket.').

fix(badRamChips,
    'Open the computer case, remove the RAM sticks, clean the gold contacts, and reinsert them firmly.').

fix(gpuFailure,
    'Ensure the monitor cable is plugged into the graphics card directly, or test with a spare GPU.').

fix(corruptedOperatingSystem,
    'Insert a bootable recovery USB drive and run a startup repair process.').

fix(failingHardDrive,
    'Back up critical files immediately and replace the mechanical drive with a solid state drive.').

fix(cpuOverheating,
    'Clean the dust out of the heat sink cooling fans and apply fresh thermal paste to the processor.').

fix(friedMotherboardPorts,
    'Install a PCI extension card to get new working external ports.').

fix(brokenNetworkCard,
    'Update your internet driver adapter software or use a dedicated USB wifi dongle.').

findFix(Problem, Solution) :-
    diagnose(Problem),
    fix(Problem, Solution).
