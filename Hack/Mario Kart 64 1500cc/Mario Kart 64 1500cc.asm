// N64 "Mario Kart 64" 1500cc Hack by krom (Peter Lemon):
// Special thanks to queueRAM for the TKMK00 menu & MIO0 logo compressed textures & hacking

.open "Mario Kart 64 (U) [!].z64", "Mario Kart 64 1500cc.z64", 0x80000000 - 0xc00
.n64
.orga 0x20
.db "MARIOKART641500CC          " // 0x00000020 - PROGRAM TITLE (27 Byte ASCII String, Use Spaces For Unused Bytes)

// relocate 50cc string pointers since only 4 bytes allocated for them
.org 0x800E76CC
.dw results_50cc
.org 0x800E76DC
.dw awards_50cc

// update strings
.org 0x800EFE16 // start 2 bytes lower to allow for longer string
results_50cc:
.db "500(",0
.align 4
results_100cc:
.db "1000(",0
.align 4
results_150cc:
.db "1500(",0
.align 4
// skip the "extra"
.org 0x800EFE32 // start 2 bytes lower to allow for longer string
awards_50cc:
.db "500(",0
.align 4
awards_100cc:
.db "1000(",0
.align 4
awards_150cc:
.db "1500(",0
.align 4

// NOW-MEET THE COURSE GHOST!!!
.org 0x800E7780 // start 2 bytes lower to allow for longer string
db "NOW MEET THE N64DEV GHOST!!!", 0
.align \
4

.org 0x800E2340 // Seek To RAM Address

KartUnknown00:
             // ROM       RAM         Kart *Unknown*
.dw 0x0F12D430 // 0x000E2F40 0x800E2340 - Mario  (4 Bytes) (0x0F12D430)
.dw 0x0F09ABFC // 0x000E2F44 0x800E2344 - Luigi  (4 Bytes) (0x0F09ABFC)
.dw 0x0F1C4958 // 0x000E2F48 0x800E2348 - Yoshi  (4 Bytes) (0x0F1C4958)
.dw 0x0F386858 // 0x000E2F4C 0x800E234C - Toad   (4 Bytes) (0x0F386858)
.dw 0x0F438874 // 0x000E2F50 0x800E2350 - D.K.   (4 Bytes) (0x0F438874)
.dw 0x0F2F5DEC // 0x000E2F54 0x800E2354 - Wario  (4 Bytes) (0x0F2F5DEC)
.dw 0x0F258AC8 // 0x000E2F58 0x800E2358 - Peach  (4 Bytes) (0x0F258AC8)
.dw 0x0F4F8C88 // 0x000E2F5C 0x800E235C - Bowser (4 Bytes) (0x0F4F8C88)

KartUnknown01:
              // ROM       RAM         Kart *Unknown*
.float -10.0 // 0x000E2F60 0x800E2360 - Mario  (IEEE32) (-10.0: 0xC1200000)
.float -10.0 // 0x000E2F64 0x800E2364 - Luigi  (IEEE32) (-10.0: 0xC1200000)
.float -10.0 // 0x000E2F68 0x800E2368 - Yoshi  (IEEE32) (-10.0: 0xC1200000)
.float -10.0 // 0x000E2F6C 0x800E236C - Toad   (IEEE32) (-10.0: 0xC1200000)
.float -10.0 // 0x000E2F70 0x800E2370 - D.K.   (IEEE32) (-10.0: 0xC1200000)
.float -10.0 // 0x000E2F74 0x800E2374 - Wario  (IEEE32) (-10.0: 0xC1200000)
.float -10.0 // 0x000E2F78 0x800E2378 - Peach  (IEEE32) (-10.0: 0xC1200000)
.float -10.0 // 0x000E2F7C 0x800E237C - Bowser (IEEE32) (-10.0: 0xC1200000)

KartUnknown02:
              // ROM       RAM         Kart *Unknown*
.float -15.0 // 0x000E2F80 0x800E2380 - Mario  (IEEE32) (-15.0: 0xC1700000)
.float -15.0 // 0x000E2F84 0x800E2384 - Luigi  (IEEE32) (-15.0: 0xC1700000)
.float -15.0 // 0x000E2F88 0x800E2388 - Yoshi  (IEEE32) (-15.0: 0xC1700000)
.float -15.0 // 0x000E2F8C 0x800E238C - Toad   (IEEE32) (-15.0: 0xC1700000)
.float -15.0 // 0x000E2F90 0x800E2390 - D.K.   (IEEE32) (-15.0: 0xC1700000)
.float -15.0 // 0x000E2F94 0x800E2394 - Wario  (IEEE32) (-15.0: 0xC1700000)
.float -15.0 // 0x000E2F98 0x800E2398 - Peach  (IEEE32) (-15.0: 0xC1700000)
.float -15.0 // 0x000E2F9C 0x800E239C - Bowser (IEEE32) (-15.0: 0xC1700000)

KartUnknown03:
              // ROM       RAM         Kart *Unknown*
.float -20.0 // 0x000E2FA0 0x800E23A0 - Mario  (IEEE32) (-20.0: 0xC1A00000)
.float -20.0 // 0x000E2FA4 0x800E23A4 - Luigi  (IEEE32) (-20.0: 0xC1A00000)
.float -20.0 // 0x000E2FA8 0x800E23A8 - Yoshi  (IEEE32) (-20.0: 0xC1A00000)
.float -20.0 // 0x000E2FAC 0x800E23AC - Toad   (IEEE32) (-20.0: 0xC1A00000)
.float -20.0 // 0x000E2FB0 0x800E23B0 - D.K.   (IEEE32) (-20.0: 0xC1A00000)
.float -20.0 // 0x000E2FB4 0x800E23B4 - Wario  (IEEE32) (-20.0: 0xC1A00000)
.float -20.0 // 0x000E2FB8 0x800E23B8 - Peach  (IEEE32) (-20.0: 0xC1A00000)
.float -20.0 // 0x000E2FBC 0x800E23BC - Bowser (IEEE32) (-20.0: 0xC1A00000)

KartUnknown04:
              // ROM       RAM         Kart *Unknown*
.float -15.0 // 0x000E2FC0 0x800E23C0 - Mario  (IEEE32) (-15.0: 0xC1700000)
.float -15.0 // 0x000E2FC4 0x800E23C4 - Luigi  (IEEE32) (-15.0: 0xC1700000)
.float -15.0 // 0x000E2FC8 0x800E23C8 - Yoshi  (IEEE32) (-15.0: 0xC1700000)
.float -15.0 // 0x000E2FCC 0x800E23CC - Toad   (IEEE32) (-15.0: 0xC1700000)
.float -15.0 // 0x000E2FD0 0x800E23D0 - D.K.   (IEEE32) (-15.0: 0xC1700000)
.float -15.0 // 0x000E2FD4 0x800E23D4 - Wario  (IEEE32) (-15.0: 0xC1700000)
.float -15.0 // 0x000E2FD8 0x800E23D8 - Peach  (IEEE32) (-15.0: 0xC1700000)
.float -15.0 // 0x000E2FDC 0x800E23DC - Bowser (IEEE32) (-15.0: 0xC1700000)

KartUnknown05:
              // ROM       RAM         Kart *Unknown*
.float -30.0 // 0x000E2FE0 0x800E23E0 - Mario  (IEEE32) (-30.0: 0xC1F00000)
.float -30.0 // 0x000E2FE4 0x800E23E4 - Luigi  (IEEE32) (-30.0: 0xC1F00000)
.float -30.0 // 0x000E2FE8 0x800E23E8 - Yoshi  (IEEE32) (-30.0: 0xC1F00000)
.float -30.0 // 0x000E2FEC 0x800E23EC - Toad   (IEEE32) (-30.0: 0xC1F00000)
.float -30.0 // 0x000E2FF0 0x800E23F0 - D.K.   (IEEE32) (-30.0: 0xC1F00000)
.float -30.0 // 0x000E2FF4 0x800E23F4 - Wario  (IEEE32) (-30.0: 0xC1F00000)
.float -30.0 // 0x000E2FF8 0x800E23F8 - Peach  (IEEE32) (-30.0: 0xC1F00000)
.float -30.0 // 0x000E2FFC 0x800E23FC - Bowser (IEEE32) (-30.0: 0xC1F00000)

                 // ROM       RAM         Offsets To IEEE32 Tables Above
.dw KartUnknown01 // 0x000E3000 0x800E2400 - Kart *Unknown* (UINT32) (0x800E2360)
.dw KartUnknown02 // 0x000E3004 0x800E2404 - Kart *Unknown* (UINT32) (0x800E2380)
.dw KartUnknown03 // 0x000E3008 0x800E2408 - Kart *Unknown* (UINT32) (0x800E23A0)
.dw KartUnknown04 // 0x000E300C 0x800E240C - Kart *Unknown* (UINT32) (0x800E23C0)
.dw KartUnknown05 // 0x000E3010 0x800E2410 - Kart *Unknown* (UINT32) (0x800E23E0)


KartUnknown06:
             // ROM       RAM         Kart *Unknown*
.float 28.0 // 0x000E3014 0x800E2414 - Mario  (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E3018 0x800E2418 - Luigi  (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E301C 0x800E241C - Yoshi  (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E3020 0x800E2420 - Toad   (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E3024 0x800E2424 - D.K.   (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E3028 0x800E2428 - Wario  (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E302C 0x800E242C - Peach  (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E3030 0x800E2430 - Bowser (IEEE32) (28.0: 0x41E00000)

KartUnknown07:
             // ROM       RAM         Kart *Unknown*
.float 28.0 // 0x000E3034 0x800E2434 - Mario  (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E3038 0x800E2438 - Luigi  (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E303C 0x800E243C - Yoshi  (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E3040 0x800E2440 - Toad   (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E3044 0x800E2444 - D.K.   (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E3048 0x800E2448 - Wario  (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E304C 0x800E244C - Peach  (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E3050 0x800E2450 - Bowser (IEEE32) (28.0: 0x41E00000)

KartUnknown08:
             // ROM       RAM         Kart *Unknown*
.float 35.0 // 0x000E3054 0x800E2454 - Mario  (IEEE32) (35.0: 0x420C0000)
.float 35.0 // 0x000E3058 0x800E2458 - Luigi  (IEEE32) (35.0: 0x420C0000)
.float 35.0 // 0x000E305C 0x800E245C - Yoshi  (IEEE32) (35.0: 0x420C0000)
.float 35.0 // 0x000E3060 0x800E2460 - Toad   (IEEE32) (35.0: 0x420C0000)
.float 35.0 // 0x000E3064 0x800E2464 - D.K.   (IEEE32) (35.0: 0x420C0000)
.float 35.0 // 0x000E3068 0x800E2468 - Wario  (IEEE32) (35.0: 0x420C0000)
.float 35.0 // 0x000E306C 0x800E246C - Peach  (IEEE32) (35.0: 0x420C0000)
.float 35.0 // 0x000E3070 0x800E2470 - Bowser (IEEE32) (35.0: 0x420C0000)

KartUnknown09:
             // ROM       RAM         Kart *Unknown*
.float 28.0 // 0x000E3074 0x800E2474 - Mario  (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E3078 0x800E2478 - Luigi  (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E307C 0x800E247C - Yoshi  (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E3080 0x800E2480 - Toad   (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E3084 0x800E2484 - D.K.   (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E3088 0x800E2488 - Wario  (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E308C 0x800E248C - Peach  (IEEE32) (28.0: 0x41E00000)
.float 28.0 // 0x000E3090 0x800E2490 - Bowser (IEEE32) (28.0: 0x41E00000)

KartUnknown10:
             // ROM       RAM         Kart *Unknown*
.float 48.0 // 0x000E3094 0x800E2494 - Mario  (IEEE32) (48.0: 0x42400000)
.float 48.0 // 0x000E3098 0x800E2498 - Luigi  (IEEE32) (48.0: 0x42400000)
.float 48.0 // 0x000E309C 0x800E249C - Yoshi  (IEEE32) (48.0: 0x42400000)
.float 48.0 // 0x000E30A0 0x800E24A0 - Toad   (IEEE32) (48.0: 0x42400000)
.float 48.0 // 0x000E30A4 0x800E24A4 - D.K.   (IEEE32) (48.0: 0x42400000)
.float 48.0 // 0x000E30A8 0x800E24A8 - Wario  (IEEE32) (48.0: 0x42400000)
.float 48.0 // 0x000E30AC 0x800E24AC - Peach  (IEEE32) (48.0: 0x42400000)
.float 48.0 // 0x000E30B0 0x800E24B0 - Bowser (IEEE32) (48.0: 0x42400000)

                 // ROM       RAM         Offsets To IEEE32 Tables Above
.dw KartUnknown06 // 0x000E30B4 0x800E24B4 - Kart *Unknown* (UINT32) (0x800E2414)
.dw KartUnknown07 // 0x000E30B8 0x800E24B8 - Kart *Unknown* (UINT32) (0x800E2434)
.dw KartUnknown08 // 0x000E30BC 0x800E24BC - Kart *Unknown* (UINT32) (0x800E2454)
.dw KartUnknown09 // 0x000E30C0 0x800E24C0 - Kart *Unknown* (UINT32) (0x800E2474)
.dw KartUnknown10 // 0x000E30C4 0x800E24C4 - Kart *Unknown* (UINT32) (0x800E2494)


KartUnknown11:
               // ROM       RAM         Kart *Unknown*
.float 3364.0 // 0x000E30C8 0x800E24C8 - Mario  (IEEE32) (3364.0: 0x45524000)
.float 3364.0 // 0x000E30CC 0x800E24CC - Luigi  (IEEE32) (3364.0: 0x45524000)
.float 3457.0 // 0x000E30D0 0x800E24D0 - Yoshi  (IEEE32) (3457.0: 0x45581000)
.float 3457.0 // 0x000E30D4 0x800E24D4 - Toad   (IEEE32) (3457.0: 0x45581000)
.float 3364.0 // 0x000E30D8 0x800E24D8 - D.K.   (IEEE32) (3364.0: 0x45524000)
.float 3364.0 // 0x000E30DC 0x800E24DC - Wario  (IEEE32) (3364.0: 0x45524000)
.float 3457.0 // 0x000E30E0 0x800E24E0 - Peach  (IEEE32) (3457.0: 0x45581000)
.float 3364.0 // 0x000E30E4 0x800E24E4 - Bowser (IEEE32) (3364.0: 0x45524000)

KartUnknown12:
               // ROM       RAM         Kart *Unknown*
.float 3844.0 // 0x000E30E8 0x800E24E8 - Mario  (IEEE32) (3844.0: 0x45704000)
.float 3844.0 // 0x000E30EC 0x800E24EC - Luigi  (IEEE32) (3844.0: 0x45704000)
.float 3943.0 // 0x000E30F0 0x800E24F0 - Yoshi  (IEEE32) (3943.0: 0x45767000)
.float 3943.0 // 0x000E30F4 0x800E24F4 - Toad   (IEEE32) (3943.0: 0x45767000)
.float 3844.0 // 0x000E30F8 0x800E24F8 - D.K.   (IEEE32) (3844.0: 0x45704000)
.float 3844.0 // 0x000E30FC 0x800E24FC - Wario  (IEEE32) (3844.0: 0x45704000)
.float 3943.0 // 0x000E3100 0x800E2500 - Peach  (IEEE32) (3943.0: 0x45767000)
.float 3844.0 // 0x000E3104 0x800E2504 - Bowser (IEEE32) (3844.0: 0x45704000)

KartUnknown13:
               // ROM       RAM         Kart *Unknown*
.float 4096.0 // 0x000E3108 0x800E2508 - Mario  (IEEE32) (4096.0: 0x45800000)
.float 4096.0 // 0x000E310C 0x800E250C - Luigi  (IEEE32) (4096.0: 0x45800000)
.float 4199.0 // 0x000E3110 0x800E2510 - Yoshi  (IEEE32) (4199.0: 0x45833800)
.float 4199.0 // 0x000E3114 0x800E2514 - Toad   (IEEE32) (4199.0: 0x45833800)
.float 4096.0 // 0x000E3118 0x800E2518 - D.K.   (IEEE32) (4096.0: 0x45800000)
.float 4096.0 // 0x000E311C 0x800E251C - Wario  (IEEE32) (4096.0: 0x45800000)
.float 4199.0 // 0x000E3120 0x800E2520 - Peach  (IEEE32) (4199.0: 0x45833800)
.float 4096.0 // 0x000E3124 0x800E2524 - Bowser (IEEE32) (4096.0: 0x45800000)

KartUnknown14:
               // ROM       RAM         Kart *Unknown*
.float 3844.0 // 0x000E3128 0x800E2528 - Mario  (IEEE32) (3844.0: 0x45704000)
.float 3844.0 // 0x000E312C 0x800E252C - Luigi  (IEEE32) (3844.0: 0x45704000)
.float 3943.0 // 0x000E3130 0x800E2530 - Yoshi  (IEEE32) (3943.0: 0x45767000)
.float 3943.0 // 0x000E3134 0x800E2534 - Toad   (IEEE32) (3943.0: 0x45767000)
.float 3844.0 // 0x000E3138 0x800E2538 - D.K.   (IEEE32) (3844.0: 0x45704000)
.float 3844.0 // 0x000E313C 0x800E253C - Wario  (IEEE32) (3844.0: 0x45704000)
.float 3943.0 // 0x000E3140 0x800E2540 - Peach  (IEEE32) (3943.0: 0x45767000)
.float 3844.0 // 0x000E3144 0x800E2544 - Bowser (IEEE32) (3844.0: 0x45704000)

KartUnknown15:
               // ROM       RAM         Kart *Unknown*
.float 2401.0 // 0x000E3148 0x800E2548 - Mario  (IEEE32) (2401.0: 0x45161000)
.float 2401.0 // 0x000E314C 0x800E254C - Luigi  (IEEE32) (2401.0: 0x45161000)
.float 2401.0 // 0x000E3150 0x800E2550 - Yoshi  (IEEE32) (2401.0: 0x45161000)
.float 2401.0 // 0x000E3154 0x800E2554 - Toad   (IEEE32) (2401.0: 0x45161000)
.float 2401.0 // 0x000E3158 0x800E2558 - D.K.   (IEEE32) (2401.0: 0x45161000)
.float 2401.0 // 0x000E315C 0x800E255C - Wario  (IEEE32) (2401.0: 0x45161000)
.float 2401.0 // 0x000E3160 0x800E2560 - Peach  (IEEE32) (2401.0: 0x45161000)
.float 2401.0 // 0x000E3164 0x800E2564 - Bowser (IEEE32) (2401.0: 0x45161000)

                 // ROM       RAM         Offsets To IEEE32 Tables Above
.dw KartUnknown11 // 0x000E3168 0x800E2568 - Kart *Unknown* (UINT32) (0x800E24C8)
.dw KartUnknown12 // 0x000E316C 0x800E256C - Kart *Unknown* (UINT32) (0x800E24E8)
.dw KartUnknown13 // 0x000E3170 0x800E2570 - Kart *Unknown* (UINT32) (0x800E2508)
.dw KartUnknown14 // 0x000E3174 0x800E2574 - Kart *Unknown* (UINT32) (0x800E2528)
.dw KartUnknown15 // 0x000E3178 0x800E2578 - Kart *Unknown* (UINT32) (0x800E2548)


KartSpeed50cc:
              // ROM       RAM         50cc Kart Speed
.float 482.0 // 0x000E317C 0x800E257C - Mario  (IEEE32) (290.0: 0x43910000)
.float 482.0 // 0x000E3180 0x800E2580 - Luigi  (IEEE32) (290.0: 0x43910000)
.float 486.0 // 0x000E3184 0x800E2584 - Yoshi  (IEEE32) (294.0: 0x43930000)
.float 486.0 // 0x000E3188 0x800E2588 - Toad   (IEEE32) (294.0: 0x43930000)
.float 482.0 // 0x000E318C 0x800E258C - D.K.   (IEEE32) (290.0: 0x43910000)
.float 482.0 // 0x000E3190 0x800E2590 - Wario  (IEEE32) (290.0: 0x43910000)
.float 486.0 // 0x000E3194 0x800E2594 - Peach  (IEEE32) (294.0: 0x43930000)
.float 482.0 // 0x000E3198 0x800E2598 - Bowser (IEEE32) (290.0: 0x43910000)

KartSpeed100cc:
              // ROM       RAM         100cc / Time Trial Kart Speed
.float 502.0 // 0x000E319C 0x800E259C - Mario  (IEEE32) (310.0: 0x439B0000)
.float 502.0 // 0x000E31A0 0x800E25A0 - Luigi  (IEEE32) (310.0: 0x439B0000)
.float 506.0 // 0x000E31A4 0x800E25A4 - Yoshi  (IEEE32) (314.0: 0x439D0000)
.float 506.0 // 0x000E31A8 0x800E25A8 - Toad   (IEEE32) (314.0: 0x439D0000)
.float 502.0 // 0x000E31AC 0x800E25AC - D.K.   (IEEE32) (310.0: 0x439B0000)
.float 502.0 // 0x000E31B0 0x800E25B0 - Wario  (IEEE32) (310.0: 0x439B0000)
.float 506.0 // 0x000E31B4 0x800E25B4 - Peach  (IEEE32) (314.0: 0x439D0000)
.float 502.0 // 0x000E31B8 0x800E25B8 - Bowser (IEEE32) (310.0: 0x439B0000)

KartSpeed150cc:
              // ROM       RAM         150cc Kart Speed
.float 506.0 // 0x000E31BC 0x800E25BC - Mario  (IEEE32) (320.0: 0x43A00000)
.float 506.0 // 0x000E31C0 0x800E25C0 - Luigi  (IEEE32) (320.0: 0x43A00000)
.float 510.0 // 0x000E31C4 0x800E25C4 - Yoshi  (IEEE32) (324.0: 0x43A20000)
.float 510.0 // 0x000E31C8 0x800E25C8 - Toad   (IEEE32) (324.0: 0x43A20000)
.float 506.0 // 0x000E31CC 0x800E25CC - D.K.   (IEEE32) (320.0: 0x43A00000)
.float 506.0 // 0x000E31D0 0x800E25D0 - Wario  (IEEE32) (320.0: 0x43A00000)
.float 510.0 // 0x000E31D4 0x800E25D4 - Peach  (IEEE32) (324.0: 0x43A20000)
.float 506.0 // 0x000E31D8 0x800E25D8 - Bowser (IEEE32) (320.0: 0x43A00000)

KartSpeedExtra:
              // ROM       RAM         Extra Kart Speed
.float 502.0 // 0x000E31DC 0x800E25DC - Mario  (IEEE32) (310.0: 0x439B0000)
.float 502.0 // 0x000E31E0 0x800E25E0 - Luigi  (IEEE32) (310.0: 0x439B0000)
.float 506.0 // 0x000E31E4 0x800E25E4 - Yoshi  (IEEE32) (314.0: 0x439D0000)
.float 506.0 // 0x000E31E8 0x800E25E8 - Toad   (IEEE32) (314.0: 0x439D0000)
.float 502.0 // 0x000E31EC 0x800E25EC - D.K.   (IEEE32) (310.0: 0x439B0000)
.float 502.0 // 0x000E31F0 0x800E25F0 - Wario  (IEEE32) (310.0: 0x439B0000)
.float 506.0 // 0x000E31F4 0x800E25F4 - Peach  (IEEE32) (314.0: 0x439D0000)
.float 502.0 // 0x000E31F8 0x800E25F8 - Bowser (IEEE32) (310.0: 0x439B0000)

KartSpeedBattle:
              // ROM       RAM         Battle Kart Speed
.float 490.0 // 0x000E31FC 0x800E25FC - Mario  (IEEE32) (245.0: 0x43750000)
.float 490.0 // 0x000E3200 0x800E2600 - Luigi  (IEEE32) (245.0: 0x43750000)
.float 490.0 // 0x000E3204 0x800E2604 - Yoshi  (IEEE32) (245.0: 0x43750000)
.float 490.0 // 0x000E3208 0x800E2608 - Toad   (IEEE32) (245.0: 0x43750000)
.float 490.0 // 0x000E320C 0x800E260C - D.K.   (IEEE32) (245.0: 0x43750000)
.float 490.0 // 0x000E3210 0x800E2610 - Wario  (IEEE32) (245.0: 0x43750000)
.float 490.0 // 0x000E3214 0x800E2614 - Peach  (IEEE32) (245.0: 0x43750000)
.float 490.0 // 0x000E3218 0x800E2618 - Bowser (IEEE32) (245.0: 0x43750000)

                   // ROM       RAM         Offsets To IEEE32 Tables Above
.dw KartSpeed50cc   // 0x000E321C 0x800E261C -   50cc Kart Speed (UINT32) (0x800E257C)
.dw KartSpeed100cc  // 0x000E3220 0x800E2620 -  100cc Kart Speed (UINT32) (0x800E259C)
.dw KartSpeed150cc  // 0x000E3224 0x800E2624 -  150cc Kart Speed (UINT32) (0x800E25BC)
.dw KartSpeedExtra  // 0x000E3228 0x800E2628 -  Extra Kart Speed (UINT32) (0x800E25DC)
.dw KartSpeedBattle // 0x000E322C 0x800E262C - Battle Kart Speed (UINT32) (0x800E25FC)


KartFriction:
               // ROM       RAM         Kart Friction
.float 5800.0 // 0x000E3230 0x800E2630 - Mario  (IEEE32) (5800.0: 0x45B54000)
.float 5800.0 // 0x000E3234 0x800E2634 - Luigi  (IEEE32) (5800.0: 0x45B54000)
.float 5800.0 // 0x000E3238 0x800E2638 - Yoshi  (IEEE32) (5800.0: 0x45B54000)
.float 5800.0 // 0x000E323C 0x800E263C - Toad   (IEEE32) (5800.0: 0x45B54000)
.float 5800.0 // 0x000E3240 0x800E2640 - D.K.   (IEEE32) (5800.0: 0x45B54000)
.float 5800.0 // 0x000E3244 0x800E2644 - Wario  (IEEE32) (5800.0: 0x45B54000)
.float 5800.0 // 0x000E3248 0x800E2648 - Peach  (IEEE32) (5800.0: 0x45B54000)
.float 5800.0 // 0x000E324C 0x800E264C - Bowser (IEEE32) (5800.0: 0x45B54000)

KartGravity:
               // ROM       RAM         Kart Gravity
.float 2600.0 // 0x000E3250 0x800E2650 - Mario  (IEEE32) (2600.0: 0x45228000)
.float 2600.0 // 0x000E3254 0x800E2654 - Luigi  (IEEE32) (2600.0: 0x45228000)
.float 2600.0 // 0x000E3258 0x800E2658 - Yoshi  (IEEE32) (2600.0: 0x45228000)
.float 2600.0 // 0x000E325C 0x800E265C - Toad   (IEEE32) (2600.0: 0x45228000)
.float 2600.0 // 0x000E3260 0x800E2660 - D.K.   (IEEE32) (2600.0: 0x45228000)
.float 2600.0 // 0x000E3264 0x800E2664 - Wario  (IEEE32) (2600.0: 0x45228000)
.float 2600.0 // 0x000E3268 0x800E2668 - Peach  (IEEE32) (2600.0: 0x45228000)
.float 2600.0 // 0x000E326C 0x800E266C - Bowser (IEEE32) (2600.0: 0x45228000)

KartUnknown16:
             // ROM       RAM         Kart *Unknown*
.float 0.12 // 0x000E3270 0x800E2670 - Mario  (IEEE32) (0.12: 0x3DF5C28F)
.float 0.12 // 0x000E3274 0x800E2674 - Luigi  (IEEE32) (0.12: 0x3DF5C28F)
.float 0.12 // 0x000E3278 0x800E2678 - Yoshi  (IEEE32) (0.12: 0x3DF5C28F)
.float 0.12 // 0x000E327C 0x800E267C - Toad   (IEEE32) (0.12: 0x3DF5C28F)
.float 0.12 // 0x000E3280 0x800E2680 - D.K.   (IEEE32) (0.12: 0x3DF5C28F)
.float 0.12 // 0x000E3284 0x800E2684 - Wario  (IEEE32) (0.12: 0x3DF5C28F)
.float 0.12 // 0x000E3288 0x800E2688 - Peach  (IEEE32) (0.12: 0x3DF5C28F)
.float 0.12 // 0x000E328C 0x800E268C - Bowser (IEEE32) (0.12: 0x3DF5C28F)

KartTopSpeed:
            // ROM       RAM         Kart Top Speed
.float 9.0 // 0x000E3290 0x800E2690 - Mario  (IEEE32) (9.0: 0x41100000)
.float 9.0 // 0x000E3294 0x800E2694 - Luigi  (IEEE32) (9.0: 0x41100000)
.float 9.0 // 0x000E3298 0x800E2698 - Yoshi  (IEEE32) (9.0: 0x41100000)
.float 9.0 // 0x000E329C 0x800E269C - Toad   (IEEE32) (9.0: 0x41100000)
.float 9.0 // 0x000E32A0 0x800E26A0 - D.K.   (IEEE32) (9.0: 0x41100000)
.float 9.0 // 0x000E32A4 0x800E26A4 - Wario  (IEEE32) (9.0: 0x41100000)
.float 9.0 // 0x000E32A8 0x800E26A8 - Peach  (IEEE32) (9.0: 0x41100000)
.float 9.0 // 0x000E32AC 0x800E26AC - Bowser (IEEE32) (9.0: 0x41100000)

KartBoundingBox:
            // ROM       RAM         Kart Bounding Box Size (Also Affects Camera Angle)
.float 5.5 // 0x000E32B0 0x800E26B0 - Mario  (IEEE32) (5.5: 0x40B00000)
.float 5.5 // 0x000E32B4 0x800E26B4 - Luigi  (IEEE32) (5.5: 0x40B00000)
.float 5.5 // 0x000E32B8 0x800E26B8 - Yoshi  (IEEE32) (5.5: 0x40B00000)
.float 5.5 // 0x000E32BC 0x800E26BC - Toad   (IEEE32) (5.5: 0x40B00000)
.float 5.5 // 0x000E32C0 0x800E26C0 - D.K.   (IEEE32) (5.5: 0x40B00000)
.float 6.0 // 0x000E32C4 0x800E26C4 - Wario  (IEEE32) (6.0: 0x40C00000)
.float 5.5 // 0x000E32C8 0x800E26C8 - Peach  (IEEE32) (5.5: 0x40B00000)
.float 6.0 // 0x000E32CC 0x800E26CC - Bowser (IEEE32) (6.0: 0x40C00000)


KartUnknown17: // Mario
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E32D0 0x800E26D0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E32D4 0x800E26D4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E32D8 0x800E26D8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E32DC 0x800E26DC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E32E0 0x800E26E0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E32E4 0x800E26E4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E32E8 0x800E26E8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E32EC 0x800E26EC - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.38 // 0x000E32F0 0x800E26F0 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E32F4 0x800E26F4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E32F8 0x800E26F8 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.1  // 0x000E32FC 0x800E26FC - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.0  // 0x000E3300 0x800E2700 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E3304 0x800E2704 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E3308 0x800E2708 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)

KartUnknown18: // Luigi
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E330C 0x800E270C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3310 0x800E2710 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3314 0x800E2714 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3318 0x800E2718 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E331C 0x800E271C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3320 0x800E2720 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3324 0x800E2724 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E3328 0x800E2728 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.38 // 0x000E332C 0x800E272C - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E3330 0x800E2730 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E3334 0x800E2734 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.1  // 0x000E3338 0x800E2738 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.0  // 0x000E333C 0x800E273C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E3340 0x800E2740 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E3344 0x800E2744 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)

KartUnknown19: // Yoshi
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3348 0x800E2748 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E334C 0x800E274C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3350 0x800E2750 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3354 0x800E2754 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3358 0x800E2758 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E335C 0x800E275C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3360 0x800E2760 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E3364 0x800E2764 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.38 // 0x000E3368 0x800E2768 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E336C 0x800E276C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E3370 0x800E2770 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.1  // 0x000E3374 0x800E2774 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.0  // 0x000E3378 0x800E2778 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E337C 0x800E277C - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E3380 0x800E2780 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)

KartUnknown20: // Toad
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3384 0x800E2784 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3388 0x800E2788 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E338C 0x800E278C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3390 0x800E2790 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3394 0x800E2794 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3398 0x800E2798 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E339C 0x800E279C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E33A0 0x800E27A0 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.38 // 0x000E33A4 0x800E27A4 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E33A8 0x800E27A8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E33AC 0x800E27AC - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.1  // 0x000E33B0 0x800E27B0 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.0  // 0x000E33B4 0x800E27B4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E33B8 0x800E27B8 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E33BC 0x800E27BC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)

KartUnknown21: // D.K.
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E33C0 0x800E27C0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E33C4 0x800E27C4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E33C8 0x800E27C8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E33CC 0x800E27CC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E33D0 0x800E27D0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E33D4 0x800E27D4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E33D8 0x800E27D8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E33DC 0x800E27DC - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.38 // 0x000E33E0 0x800E27E0 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E33E4 0x800E27E4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E33E8 0x800E27E8 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.1  // 0x000E33EC 0x800E27EC - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.0  // 0x000E33F0 0x800E27F0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E33F4 0x800E27F4 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E33F8 0x800E27F8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)

KartUnknown22: // Wario
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E33FC 0x800E27FC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3400 0x800E2800 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3404 0x800E2804 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3408 0x800E2808 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E340C 0x800E280C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3410 0x800E2810 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3414 0x800E2814 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E3418 0x800E2818 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.38 // 0x000E341C 0x800E281C - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E3420 0x800E2820 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E3424 0x800E2824 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.1  // 0x000E3428 0x800E2828 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.0  // 0x000E342C 0x800E282C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E3430 0x800E2830 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E3434 0x800E2834 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)

KartUnknown23: // Peach
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3438 0x800E2838 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E343C 0x800E283C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3440 0x800E2840 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3444 0x800E2844 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3448 0x800E2848 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E344C 0x800E284C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3450 0x800E2850 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E3454 0x800E2854 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.38 // 0x000E3458 0x800E2858 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E345C 0x800E285C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E3460 0x800E2860 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.1  // 0x000E3464 0x800E2864 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.0  // 0x000E3468 0x800E2868 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E346C 0x800E286C - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E3470 0x800E2870 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)

KartUnknown24: // Bowser
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3474 0x800E2874 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3478 0x800E2878 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E347C 0x800E287C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3480 0x800E2880 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3484 0x800E2884 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3488 0x800E2888 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E348C 0x800E288C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E3490 0x800E2890 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.38 // 0x000E3494 0x800E2894 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E3498 0x800E2898 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E349C 0x800E289C - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.1  // 0x000E34A0 0x800E28A0 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.0  // 0x000E34A4 0x800E28A4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.38 // 0x000E34A8 0x800E28A8 - Kart *Unknown* (IEEE32) (0.38: 0x3EC28F5C)
.float 0.0  // 0x000E34AC 0x800E28AC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)


KartUnknown25: // Mario
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E34B0 0x800E28B0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E34B4 0x800E28B4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E34B8 0x800E28B8 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.3  // 0x000E34BC 0x800E28BC - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E34C0 0x800E28C0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E34C4 0x800E28C4 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E34C8 0x800E28C8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E34CC 0x800E28CC - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.58 // 0x000E34D0 0x800E28D0 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E34D4 0x800E28D4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E34D8 0x800E28D8 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.28 // 0x000E34DC 0x800E28DC - Kart *Unknown* (IEEE32) (0.28: 0x3E8F5C29)
.float 0.0  // 0x000E34E0 0x800E28E0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E34E4 0x800E28E4 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E34E8 0x800E28E8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)

KartUnknown26: // Luigi
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E34EC 0x800E28EC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E34F0 0x800E28F0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E34F4 0x800E28F4 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.3  // 0x000E34F8 0x800E28F8 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E35FC 0x800E28FC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E3500 0x800E2900 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E3504 0x800E2904 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E3508 0x800E2908 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.58 // 0x000E350C 0x800E290C - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E3510 0x800E2910 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E3514 0x800E2914 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.28 // 0x000E3518 0x800E2918 - Kart *Unknown* (IEEE32) (0.28: 0x3E8F5C29)
.float 0.0  // 0x000E351C 0x800E291C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E3520 0x800E2920 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E3524 0x800E2924 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)

KartUnknown27: // Yoshi
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3528 0x800E2928 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E352C 0x800E292C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E3530 0x800E2930 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.3  // 0x000E3534 0x800E2934 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E3538 0x800E2938 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E353C 0x800E293C - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E3540 0x800E2940 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E3544 0x800E2944 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.58 // 0x000E3548 0x800E2948 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E354C 0x800E294C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E3550 0x800E2950 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.28 // 0x000E3554 0x800E2954 - Kart *Unknown* (IEEE32) (0.28: 0x3E8F5C29)
.float 0.0  // 0x000E3558 0x800E2958 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E355C 0x800E295C - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E3560 0x800E2960 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)

KartUnknown28: // Toad
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3564 0x800E2964 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3568 0x800E2968 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E356C 0x800E296C - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.3  // 0x000E3570 0x800E2970 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E3574 0x800E2974 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E3578 0x800E2978 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E357C 0x800E297C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E3580 0x800E2980 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.58 // 0x000E3584 0x800E2984 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E3588 0x800E2988 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E358C 0x800E298C - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.28 // 0x000E3590 0x800E2990 - Kart *Unknown* (IEEE32) (0.28: 0x3E8F5C29)
.float 0.0  // 0x000E3594 0x800E2994 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E3598 0x800E2998 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E359C 0x800E299C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)

KartUnknown29: // D.K.
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E35A0 0x800E29A0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E35A4 0x800E29A4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E35A8 0x800E29A8 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.3  // 0x000E35AC 0x800E29AC - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E35B0 0x800E29B0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E35B4 0x800E29B4 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E35B8 0x800E29B8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E35BC 0x800E29BC - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.58 // 0x000E35C0 0x800E29C0 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E35C4 0x800E29C4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E35C8 0x800E29C8 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.28 // 0x000E35CC 0x800E29CC - Kart *Unknown* (IEEE32) (0.28: 0x3E8F5C29)
.float 0.0  // 0x000E35D0 0x800E29D0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E35D4 0x800E29D4 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E35D8 0x800E29D8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)

KartUnknown30: // Wario
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E35DC 0x800E29DC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E35E0 0x800E29E0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E35E4 0x800E29E4 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.3  // 0x000E35E8 0x800E29E8 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E35EC 0x800E29EC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E35F0 0x800E29F0 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E35F4 0x800E29F4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E35F8 0x800E29F8 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.58 // 0x000E35FC 0x800E29FC - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E3600 0x800E2A00 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E3604 0x800E2A04 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.28 // 0x000E3608 0x800E2A08 - Kart *Unknown* (IEEE32) (0.28: 0x3E8F5C29)
.float 0.0  // 0x000E360C 0x800E2A0C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E3610 0x800E2A10 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E3614 0x800E2A14 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)

KartUnknown31: // Peach
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3618 0x800E2A18 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E361C 0x800E2A1C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E3620 0x800E2A20 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.3  // 0x000E3624 0x800E2A24 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E3628 0x800E2A28 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E362C 0x800E2A2C - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E3630 0x800E2A30 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E3634 0x800E2A34 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.58 // 0x000E3638 0x800E2A38 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E363C 0x800E2A3C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E3640 0x800E2A40 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.28 // 0x000E3644 0x800E2A44 - Kart *Unknown* (IEEE32) (0.28: 0x3E8F5C29)
.float 0.0  // 0x000E3648 0x800E2A48 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E364C 0x800E2A4C - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E3650 0x800E2A50 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)

KartUnknown32: // Bowser
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3654 0x800E2A54 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3658 0x800E2A58 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E365C 0x800E2A5C - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.3  // 0x000E3660 0x800E2A60 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E3664 0x800E2A64 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.3  // 0x000E3668 0x800E2A68 - Kart *Unknown* (IEEE32) (0.3:  0x3E99999A)
.float 0.0  // 0x000E366C 0x800E2A6C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E3670 0x800E2A70 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.58 // 0x000E3674 0x800E2A74 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E3678 0x800E2A78 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E367C 0x800E2A7C - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.28 // 0x000E3680 0x800E2A80 - Kart *Unknown* (IEEE32) (0.28: 0x3E8F5C29)
.float 0.0  // 0x000E3684 0x800E2A84 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.58 // 0x000E3688 0x800E2A88 - Kart *Unknown* (IEEE32) (0.58: 0x3F147AE1)
.float 0.0  // 0x000E368C 0x800E2A8C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)

                 // ROM       RAM         Offsets To IEEE32 Tables Above
.dw KartUnknown25 // 0x000E3690 0x800E2A90 - Kart *Unknown* Mario  (UINT32) (0x800E28B0)
.dw KartUnknown26 // 0x000E3694 0x800E2A94 - Kart *Unknown* Luigi  (UINT32) (0x800E28EC)
.dw KartUnknown27 // 0x000E3698 0x800E2A98 - Kart *Unknown* Yoshi  (UINT32) (0x800E2928)
.dw KartUnknown28 // 0x000E369C 0x800E2A9C - Kart *Unknown* Toad   (UINT32) (0x800E2964)
.dw KartUnknown29 // 0x000E36A0 0x800E2AA0 - Kart *Unknown* D.K.   (UINT32) (0x800E29A0)
.dw KartUnknown30 // 0x000E36A4 0x800E2AA4 - Kart *Unknown* Wario  (UINT32) (0x800E29DC)
.dw KartUnknown31 // 0x000E36A8 0x800E2AA8 - Kart *Unknown* Peach  (UINT32) (0x800E2A18)
.dw KartUnknown32 // 0x000E36AC 0x800E2AAC - Kart *Unknown* Bowser (UINT32) (0x800E2A54)

                 // ROM       RAM         Offsets To IEEE32 Tables Above
.dw KartUnknown17 // 0x000E36B0 0x800E2AB0 - Kart *Unknown* Mario  (UINT32) (0x800E26D0)
.dw KartUnknown18 // 0x000E36B4 0x800E2AB4 - Kart *Unknown* Luigi  (UINT32) (0x800E270C)
.dw KartUnknown19 // 0x000E36B8 0x800E2AB8 - Kart *Unknown* Yoshi  (UINT32) (0x800E2748)
.dw KartUnknown20 // 0x000E36BC 0x800E2ABC - Kart *Unknown* Toad   (UINT32) (0x800E2784)
.dw KartUnknown21 // 0x000E36C0 0x800E2AC0 - Kart *Unknown* D.K.   (UINT32) (0x800E27C0)
.dw KartUnknown22 // 0x000E36C4 0x800E2AC4 - Kart *Unknown* Wario  (UINT32) (0x800E27FC)
.dw KartUnknown23 // 0x000E36C8 0x800E2AC8 - Kart *Unknown* Peach  (UINT32) (0x800E2838)
.dw KartUnknown24 // 0x000E36CC 0x800E2ACC - Kart *Unknown* Bowser (UINT32) (0x800E2874)


KartUnknown33: // Mario
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E36D0 0x800E2AD0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E36D4 0x800E2AD4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E36D8 0x800E2AD8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E36DC 0x800E2ADC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E36E0 0x800E2AE0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E36E4 0x800E2AE4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E36E8 0x800E2AE8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.03 // 0x000E36EC 0x800E2AEC - Kart *Unknown* (IEEE32) (0.03: 0x3CF5C28F)
.float 0.03 // 0x000E36F0 0x800E2AF0 - Kart *Unknown* (IEEE32) (0.03: 0x3CF5C28F)
.float 0.0  // 0x000E36F4 0x800E2AF4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E36F8 0x800E2AF8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.03 // 0x000E36FC 0x800E2AFC - Kart *Unknown* (IEEE32) (0.03: 0x3CF5C28F)
.float 0.0  // 0x000E3700 0x800E2B00 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.03 // 0x000E3704 0x800E2B04 - Kart *Unknown* (IEEE32) (0.03: 0x3CF5C28F)
.float 0.03 // 0x000E3708 0x800E2B08 - Kart *Unknown* (IEEE32) (0.03: 0x3CF5C28F)

KartUnknown34: // Luigi
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E370C 0x800E2B0C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3710 0x800E2B10 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3714 0x800E2B14 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3718 0x800E2B18 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E371C 0x800E2B1C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3720 0x800E2B20 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3724 0x800E2B24 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.03 // 0x000E3728 0x800E2B28 - Kart *Unknown* (IEEE32) (0.03: 0x3CF5C28F)
.float 0.03 // 0x000E372C 0x800E2B2C - Kart *Unknown* (IEEE32) (0.03: 0x3CF5C28F)
.float 0.0  // 0x000E3730 0x800E2B30 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3734 0x800E2B34 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.03 // 0x000E3738 0x800E2B38 - Kart *Unknown* (IEEE32) (0.03: 0x3CF5C28F)
.float 0.0  // 0x000E373C 0x800E2B3C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.03 // 0x000E3740 0x800E2B40 - Kart *Unknown* (IEEE32) (0.03: 0x3CF5C28F)
.float 0.03 // 0x000E3744 0x800E2B44 - Kart *Unknown* (IEEE32) (0.03: 0x3CF5C28F)

KartUnknown35: // Yoshi
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3748 0x800E2B48 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E374C 0x800E2B4C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3750 0x800E2B50 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3754 0x800E2B54 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3758 0x800E2B58 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E375C 0x800E2B5C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3760 0x800E2B60 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.02 // 0x000E3764 0x800E2B64 - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)
.float 0.02 // 0x000E3768 0x800E2B68 - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)
.float 0.0  // 0x000E376C 0x800E2B6C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3770 0x800E2B70 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.02 // 0x000E3774 0x800E2B74 - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)
.float 0.0  // 0x000E3778 0x800E2B78 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.02 // 0x000E377C 0x800E2B7C - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)
.float 0.02 // 0x000E3780 0x800E2B80 - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)

KartUnknown36: // Toad
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3784 0x800E2B84 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3788 0x800E2B88 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E378C 0x800E2B8C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3790 0x800E2B90 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3794 0x800E2B94 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3798 0x800E2B98 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E379C 0x800E2B9C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.02 // 0x000E37A0 0x800E2BA0 - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)
.float 0.02 // 0x000E37A4 0x800E2BA4 - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)
.float 0.0  // 0x000E37A8 0x800E2BA8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E37AC 0x800E2BAC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.02 // 0x000E37B0 0x800E2BB0 - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)
.float 0.0  // 0x000E37B4 0x800E2BB4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.02 // 0x000E37B8 0x800E2BB8 - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)
.float 0.02 // 0x000E37BC 0x800E2BBC - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)

KartUnknown37: // D.K.
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E37C0 0x800E2BC0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E37C4 0x800E2BC4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E37C8 0x800E2BC8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E37CC 0x800E2BCC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E37D0 0x800E2BD0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E37D4 0x800E2BD4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E37D8 0x800E2BD8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.04 // 0x000E37DC 0x800E2BDC - Kart *Unknown* (IEEE32) (0.02: 0x3D23D70A)
.float 0.04 // 0x000E37E0 0x800E2BE0 - Kart *Unknown* (IEEE32) (0.02: 0x3D23D70A)
.float 0.0  // 0x000E37E4 0x800E2BE4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E37E8 0x800E2BE8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.04 // 0x000E37EC 0x800E2BEC - Kart *Unknown* (IEEE32) (0.02: 0x3D23D70A)
.float 0.0  // 0x000E37F0 0x800E2BF0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.04 // 0x000E37F4 0x800E2BF4 - Kart *Unknown* (IEEE32) (0.02: 0x3D23D70A)
.float 0.04 // 0x000E37F8 0x800E2BF8 - Kart *Unknown* (IEEE32) (0.02: 0x3D23D70A)

KartUnknown38: // Wario
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E37FC 0x800E2BFC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3800 0x800E2C00 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3804 0x800E2C04 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3808 0x800E2C08 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E380C 0x800E2C0C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3810 0x800E2C10 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3814 0x800E2C14 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.04 // 0x000E3818 0x800E2C18 - Kart *Unknown* (IEEE32) (0.02: 0x3D23D70A)
.float 0.04 // 0x000E381C 0x800E2C1C - Kart *Unknown* (IEEE32) (0.02: 0x3D23D70A)
.float 0.0  // 0x000E3820 0x800E2C20 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3824 0x800E2C24 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.04 // 0x000E3828 0x800E2C28 - Kart *Unknown* (IEEE32) (0.02: 0x3D23D70A)
.float 0.0  // 0x000E382C 0x800E2C2C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.04 // 0x000E3830 0x800E2C30 - Kart *Unknown* (IEEE32) (0.02: 0x3D23D70A)
.float 0.04 // 0x000E3834 0x800E2C34 - Kart *Unknown* (IEEE32) (0.02: 0x3D23D70A)

KartUnknown39: // Peach
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3838 0x800E2C38 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E383C 0x800E2C3C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3840 0x800E2C40 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3844 0x800E2C44 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3848 0x800E2C48 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E384C 0x800E2C4C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3850 0x800E2C50 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.02 // 0x000E3854 0x800E2C54 - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)
.float 0.02 // 0x000E3858 0x800E2C58 - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)
.float 0.0  // 0x000E385C 0x800E2C5C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3860 0x800E2C60 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.02 // 0x000E3864 0x800E2C64 - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)
.float 0.0  // 0x000E3868 0x800E2C68 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.02 // 0x000E386C 0x800E2C6C - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)
.float 0.02 // 0x000E3870 0x800E2C70 - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)

KartUnknown40: // Bowser
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3874 0x800E2C74 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3878 0x800E2C78 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E387C 0x800E2C7C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3880 0x800E2C80 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3884 0x800E2C84 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3888 0x800E2C88 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E388C 0x800E2C8C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.04 // 0x000E3890 0x800E2C90 - Kart *Unknown* (IEEE32) (0.02: 0x3D23D70A)
.float 0.04 // 0x000E3894 0x800E2C94 - Kart *Unknown* (IEEE32) (0.02: 0x3D23D70A)
.float 0.0  // 0x000E3898 0x800E2C98 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E389C 0x800E2C9C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.04 // 0x000E38A0 0x800E2CA0 - Kart *Unknown* (IEEE32) (0.02: 0x3D23D70A)
.float 0.0  // 0x000E38A4 0x800E2CA4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.04 // 0x000E38A8 0x800E2CA8 - Kart *Unknown* (IEEE32) (0.02: 0x3D23D70A)
.float 0.04 // 0x000E38AC 0x800E2CAC - Kart *Unknown* (IEEE32) (0.02: 0x3D23D70A)


KartUnknown41: // Mario
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E38B0 0x800E2CB0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E38B4 0x800E2CB4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E38B8 0x800E2CB8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.03 // 0x000E38BC 0x800E2CBC - Kart *Unknown* (IEEE32) (0.03: 0x3CF5C28F)
.float 0.0  // 0x000E38C0 0x800E2CC0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E38C4 0x800E2CC4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E38C8 0x800E2CC8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.09 // 0x000E38CC 0x800E2CCC - Kart *Unknown* (IEEE32) (0.09: 0x3DB851EC)
.float 0.09 // 0x000E38D0 0x800E2CD0 - Kart *Unknown* (IEEE32) (0.09: 0x3DB851EC)
.float 0.0  // 0x000E38D4 0x800E2CD4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E38D8 0x800E2CD8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.09 // 0x000E38DC 0x800E2CDC - Kart *Unknown* (IEEE32) (0.09: 0x3DB851EC)
.float 0.0  // 0x000E38E0 0x800E2CE0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.09 // 0x000E38E4 0x800E2CE4 - Kart *Unknown* (IEEE32) (0.09: 0x3DB851EC)
.float 0.09 // 0x000E38E8 0x800E2CE8 - Kart *Unknown* (IEEE32) (0.09: 0x3DB851EC)

KartUnknown42: // Luigi
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E38EC 0x800E2CEC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E38F0 0x800E2CF0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E38F4 0x800E2CF4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.03 // 0x000E38F8 0x800E2CF8 - Kart *Unknown* (IEEE32) (0.03: 0x3CF5C28F)
.float 0.0  // 0x000E38FC 0x800E2CFC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3900 0x800E2D00 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3904 0x800E2D04 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.09 // 0x000E3908 0x800E2D08 - Kart *Unknown* (IEEE32) (0.09: 0x3DB851EC)
.float 0.09 // 0x000E390C 0x800E2D0C - Kart *Unknown* (IEEE32) (0.09: 0x3DB851EC)
.float 0.0  // 0x000E3910 0x800E2D10 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3914 0x800E2D14 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.09 // 0x000E3918 0x800E2D18 - Kart *Unknown* (IEEE32) (0.09: 0x3DB851EC)
.float 0.0  // 0x000E391C 0x800E2D1C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.09 // 0x000E3920 0x800E2D20 - Kart *Unknown* (IEEE32) (0.09: 0x3DB851EC)
.float 0.09 // 0x000E3924 0x800E2D24 - Kart *Unknown* (IEEE32) (0.09: 0x3DB851EC)

KartUnknown43: // Yoshi
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3928 0x800E2D28 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E392C 0x800E2D2C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3930 0x800E2D30 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.02 // 0x000E3934 0x800E2D34 - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)
.float 0.0  // 0x000E3938 0x800E2D38 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E393C 0x800E2D3C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3940 0x800E2D40 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.08 // 0x000E3944 0x800E2D44 - Kart *Unknown* (IEEE32) (0.08: 0x3DA3D70A)
.float 0.08 // 0x000E3948 0x800E2D48 - Kart *Unknown* (IEEE32) (0.08: 0x3DA3D70A)
.float 0.0  // 0x000E394C 0x800E2D4C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3950 0x800E2D50 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.08 // 0x000E3954 0x800E2D54 - Kart *Unknown* (IEEE32) (0.08: 0x3DA3D70A)
.float 0.0  // 0x000E3958 0x800E2D58 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.08 // 0x000E395C 0x800E2D5C - Kart *Unknown* (IEEE32) (0.08: 0x3DA3D70A)
.float 0.08 // 0x000E3960 0x800E2D60 - Kart *Unknown* (IEEE32) (0.08: 0x3DA3D70A)

KartUnknown44: // Toad
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3964 0x800E2D64 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3968 0x800E2D68 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E396C 0x800E2D6C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.02 // 0x000E3970 0x800E2D70 - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)
.float 0.0  // 0x000E3974 0x800E2D74 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3978 0x800E2D78 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E397C 0x800E2D7C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.08 // 0x000E3980 0x800E2D80 - Kart *Unknown* (IEEE32) (0.08: 0x3DA3D70A)
.float 0.08 // 0x000E3984 0x800E2D84 - Kart *Unknown* (IEEE32) (0.08: 0x3DA3D70A)
.float 0.0  // 0x000E3988 0x800E2D88 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E398C 0x800E2D8C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.08 // 0x000E3990 0x800E2D90 - Kart *Unknown* (IEEE32) (0.08: 0x3DA3D70A)
.float 0.0  // 0x000E3994 0x800E2D94 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.08 // 0x000E3998 0x800E2D98 - Kart *Unknown* (IEEE32) (0.08: 0x3DA3D70A)
.float 0.08 // 0x000E399C 0x800E2D9C - Kart *Unknown* (IEEE32) (0.08: 0x3DA3D70A)

KartUnknown45: // D.K.
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E39A0 0x800E2DA0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E39A4 0x800E2DA4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E39A8 0x800E2DA8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.04 // 0x000E39AC 0x800E2DAC - Kart *Unknown* (IEEE32) (0.04: 0x3D23D70A)
.float 0.0  // 0x000E39B0 0x800E2DB0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E39B4 0x800E2DB4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E39B8 0x800E2DB8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.1  // 0x000E39BC 0x800E2DBC - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.1  // 0x000E39C0 0x800E2DC0 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.0  // 0x000E39C4 0x800E2DC4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E39C8 0x800E2DC8 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.1  // 0x000E39CC 0x800E2DCC - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.0  // 0x000E39D0 0x800E2DD0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.1  // 0x000E39D4 0x800E2DD4 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.1  // 0x000E39D8 0x800E2DD8 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)

KartUnknown46: // Wario
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E39DC 0x800E2DDC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E39E0 0x800E2DE0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E39E4 0x800E2DE4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.04 // 0x000E39E8 0x800E2DE8 - Kart *Unknown* (IEEE32) (0.04: 0x3D23D70A)
.float 0.0  // 0x000E39EC 0x800E2DEC - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E39F0 0x800E2DF0 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E39F4 0x800E2DF4 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.1  // 0x000E39F8 0x800E2DF8 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.1  // 0x000E39FC 0x800E2DFC - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.0  // 0x000E3A00 0x800E2E00 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3A04 0x800E2E04 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.1  // 0x000E3A08 0x800E2E08 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.0  // 0x000E3A0C 0x800E2E0C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.1  // 0x000E3A10 0x800E2E10 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.1  // 0x000E3A14 0x800E2E14 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)

KartUnknown47: // Peach
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3A18 0x800E2E18 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3A1C 0x800E2E1C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3A20 0x800E2E20 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.02 // 0x000E3A24 0x800E2E24 - Kart *Unknown* (IEEE32) (0.02: 0x3CA3D70A)
.float 0.0  // 0x000E3A28 0x800E2E28 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3A2C 0x800E2E2C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3A30 0x800E2E30 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.08 // 0x000E3A34 0x800E2E34 - Kart *Unknown* (IEEE32) (0.08: 0x3DA3D70A)
.float 0.08 // 0x000E3A38 0x800E2E38 - Kart *Unknown* (IEEE32) (0.08: 0x3DA3D70A)
.float 0.0  // 0x000E3A3C 0x800E2E3C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3A40 0x800E2E40 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.08 // 0x000E3A44 0x800E2E44 - Kart *Unknown* (IEEE32) (0.08: 0x3DA3D70A)
.float 0.0  // 0x000E3A48 0x800E2E48 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.08 // 0x000E3A4C 0x800E2E4C - Kart *Unknown* (IEEE32) (0.08: 0x3DA3D70A)
.float 0.08 // 0x000E3A50 0x800E2E50 - Kart *Unknown* (IEEE32) (0.08: 0x3DA3D70A)

KartUnknown48: // Bowser
             // ROM       RAM         Kart *Unknown*
.float 0.0  // 0x000E3A54 0x800E2E54 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3A58 0x800E2E58 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3A5C 0x800E2E5C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.04 // 0x000E3A60 0x800E2E60 - Kart *Unknown* (IEEE32) (0.04: 0x3D23D70A)
.float 0.0  // 0x000E3A64 0x800E2E64 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3A68 0x800E2E68 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3A6C 0x800E2E6C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.1  // 0x000E3A70 0x800E2E70 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.1  // 0x000E3A74 0x800E2E74 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.0  // 0x000E3A78 0x800E2E78 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.0  // 0x000E3A7C 0x800E2E7C - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.1  // 0x000E3A80 0x800E2E80 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.0  // 0x000E3A84 0x800E2E84 - Kart *Unknown* (IEEE32) (0.0:  0x00000000)
.float 0.1  // 0x000E3A88 0x800E2E88 - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)
.float 0.1  // 0x000E3A8C 0x800E2E8C - Kart *Unknown* (IEEE32) (0.1:  0x3DCCCCCD)

                 // ROM       RAM         Offsets To IEEE32 Tables Above
.dw KartUnknown41 // 0x000E3A90 0x800E2E90 - Kart *Unknown* Mario  (UINT32) (0x800E2CB0)
.dw KartUnknown42 // 0x000E3A94 0x800E2E94 - Kart *Unknown* Luigi  (UINT32) (0x800E2CEC)
.dw KartUnknown43 // 0x000E3A98 0x800E2E98 - Kart *Unknown* Yoshi  (UINT32) (0x800E2D28)
.dw KartUnknown44 // 0x000E3A9C 0x800E2E9C - Kart *Unknown* Toad   (UINT32) (0x800E2D64)
.dw KartUnknown45 // 0x000E3AA0 0x800E2EA0 - Kart *Unknown* D.K.   (UINT32) (0x800E2DA0)
.dw KartUnknown46 // 0x000E3AA4 0x800E2EA4 - Kart *Unknown* Wario  (UINT32) (0x800E2DDC)
.dw KartUnknown47 // 0x000E3AA8 0x800E2EA8 - Kart *Unknown* Peach  (UINT32) (0x800E2E18)
.dw KartUnknown48 // 0x000E3AAC 0x800E2EAC - Kart *Unknown* Bowser (UINT32) (0x800E2E54)

                 // ROM       RAM         Offsets To IEEE32 Tables Above
.dw KartUnknown33 // 0x000E3AB0 0x800E2EB0 - Kart *Unknown* Mario  (UINT32) (0x800E2AD0)
.dw KartUnknown34 // 0x000E3AB4 0x800E2EB4 - Kart *Unknown* Luigi  (UINT32) (0x800E2B0C)
.dw KartUnknown35 // 0x000E3AB8 0x800E2EB8 - Kart *Unknown* Yoshi  (UINT32) (0x800E2B48)
.dw KartUnknown36 // 0x000E3ABC 0x800E2EBC - Kart *Unknown* Toad   (UINT32) (0x800E2B84)
.dw KartUnknown37 // 0x000E3AC0 0x800E2EC0 - Kart *Unknown* D.K.   (UINT32) (0x800E2BC0)
.dw KartUnknown38 // 0x000E3AC4 0x800E2EC4 - Kart *Unknown* Wario  (UINT32) (0x800E2BFC)
.dw KartUnknown39 // 0x000E3AC8 0x800E2EC8 - Kart *Unknown* Peach  (UINT32) (0x800E2C38)
.dw KartUnknown40 // 0x000E3ACC 0x800E2ECC - Kart *Unknown* Bowser (UINT32) (0x800E2C74)


KartAccelerationMario:
            // ROM       RAM         Kart Acceleration Mario
.float 2.0 // 0x000E3AD0 0x800E2ED0 - Kart Acceleration Mario (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E3AD4 0x800E2ED4 - Kart Acceleration Mario (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E3AD8 0x800E2ED8 - Kart Acceleration Mario (IEEE32) (2.0: 0x40000000)
.float 1.6 // 0x000E3ADC 0x800E2EDC - Kart Acceleration Mario (IEEE32) (1.6: 0x3FCCCCCD)
.float 1.4 // 0x000E3AE0 0x800E2EE0 - Kart Acceleration Mario (IEEE32) (1.4: 0x3FB33333)
.float 1.2 // 0x000E3AE4 0x800E2EE4 - Kart Acceleration Mario (IEEE32) (1.2: 0x3F99999A)
.float 1.0 // 0x000E3AE8 0x800E2EE8 - Kart Acceleration Mario (IEEE32) (1.0: 0x3F800000)
.float 0.8 // 0x000E3AEC 0x800E2EEC - Kart Acceleration Mario (IEEE32) (0.8: 0x3F4CCCCD)
.float 0.6 // 0x000E3AF0 0x800E2EF0 - Kart Acceleration Mario (IEEE32) (0.6: 0x3F19999A)
.float 0.4 // 0x000E3AF4 0x800E2EF4 - Kart Acceleration Mario (IEEE32) (0.4: 0x3ECCCCCD)

KartAccelerationLuigi:
            // ROM       RAM         Kart Acceleration Luigi
.float 2.0 // 0x000E3AF8 0x800E2EF8 - Kart Acceleration Luigi (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E3AFC 0x800E2EFC - Kart Acceleration Luigi (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E3B00 0x800E2F00 - Kart Acceleration Luigi (IEEE32) (2.0: 0x40000000)
.float 1.6 // 0x000E3B04 0x800E2F04 - Kart Acceleration Luigi (IEEE32) (1.6: 0x3FCCCCCD)
.float 1.4 // 0x000E3B08 0x800E2F08 - Kart Acceleration Luigi (IEEE32) (1.4: 0x3FB33333)
.float 1.2 // 0x000E3B0C 0x800E2F0C - Kart Acceleration Luigi (IEEE32) (1.2: 0x3F99999A)
.float 1.0 // 0x000E3B10 0x800E2F10 - Kart Acceleration Luigi (IEEE32) (1.0: 0x3F800000)
.float 0.8 // 0x000E3B14 0x800E2F14 - Kart Acceleration Luigi (IEEE32) (0.8: 0x3F4CCCCD)
.float 0.6 // 0x000E3B18 0x800E2F18 - Kart Acceleration Luigi (IEEE32) (0.6: 0x3F19999A)
.float 0.4 // 0x000E3B1C 0x800E2F1C - Kart Acceleration Luigi (IEEE32) (0.4: 0x3ECCCCCD)

KartAccelerationYoshi:
            // ROM       RAM         Kart Acceleration Yoshi
.float 2.0 // 0x000E3B20 0x800E2F20 - Kart Acceleration Yoshi (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E3B24 0x800E2F24 - Kart Acceleration Yoshi (IEEE32) (2.0: 0x40000000)
.float 2.5 // 0x000E3B28 0x800E2F28 - Kart Acceleration Yoshi (IEEE32) (2.5: 0x40200000)
.float 2.6 // 0x000E3B2C 0x800E2F2C - Kart Acceleration Yoshi (IEEE32) (2.6: 0x40266666)
.float 2.6 // 0x000E3B30 0x800E2F30 - Kart Acceleration Yoshi (IEEE32) (2.6: 0x40266666)
.float 2.0 // 0x000E3B34 0x800E2F34 - Kart Acceleration Yoshi (IEEE32) (2.0: 0x40000000)
.float 1.5 // 0x000E3B38 0x800E2F38 - Kart Acceleration Yoshi (IEEE32) (1.5: 0x3FC00000)
.float 0.8 // 0x000E3B3C 0x800E2F3C - Kart Acceleration Yoshi (IEEE32) (0.8: 0x3F4CCCCD)
.float 0.8 // 0x000E3B40 0x800E2F40 - Kart Acceleration Yoshi (IEEE32) (0.8: 0x3F4CCCCD)
.float 0.8 // 0x000E3B44 0x800E2F44 - Kart Acceleration Yoshi (IEEE32) (0.8: 0x3F4CCCCD)

KartAccelerationToad:
            // ROM       RAM         Kart Acceleration Toad
.float 2.0 // 0x000E3B48 0x800E2F48 - Kart Acceleration Toad (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E3B4C 0x800E2F4C - Kart Acceleration Toad (IEEE32) (2.0: 0x40000000)
.float 2.5 // 0x000E3B50 0x800E2F50 - Kart Acceleration Toad (IEEE32) (2.5: 0x40200000)
.float 2.6 // 0x000E3B54 0x800E2F54 - Kart Acceleration Toad (IEEE32) (2.6: 0x40266666)
.float 2.6 // 0x000E3B58 0x800E2F58 - Kart Acceleration Toad (IEEE32) (2.6: 0x40266666)
.float 2.0 // 0x000E3B5C 0x800E2F5C - Kart Acceleration Toad (IEEE32) (2.0: 0x40000000)
.float 1.5 // 0x000E3B60 0x800E2F60 - Kart Acceleration Toad (IEEE32) (1.5: 0x3FC00000)
.float 0.8 // 0x000E3B64 0x800E2F64 - Kart Acceleration Toad (IEEE32) (0.8: 0x3F4CCCCD)
.float 0.8 // 0x000E3B68 0x800E2F68 - Kart Acceleration Toad (IEEE32) (0.8: 0x3F4CCCCD)
.float 0.8 // 0x000E3B6C 0x800E2F6C - Kart Acceleration Toad (IEEE32) (0.8: 0x3F4CCCCD)

KartAccelerationDK:
            // ROM       RAM         Kart Acceleration D.K.
.float 2.0 // 0x000E3B70 0x800E2F70 - Kart Acceleration D.K. (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E3B74 0x800E2F74 - Kart Acceleration D.K. (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E3B78 0x800E2F78 - Kart Acceleration D.K. (IEEE32) (2.0: 0x40000000)
.float 1.6 // 0x000E3B7C 0x800E2F7C - Kart Acceleration D.K. (IEEE32) (1.6: 0x3FCCCCCD)
.float 1.0 // 0x000E3B80 0x800E2F80 - Kart Acceleration D.K. (IEEE32) (1.0: 0x3F800000)
.float 1.0 // 0x000E3B84 0x800E2F84 - Kart Acceleration D.K. (IEEE32) (1.0: 0x3F800000)
.float 1.0 // 0x000E3B88 0x800E2F88 - Kart Acceleration D.K. (IEEE32) (1.0: 0x3F800000)
.float 1.8 // 0x000E3B8C 0x800E2F8C - Kart Acceleration D.K. (IEEE32) (1.8: 0x3FE66666)
.float 1.8 // 0x000E3B90 0x800E2F90 - Kart Acceleration D.K. (IEEE32) (1.8: 0x3FE66666)
.float 1.2 // 0x000E3B94 0x800E2F94 - Kart Acceleration D.K. (IEEE32) (1.2: 0x3F99999A)

KartAccelerationWario:
            // ROM       RAM         Kart Acceleration Wario
.float 2.0 // 0x000E3B98 0x800E2F98 - Kart Acceleration Wario (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E3B9C 0x800E2F9C - Kart Acceleration Wario (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E3BA0 0x800E2FA0 - Kart Acceleration Wario (IEEE32) (2.0: 0x40000000)
.float 1.6 // 0x000E3BA4 0x800E2FA4 - Kart Acceleration Wario (IEEE32) (1.6: 0x3FCCCCCD)
.float 1.0 // 0x000E3BA8 0x800E2FA8 - Kart Acceleration Wario (IEEE32) (1.0: 0x3F800000)
.float 1.0 // 0x000E3BAC 0x800E2FAC - Kart Acceleration Wario (IEEE32) (1.0: 0x3F800000)
.float 1.0 // 0x000E3BB0 0x800E2FB0 - Kart Acceleration Wario (IEEE32) (1.0: 0x3F800000)
.float 1.8 // 0x000E3BB4 0x800E2FB4 - Kart Acceleration Wario (IEEE32) (1.8: 0x3FE66666)
.float 1.8 // 0x000E3BB8 0x800E2FB8 - Kart Acceleration Wario (IEEE32) (1.8: 0x3FE66666)
.float 1.2 // 0x000E3BBC 0x800E2FBC - Kart Acceleration Wario (IEEE32) (1.2: 0x3F99999A)

KartAccelerationPeach:
            // ROM       RAM         Kart Acceleration Peach
.float 2.0 // 0x000E3BC0 0x800E2FC0 - Kart Acceleration Peach (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E3BC4 0x800E2FC4 - Kart Acceleration Peach (IEEE32) (2.0: 0x40000000)
.float 2.5 // 0x000E3BC8 0x800E2FC8 - Kart Acceleration Peach (IEEE32) (2.5: 0x40200000)
.float 2.6 // 0x000E3BCC 0x800E2FCC - Kart Acceleration Peach (IEEE32) (2.6: 0x40266666)
.float 2.6 // 0x000E3BD0 0x800E2FD0 - Kart Acceleration Peach (IEEE32) (2.6: 0x40266666)
.float 2.0 // 0x000E3BD4 0x800E2FD4 - Kart Acceleration Peach (IEEE32) (2.0: 0x40000000)
.float 1.5 // 0x000E3BD8 0x800E2FD8 - Kart Acceleration Peach (IEEE32) (1.5: 0x3FC00000)
.float 0.8 // 0x000E3BDC 0x800E2FDC - Kart Acceleration Peach (IEEE32) (0.8: 0x3F4CCCCD)
.float 0.8 // 0x000E3BE0 0x800E2FE0 - Kart Acceleration Peach (IEEE32) (0.8: 0x3F4CCCCD)
.float 0.8 // 0x000E3BE4 0x800E2FE4 - Kart Acceleration Peach (IEEE32) (0.8: 0x3F4CCCCD)

KartAccelerationBowser:
            // ROM       RAM         Kart Acceleration Bowser
.float 2.0 // 0x000E3BE8 0x800E2FE8 - Kart Acceleration Bowser (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E3BEC 0x800E2FEC - Kart Acceleration Bowser (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E3BF0 0x800E2FF0 - Kart Acceleration Bowser (IEEE32) (2.0: 0x40000000)
.float 1.6 // 0x000E3BF4 0x800E2FF4 - Kart Acceleration Bowser (IEEE32) (1.6: 0x3FCCCCCD)
.float 1.0 // 0x000E3BF8 0x800E2FF8 - Kart Acceleration Bowser (IEEE32) (1.0: 0x3F800000)
.float 1.0 // 0x000E3BFC 0x800E2FFC - Kart Acceleration Bowser (IEEE32) (1.0: 0x3F800000)
.float 1.0 // 0x000E3C00 0x800E3000 - Kart Acceleration Bowser (IEEE32) (1.0: 0x3F800000)
.float 1.8 // 0x000E3C04 0x800E3004 - Kart Acceleration Bowser (IEEE32) (1.8: 0x3FE66666)
.float 1.8 // 0x000E3C08 0x800E3008 - Kart Acceleration Bowser (IEEE32) (1.8: 0x3FE66666)
.float 1.2 // 0x000E3C0C 0x800E300C - Kart Acceleration Bowser (IEEE32) (1.2: 0x3F99999A)

                          // ROM       RAM         Offsets To IEEE32 Acceleration Tables Above
.dw KartAccelerationMario  // 0x000E3C10 0x800E3010 - Kart Acceleration Mario  (UINT32) (0x800E2ED0)
.dw KartAccelerationLuigi  // 0x000E3C14 0x800E3014 - Kart Acceleration Luigi  (UINT32) (0x800E2EF8)
.dw KartAccelerationYoshi  // 0x000E3C18 0x800E3018 - Kart Acceleration Yoshi  (UINT32) (0x800E2F20)
.dw KartAccelerationToad   // 0x000E3C1C 0x800E301C - Kart Acceleration Toad   (UINT32) (0x800E2F48)
.dw KartAccelerationDK     // 0x000E3C20 0x800E3020 - Kart Acceleration D.K.   (UINT32) (0x800E2F70)
.dw KartAccelerationWario  // 0x000E3C24 0x800E3024 - Kart Acceleration Wario  (UINT32) (0x800E2F98)
.dw KartAccelerationPeach  // 0x000E3C28 0x800E3028 - Kart Acceleration Peach  (UINT32) (0x800E2FC0)
.dw KartAccelerationBowser // 0x000E3C2C 0x800E302C - Kart Acceleration Bowser (UINT32) (0x800E2FE8)


KartUnknown49: // Mario
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3C30 0x800E3030 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3C34 0x800E3034 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.2 // 0x000E3C38 0x800E3038 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3C3C 0x800E303C - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3C40 0x800E3040 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.4 // 0x000E3C44 0x800E3044 - Kart *Unknown* (IEEE32) (0.4: 0x3ECCCCCD)
.float 0.1 // 0x000E3C48 0x800E3048 - Kart *Unknown* (IEEE32) (0.1: 0x3DCCCCCD)
.float 0.2 // 0x000E3C4C 0x800E304C - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3C50 0x800E3050 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3C54 0x800E3054 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3C58 0x800E3058 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3C5C 0x800E305C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3C60 0x800E3060 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3C64 0x800E3064 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3C68 0x800E3068 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown50: // Luigi
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3C6C 0x800E306C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3C70 0x800E3070 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.2 // 0x000E3C74 0x800E3074 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3C78 0x800E3078 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3C7C 0x800E307C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.4 // 0x000E3C80 0x800E3080 - Kart *Unknown* (IEEE32) (0.4: 0x3ECCCCCD)
.float 0.1 // 0x000E3C84 0x800E3084 - Kart *Unknown* (IEEE32) (0.1: 0x3DCCCCCD)
.float 0.2 // 0x000E3C88 0x800E3088 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3C8C 0x800E308C - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3C90 0x800E3090 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3C94 0x800E3094 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3C98 0x800E3098 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3C9C 0x800E309C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3CA0 0x800E30A0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3CA4 0x800E30A4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown51: // Yoshi
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3CA8 0x800E30A8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3CAC 0x800E30AC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.2 // 0x000E3CB0 0x800E30B0 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3CB4 0x800E30B4 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3CB8 0x800E30B8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.4 // 0x000E3CBC 0x800E30BC - Kart *Unknown* (IEEE32) (0.4: 0x3ECCCCCD)
.float 0.1 // 0x000E3CC0 0x800E30C0 - Kart *Unknown* (IEEE32) (0.1: 0x3DCCCCCD)
.float 0.2 // 0x000E3CC4 0x800E30C4 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3CC8 0x800E30C8 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3CCC 0x800E30CC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3CD0 0x800E30D0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3CD4 0x800E30D4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3CD8 0x800E30D8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3CDC 0x800E30DC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3CE0 0x800E30E0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown52: // Toad
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3CE4 0x800E30E4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3CE8 0x800E30E8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.2 // 0x000E3CEC 0x800E30EC - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3CF0 0x800E30F0 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3CF4 0x800E30F4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.4 // 0x000E3CF8 0x800E30F8 - Kart *Unknown* (IEEE32) (0.4: 0x3ECCCCCD)
.float 0.1 // 0x000E3CFC 0x800E30FC - Kart *Unknown* (IEEE32) (0.1: 0x3DCCCCCD)
.float 0.2 // 0x000E3D00 0x800E3100 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3D04 0x800E3104 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3D08 0x800E3108 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D0C 0x800E310C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D10 0x800E3110 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D14 0x800E3114 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D18 0x800E3118 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D1C 0x800E311C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown53: // D.K.
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3D20 0x800E3120 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D24 0x800E3124 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.2 // 0x000E3D28 0x800E3128 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3D2C 0x800E312C - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3D30 0x800E3130 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.4 // 0x000E3D34 0x800E3134 - Kart *Unknown* (IEEE32) (0.4: 0x3ECCCCCD)
.float 0.1 // 0x000E3D38 0x800E3138 - Kart *Unknown* (IEEE32) (0.1: 0x3DCCCCCD)
.float 0.2 // 0x000E3D3C 0x800E313C - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3D40 0x800E3140 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3D44 0x800E3144 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D48 0x800E3148 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D4C 0x800E314C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D50 0x800E3150 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D54 0x800E3154 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D58 0x800E3158 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown54: // Wario
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3D5C 0x800E315C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D60 0x800E3160 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.2 // 0x000E3D64 0x800E3164 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3D68 0x800E3168 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3D6C 0x800E316C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.4 // 0x000E3D70 0x800E3170 - Kart *Unknown* (IEEE32) (0.4: 0x3ECCCCCD)
.float 0.1 // 0x000E3D74 0x800E3174 - Kart *Unknown* (IEEE32) (0.1: 0x3DCCCCCD)
.float 0.2 // 0x000E3D78 0x800E3178 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3D7C 0x800E317C - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3D80 0x800E3180 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D84 0x800E3184 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D88 0x800E3188 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D8C 0x800E318C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D90 0x800E3190 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D94 0x800E3194 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown55: // Peach
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3D98 0x800E3198 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3D9C 0x800E319C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.2 // 0x000E3DA0 0x800E31A0 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3DA4 0x800E31A4 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3DA8 0x800E31A8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.4 // 0x000E3DAC 0x800E31AC - Kart *Unknown* (IEEE32) (0.4: 0x3ECCCCCD)
.float 0.1 // 0x000E3DB0 0x800E31B0 - Kart *Unknown* (IEEE32) (0.1: 0x3DCCCCCD)
.float 0.2 // 0x000E3DB4 0x800E31B4 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3DB8 0x800E31B8 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3DBC 0x800E31BC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3DC0 0x800E31C0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3DC4 0x800E31C4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3DC8 0x800E31C8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3DCC 0x800E31CC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3DD0 0x800E31D0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown56: // Bowser
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3DD4 0x800E31D4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3DD8 0x800E31D8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.2 // 0x000E3DDC 0x800E31DC - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3DE0 0x800E31E0 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3DE4 0x800E31E4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.4 // 0x000E3DE8 0x800E31E8 - Kart *Unknown* (IEEE32) (0.4: 0x3ECCCCCD)
.float 0.1 // 0x000E3DEC 0x800E31EC - Kart *Unknown* (IEEE32) (0.1: 0x3DCCCCCD)
.float 0.2 // 0x000E3DF0 0x800E31F0 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.2 // 0x000E3DF4 0x800E31F4 - Kart *Unknown* (IEEE32) (0.2: 0x3E4CCCCD)
.float 0.0 // 0x000E3DF8 0x800E31F8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3DFC 0x800E31FC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E00 0x800E3200 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E04 0x800E3204 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E08 0x800E3208 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E0C 0x800E320C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

                 // ROM       RAM         Offsets To IEEE32 Tables Above
.dw KartUnknown49 // 0x000E3E10 0x800E3210 - Kart *Unknown* Mario  (UINT32) (0x800E3030)
.dw KartUnknown50 // 0x000E3E14 0x800E3214 - Kart *Unknown* Luigi  (UINT32) (0x800E306C)
.dw KartUnknown51 // 0x000E3E18 0x800E3218 - Kart *Unknown* Yoshi  (UINT32) (0x800E30A8)
.dw KartUnknown52 // 0x000E3E1C 0x800E321C - Kart *Unknown* Toad   (UINT32) (0x800E30E4)
.dw KartUnknown53 // 0x000E3E20 0x800E3220 - Kart *Unknown* D.K.   (UINT32) (0x800E3120)
.dw KartUnknown54 // 0x000E3E24 0x800E3224 - Kart *Unknown* Wario  (UINT32) (0x800E315C)
.dw KartUnknown55 // 0x000E3E28 0x800E3228 - Kart *Unknown* Peach  (UINT32) (0x800E3198)
.dw KartUnknown56 // 0x000E3E2C 0x800E322C - Kart *Unknown* Bowser (UINT32) (0x800E31D4)


KartUnknown57: // Mario
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3E30 0x800E3230 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E34 0x800E3234 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E38 0x800E3238 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E3C 0x800E323C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E40 0x800E3240 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E44 0x800E3244 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E48 0x800E3248 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E4C 0x800E324C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E50 0x800E3250 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E54 0x800E3254 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E58 0x800E3258 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E5C 0x800E325C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E60 0x800E3260 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E64 0x800E3264 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E68 0x800E3268 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown58: // Luigi
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3E6C 0x800E326C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E70 0x800E3270 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E74 0x800E3274 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E78 0x800E3278 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E7C 0x800E327C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E80 0x800E3280 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E84 0x800E3284 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E88 0x800E3288 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E8C 0x800E328C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E90 0x800E3290 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E94 0x800E3294 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E98 0x800E3298 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3E9C 0x800E329C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EA0 0x800E32A0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EA4 0x800E32A4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown59: // Yoshi
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3EA8 0x800E32A8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EAC 0x800E32AC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EB0 0x800E32B0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EB4 0x800E32B4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EB8 0x800E32B8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EBC 0x800E32BC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EC0 0x800E32C0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EC4 0x800E32C4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EC8 0x800E32C8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3ECC 0x800E32CC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3ED0 0x800E32D0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3ED4 0x800E32D4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3ED8 0x800E32D8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EDC 0x800E32DC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EE0 0x800E32E0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown60: // Toad
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3EE4 0x800E32E4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EE8 0x800E32E8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EEC 0x800E32EC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EF0 0x800E32F0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EF4 0x800E32F4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EF8 0x800E32F8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3EFC 0x800E32FC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F00 0x800E3300 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F04 0x800E3304 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F08 0x800E3308 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F0C 0x800E330C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F10 0x800E3310 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F14 0x800E3314 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F18 0x800E3318 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F1C 0x800E331C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown61: // D.K.
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3F20 0x800E3320 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F24 0x800E3324 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F28 0x800E3328 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F2C 0x800E332C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F30 0x800E3330 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F34 0x800E3334 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F38 0x800E3338 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F3C 0x800E333C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F40 0x800E3340 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F44 0x800E3344 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F48 0x800E3348 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F4C 0x800E334C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F50 0x800E3350 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F54 0x800E3354 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F58 0x800E3358 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown62: // Wario
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3F5C 0x800E335C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F60 0x800E3360 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F64 0x800E3364 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F68 0x800E3368 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F6C 0x800E336C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F70 0x800E3370 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F74 0x800E3374 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F78 0x800E3378 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F7C 0x800E337C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F80 0x800E3380 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F84 0x800E3384 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F88 0x800E3388 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F8C 0x800E338C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F90 0x800E3390 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F94 0x800E3394 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown63: // Peach
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3F98 0x800E3398 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3F9C 0x800E339C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FA0 0x800E33A0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FA4 0x800E33A4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FA8 0x800E33A8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FAC 0x800E33AC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FB0 0x800E33B0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FB4 0x800E33B4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FB8 0x800E33B8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FBC 0x800E33BC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FC0 0x800E33C0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FC4 0x800E33C4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FC8 0x800E33C8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FCC 0x800E33CC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FD0 0x800E33D0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown64: // Bowser
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E3FD4 0x800E33D4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FD8 0x800E33D8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FDC 0x800E33DC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FE0 0x800E33E0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FE4 0x800E33E4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FE8 0x800E33E8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FEC 0x800E33EC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FF0 0x800E33F0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FF4 0x800E33F4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FF8 0x800E33F8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E3FFC 0x800E33FC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4000 0x800E3400 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4004 0x800E3404 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4008 0x800E3408 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E400C 0x800E340C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

                 // ROM       RAM         Offsets To IEEE32 Tables Above
.dw KartUnknown57 // 0x000E4010 0x800E3410 - Kart *Unknown* Mario  (UINT32) (0x800E3230)
.dw KartUnknown58 // 0x000E4014 0x800E3414 - Kart *Unknown* Luigi  (UINT32) (0x800E326C)
.dw KartUnknown59 // 0x000E4018 0x800E3418 - Kart *Unknown* Yoshi  (UINT32) (0x800E32A8)
.dw KartUnknown60 // 0x000E401C 0x800E341C - Kart *Unknown* Toad   (UINT32) (0x800E32E4)
.dw KartUnknown61 // 0x000E4020 0x800E3420 - Kart *Unknown* D.K.   (UINT32) (0x800E3320)
.dw KartUnknown62 // 0x000E4024 0x800E3424 - Kart *Unknown* Wario  (UINT32) (0x800E335C)
.dw KartUnknown63 // 0x000E4028 0x800E3428 - Kart *Unknown* Peach  (UINT32) (0x800E3398)
.dw KartUnknown64 // 0x000E402C 0x800E342C - Kart *Unknown* Bowser (UINT32) (0x800E33D4)


KartUnknown65: // Mario
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E4030 0x800E3430 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4034 0x800E3434 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4038 0x800E3438 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E403C 0x800E343C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4040 0x800E3440 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4044 0x800E3444 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4048 0x800E3448 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E404C 0x800E344C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4050 0x800E3450 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4054 0x800E3454 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4058 0x800E3458 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E405C 0x800E345C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4060 0x800E3460 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4064 0x800E3464 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4068 0x800E3468 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown66: // Luigi
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E406C 0x800E346C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4070 0x800E3470 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4074 0x800E3474 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4078 0x800E3478 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E407C 0x800E347C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4080 0x800E3480 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4084 0x800E3484 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4088 0x800E3488 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E408C 0x800E348C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4090 0x800E3490 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4094 0x800E3494 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4098 0x800E3498 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E409C 0x800E349C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40A0 0x800E34A0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40A4 0x800E34A4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown67: // Yoshi
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E40A8 0x800E34A8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40AC 0x800E34AC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40B0 0x800E34B0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40B4 0x800E34B4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40B8 0x800E34B8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40BC 0x800E34BC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40C0 0x800E34C0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40C4 0x800E34C4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40C8 0x800E34C8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40CC 0x800E34CC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40D0 0x800E34D0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40D4 0x800E34D4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40D8 0x800E34D8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40DC 0x800E34DC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40E0 0x800E34E0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown68: // Toad
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E40E4 0x800E34E4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40E8 0x800E34E8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40EC 0x800E34EC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40F0 0x800E34F0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40F4 0x800E34F4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40F8 0x800E34F8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E40FC 0x800E34FC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4100 0x800E3500 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4104 0x800E3504 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4108 0x800E3508 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E410C 0x800E350C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4110 0x800E3510 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4114 0x800E3514 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4118 0x800E3518 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E411C 0x800E351C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown69: // D.K.
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E4120 0x800E3520 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4124 0x800E3524 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4128 0x800E3528 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E412C 0x800E352C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4130 0x800E3530 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4134 0x800E3534 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4138 0x800E3538 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E413C 0x800E353C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4140 0x800E3540 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4144 0x800E3544 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4148 0x800E3548 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E414C 0x800E354C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4150 0x800E3550 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4154 0x800E3554 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4158 0x800E3558 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown70: // Wario
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E415C 0x800E355C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4160 0x800E3560 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4164 0x800E3564 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4168 0x800E3568 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E416C 0x800E356C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4170 0x800E3570 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4174 0x800E3574 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4178 0x800E3578 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E417C 0x800E357C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4180 0x800E3580 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4184 0x800E3584 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4188 0x800E3588 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E418C 0x800E358C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4190 0x800E3590 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4194 0x800E3594 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown71: // Peach
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E4198 0x800E3598 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E419C 0x800E359C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41A0 0x800E35A0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41A4 0x800E35A4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41A8 0x800E35A8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41AC 0x800E35AC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41B0 0x800E35B0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41B4 0x800E35B4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41B8 0x800E35B8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41BC 0x800E35BC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41C0 0x800E35C0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41C4 0x800E35C4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41C8 0x800E35C8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41CC 0x800E35CC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41D0 0x800E35D0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

KartUnknown72: // Bowser
            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E41D4 0x800E35D4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41D8 0x800E35D8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41DC 0x800E35DC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41E0 0x800E35E0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41E4 0x800E35E4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41E8 0x800E35E8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41EC 0x800E35EC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41F0 0x800E35F0 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41F4 0x800E35F4 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41F8 0x800E35F8 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E41FC 0x800E35FC - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4200 0x800E3600 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4204 0x800E3604 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4208 0x800E3608 - Kart *Unknown* (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E420C 0x800E360C - Kart *Unknown* (IEEE32) (0.0: 0x00000000)

                 // ROM       RAM         Offsets To IEEE32 Tables Above
.dw KartUnknown65 // 0x000E4210 0x800E3610 - Kart *Unknown* Mario  (UINT32) (0x800E3230)
.dw KartUnknown66 // 0x000E4214 0x800E3614 - Kart *Unknown* Luigi  (UINT32) (0x800E326C)
.dw KartUnknown67 // 0x000E4218 0x800E3618 - Kart *Unknown* Yoshi  (UINT32) (0x800E32A8)
.dw KartUnknown68 // 0x000E421C 0x800E361C - Kart *Unknown* Toad   (UINT32) (0x800E32E4)
.dw KartUnknown69 // 0x000E4220 0x800E3620 - Kart *Unknown* D.K.   (UINT32) (0x800E3320)
.dw KartUnknown70 // 0x000E4224 0x800E3624 - Kart *Unknown* Wario  (UINT32) (0x800E335C)
.dw KartUnknown71 // 0x000E4228 0x800E3628 - Kart *Unknown* Peach  (UINT32) (0x800E3398)
.dw KartUnknown72 // 0x000E422C 0x800E362C - Kart *Unknown* Bowser (UINT32) (0x800E33D4)


             // ROM       RAM         Kart Handling (Turn Angle)
.float 1.25 // 0x000E4230 0x800E3630 - Mario  (IEEE32) (1.25: 0x3FA00000)
.float 1.25 // 0x000E4234 0x800E3634 - Luigi  (IEEE32) (1.25: 0x3FA00000)
.float 1.28 // 0x000E4238 0x800E3638 - Yoshi  (IEEE32) (1.28: 0x3FA3D70A)
.float 1.28 // 0x000E423C 0x800E363C - Toad   (IEEE32) (1.28: 0x3FA3D70A)
.float 1.15 // 0x000E4240 0x800E3640 - D.K.   (IEEE32) (1.15: 0x3F933333)
.float 1.15 // 0x000E4244 0x800E3644 - Wario  (IEEE32) (1.15: 0x3F933333)
.float 1.28 // 0x000E4248 0x800E3648 - Peach  (IEEE32) (1.28: 0x3FA3D70A)
.float 1.15 // 0x000E424C 0x800E364C - Bowser (IEEE32) (1.15: 0x3F933333)

            // ROM       RAM         Kart *Unknown*
.float 0.0 // 0x000E4250 0x800E3650 - Mario  (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4254 0x800E3654 - Luigi  (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4258 0x800E3658 - Yoshi  (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E425C 0x800E365C - Toad   (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4260 0x800E3660 - D.K.   (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4264 0x800E3664 - Wario  (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E4268 0x800E3668 - Peach  (IEEE32) (0.0: 0x00000000)
.float 0.0 // 0x000E426C 0x800E366C - Bowser (IEEE32) (0.0: 0x00000000)

               // ROM       RAM         Kart Turn Speed Reduction Coefficient
.float  0.0   // 0x000E4270 0x800E3670 - Mario  (IEEE32) ( 0.0:   0x00000000)
.float  0.0   // 0x000E4274 0x800E3674 - Luigi  (IEEE32) ( 0.0:   0x00000000)
.float  0.002 // 0x000E4278 0x800E3678 - Yoshi  (IEEE32) ( 0.002: 0x3B03126F)
.float  0.002 // 0x000E427C 0x800E367C - Toad   (IEEE32) ( 0.002: 0x3B03126F)
.float -0.002 // 0x000E4280 0x800E3680 - D.K.   (IEEE32) (-0.002: 0xBB03126F)
.float -0.002 // 0x000E4284 0x800E3684 - Wario  (IEEE32) (-0.002: 0xBB03126F)
.float  0.002 // 0x000E4288 0x800E3688 - Peach  (IEEE32) ( 0.002: 0x3B03126F)
.float -0.002 // 0x000E428C 0x800E368C - Bowser (IEEE32) (-0.002: 0xBB03126F)

               // ROM       RAM         Kart Turn Speed Reduction Coefficient 2
.float  0.0   // 0x000E4290 0x800E3690 - Mario  (IEEE32) ( 0.0:   0x00000000)
.float  0.0   // 0x000E4294 0x800E3694 - Luigi  (IEEE32) ( 0.0:   0x00000000)
.float  0.002 // 0x000E4298 0x800E3698 - Yoshi  (IEEE32) ( 0.002: 0x3B03126F)
.float  0.002 // 0x000E429C 0x800E369C - Toad   (IEEE32) ( 0.002: 0x3B03126F)
.float -0.002 // 0x000E42A0 0x800E36A0 - D.K.   (IEEE32) (-0.002: 0xBB03126F)
.float -0.002 // 0x000E42A4 0x800E36A4 - Wario  (IEEE32) (-0.002: 0xBB03126F)
.float  0.002 // 0x000E42A8 0x800E36A8 - Peach  (IEEE32) ( 0.002: 0x3B03126F)
.float -0.002 // 0x000E42AC 0x800E36AC - Bowser (IEEE32) (-0.002: 0xBB03126F)

            // ROM       RAM         Kart *Unknown*
.float 2.0 // 0x000E42B0 0x800E36B0 - Mario  (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E42B4 0x800E36B4 - Luigi  (IEEE32) (2.0: 0x40000000)
.float 3.0 // 0x000E42B8 0x800E36B8 - Yoshi  (IEEE32) (3.0: 0x40400000)
.float 3.0 // 0x000E42BC 0x800E36BC - Toad   (IEEE32) (3.0: 0x40400000)
.float 1.5 // 0x000E42C0 0x800E36C0 - D.K.   (IEEE32) (1.5: 0x3FC00000)
.float 1.5 // 0x000E42C4 0x800E36C4 - Wario  (IEEE32) (1.5: 0x3FC00000)
.float 3.0 // 0x000E42C8 0x800E36C8 - Peach  (IEEE32) (3.0: 0x40400000)
.float 3.0 // 0x000E42CC 0x800E36CC - Bowser (IEEE32) (3.0: 0x40400000)

             // ROM       RAM         Kart Hop Height
.float 0.93 // 0x000E42D0 0x800E36D0 - Mario  (IEEE32) (0.93: 0x3F6E147B)
.float 0.93 // 0x000E42D4 0x800E36D4 - Luigi  (IEEE32) (0.93: 0x3F6E147B)
.float 0.93 // 0x000E42D8 0x800E36D8 - Yoshi  (IEEE32) (0.93: 0x3F6E147B)
.float 0.93 // 0x000E42DC 0x800E36DC - Toad   (IEEE32) (0.93: 0x3F6E147B)
.float 0.93 // 0x000E42E0 0x800E36E0 - D.K.   (IEEE32) (0.93: 0x3F6E147B)
.float 0.93 // 0x000E42E4 0x800E36E4 - Wario  (IEEE32) (0.93: 0x3F6E147B)
.float 0.93 // 0x000E42E8 0x800E36E8 - Peach  (IEEE32) (0.93: 0x3F6E147B)
.float 0.93 // 0x000E42EC 0x800E36EC - Bowser (IEEE32) (0.93: 0x3F6E147B)

             // ROM       RAM         Kart Hop Fall Speed
.float 0.03 // 0x000E42F0 0x800E36F0 - Mario  (IEEE32) (0.03: 0x3CF5C28F)
.float 0.03 // 0x000E42F4 0x800E36F4 - Luigi  (IEEE32) (0.03: 0x3CF5C28F)
.float 0.03 // 0x000E42F8 0x800E36F8 - Yoshi  (IEEE32) (0.03: 0x3CF5C28F)
.float 0.03 // 0x000E42FC 0x800E36FC - Toad   (IEEE32) (0.03: 0x3CF5C28F)
.float 0.03 // 0x000E4300 0x800E3700 - D.K.   (IEEE32) (0.03: 0x3CF5C28F)
.float 0.03 // 0x000E4304 0x800E3704 - Wario  (IEEE32) (0.03: 0x3CF5C28F)
.float 0.03 // 0x000E4308 0x800E3708 - Peach  (IEEE32) (0.03: 0x3CF5C28F)
.float 0.03 // 0x000E430C 0x800E370C - Bowser (IEEE32) (0.03: 0x3CF5C28F)

            // ROM       RAM         Kart *Unknown*
.float 2.2 // 0x000E4310 0x800E3710 - Mario  (IEEE32) (2.2: 0x400CCCCD)
.float 2.2 // 0x000E4314 0x800E3714 - Luigi  (IEEE32) (2.2: 0x400CCCCD)
.float 2.2 // 0x000E4318 0x800E3718 - Yoshi  (IEEE32) (2.2: 0x400CCCCD)
.float 2.2 // 0x000E431C 0x800E371C - Toad   (IEEE32) (2.2: 0x400CCCCD)
.float 2.2 // 0x000E4320 0x800E3720 - D.K.   (IEEE32) (2.2: 0x400CCCCD)
.float 2.2 // 0x000E4324 0x800E3724 - Wario  (IEEE32) (2.2: 0x400CCCCD)
.float 2.2 // 0x000E4328 0x800E3728 - Peach  (IEEE32) (2.2: 0x400CCCCD)
.float 2.2 // 0x000E432C 0x800E372C - Bowser (IEEE32) (2.2: 0x400CCCCD)

              // ROM       RAM         Kart *Unknown*
.float 0.002 // 0x000E4330 0x800E3730 - Mario  (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E4334 0x800E3734 - Luigi  (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E4338 0x800E3738 - Yoshi  (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E433C 0x800E373C - Toad   (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E4340 0x800E3740 - D.K.   (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E4344 0x800E3744 - Wario  (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E4348 0x800E3748 - Peach  (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E434C 0x800E374C - Bowser (IEEE32) (0.002: 0x3B03126F)

            // ROM       RAM         Kart *Unknown*
.float 2.0 // 0x000E4350 0x800E3750 - Mario  (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E4354 0x800E3754 - Luigi  (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E4358 0x800E3758 - Yoshi  (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E435C 0x800E375C - Toad   (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E4360 0x800E3760 - D.K.   (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E4364 0x800E3764 - Wario  (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E4368 0x800E3768 - Peach  (IEEE32) (2.0: 0x40000000)
.float 2.0 // 0x000E436C 0x800E376C - Bowser (IEEE32) (2.0: 0x40000000)

              // ROM       RAM         Kart *Unknown*
.float 0.002 // 0x000E4370 0x800E3770 - Mario  (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E4374 0x800E3774 - Luigi  (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E4378 0x800E3778 - Yoshi  (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E437C 0x800E377C - Toad   (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E4380 0x800E3780 - D.K.   (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E4384 0x800E3784 - Wario  (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E4388 0x800E3788 - Peach  (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E438C 0x800E378C - Bowser (IEEE32) (0.002: 0x3B03126F)

             // ROM       RAM         Kart *Unknown*
.float 1.2  // 0x000E4390 0x800E3790 - Mario  (IEEE32) (1.2:  0x3F99999A)
.float 1.45 // 0x000E4394 0x800E3794 - Luigi  (IEEE32) (1.45: 0x3FB9999A)
.float 1.45 // 0x000E4398 0x800E3798 - Yoshi  (IEEE32) (1.45: 0x3FB9999A)
.float 1.45 // 0x000E439C 0x800E379C - Toad   (IEEE32) (1.45: 0x3FB9999A)
.float 1.45 // 0x000E43A0 0x800E37A0 - D.K.   (IEEE32) (1.45: 0x3FB9999A)
.float 1.45 // 0x000E43A4 0x800E37A4 - Wario  (IEEE32) (1.45: 0x3FB9999A)
.float 1.45 // 0x000E43A8 0x800E37A8 - Peach  (IEEE32) (1.45: 0x3FB9999A)
.float 1.45 // 0x000E43AC 0x800E37AC - Bowser (IEEE32) (1.45: 0x3FB9999A)

             // ROM       RAM         Kart *Unknown*
.float 0.01 // 0x000E43B0 0x800E37B0 - Mario  (IEEE32) (0.01: 0x3C23D70A)
.float 0.01 // 0x000E43B4 0x800E37B4 - Luigi  (IEEE32) (0.01: 0x3C23D70A)
.float 0.01 // 0x000E43B8 0x800E37B8 - Yoshi  (IEEE32) (0.01: 0x3C23D70A)
.float 0.01 // 0x000E43BC 0x800E37BC - Toad   (IEEE32) (0.01: 0x3C23D70A)
.float 0.01 // 0x000E43C0 0x800E37C0 - D.K.   (IEEE32) (0.01: 0x3C23D70A)
.float 0.01 // 0x000E43C4 0x800E37C4 - Wario  (IEEE32) (0.01: 0x3C23D70A)
.float 0.01 // 0x000E43C8 0x800E37C8 - Peach  (IEEE32) (0.01: 0x3C23D70A)
.float 0.01 // 0x000E43CC 0x800E37CC - Bowser (IEEE32) (0.01: 0x3C23D70A)

            // ROM       RAM         Kart *Unknown*
.float 3.5 // 0x000E43D0 0x800E37D0 - Mario  (IEEE32) (3.5: 0x40600000)
.float 3.5 // 0x000E43D4 0x800E37D4 - Luigi  (IEEE32) (3.5: 0x40600000)
.float 3.5 // 0x000E43D8 0x800E37D8 - Yoshi  (IEEE32) (3.5: 0x40600000)
.float 3.5 // 0x000E43DC 0x800E37DC - Toad   (IEEE32) (3.5: 0x40600000)
.float 3.5 // 0x000E43E0 0x800E37E0 - D.K.   (IEEE32) (3.5: 0x40600000)
.float 3.5 // 0x000E43E4 0x800E37E4 - Wario  (IEEE32) (3.5: 0x40600000)
.float 3.5 // 0x000E43E8 0x800E37E8 - Peach  (IEEE32) (3.5: 0x40600000)
.float 3.5 // 0x000E43EC 0x800E37EC - Bowser (IEEE32) (3.5: 0x40600000)

              // ROM       RAM         Kart *Unknown*
.float 0.002 // 0x000E43F0 0x800E37F0 - Mario  (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E43F4 0x800E37F4 - Luigi  (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E43F8 0x800E37F8 - Yoshi  (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E43FC 0x800E37FC - Toad   (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E4400 0x800E3800 - D.K.   (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E4404 0x800E3804 - Wario  (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E4408 0x800E3808 - Peach  (IEEE32) (0.002: 0x3B03126F)
.float 0.002 // 0x000E440C 0x800E380C - Bowser (IEEE32) (0.002: 0x3B03126F)


.org 0x801211A0
            // ROM       RAM         Kart Weight
.float 1.2 // 0x00121DA0 0x802B8790 - Mario  (IEEE32) (1.2: 0x3F99999A)
.float 1.0 // 0x00121DA4 0x802B8794 - Luigi  (IEEE32) (1.0: 0x3F800000)
.float 0.9 // 0x00121DA8 0x802B8798 - Yoshi  (IEEE32) (0.9: 0x3F666666)
.float 0.7 // 0x00121DAC 0x802B879C - Toad   (IEEE32) (0.7: 0x3F333333)
.float 2.0 // 0x00121DB0 0x802B87A0 - D.K.   (IEEE32) (2.0: 0x40000000)
.float 1.8 // 0x00121DB4 0x802B87A4 - Wario  (IEEE32) (1.8: 0x3FE66666)
.float 0.9 // 0x00121DB8 0x802B87A8 - Peach  (IEEE32) (0.9: 0x3F666666)
.float 2.3 // 0x00121DBC 0x802B87AC - Bowser (IEEE32) (2.3: 0x40133333)


//----------------------
// TKMK00 menu textures
//----------------------

// flag: if 1, pass 0xBE through A3 TKMK00 decoder, else pass 0x00
// seg_addr: segmented address of texture (in 0x0B segment)
// width: width of texture
// height: height of texture
// others unknown
.macro MK_TEXTURE, flag, seg_addr, width, height, h0C, h0E, h10, h12
  .dh flag, 0
  .dw seg_addr
  .dh width, height, h0C, h0E, h10, h12
.endmacro

// Race type menu textures table
.org 0x8012e7d4
MK_TEXTURE 1, menu_50cc,   64,  18,   0,   0,   0,   0  // 50cc
MK_TEXTURE 0, 0x00000000,   0,   0,   0,   0,   0,   0
MK_TEXTURE 1, menu_100cc,  64,  18,   0,   0,   0,   0  // 100cc
MK_TEXTURE 0, 0x00000000,   0,   0,   0,   0,   0,   0 
MK_TEXTURE 1, menu_150cc,  64,  18,   0,   0,   0,   0  // 150cc
MK_TEXTURE 0, 0x00000000,   0,   0,   0,   0,   0,   0 

// assign segment 0B base for use with TKMK00 textures
// put new TKMK00 textures at end of ROM

.headersize 0x0B000000 - 0x7FA3C0
.orga 0xBEA000

menu_50cc:
.incbin "textures/menu_50cc.tkmk00"
.align 16
menu_100cc:
.incbin "textures/menu_100cc.tkmk00"
.align 16
menu_150cc:
.incbin "textures/menu_150cc.tkmk00"
.align 16

//----------------------
// MIO0 logo texture
//----------------------

// assign segment 0F base
// Stock title logo: 719480/0F0D7510
.headersize 0x0F000000 - 0x641F70

// MIO0 textures after TKMK00
// this origin just needs to be after the last TKMK00 texture above
.orga 0xBEB000
title_logo:
.incbin "textures/title_logo.mio0"
.align 4
title_logo.end:

.headersize 0x80000000 - 0xc00

// update asm pointer to title logo (was 0F0D7510)
.org 0x8006EE4C
li a0, title_logo
lw a1, 0x8018D9B0
li a2, title_logo.end - title_logo

//----------------------
// Staff Ghosts
//----------------------

.orga 0x63E280
.area 0x63F11C - 0x63E280
.incbin "ghosts/mario_raceway_1500cc.bin"
.dw 0
.endarea

.orga 0x63F11C
.area 0x640174 - 0x63F11C
.incbin "ghosts/luigi_raceway_1500cc.bin"
.dw 0
.endarea

.orga 0x640174
.area 0x641F40 - 0x640174 // TODO: not entirely sure where this data ends
.incbin "ghosts/royal_raceway_1500cc.bin"
.dw 0
.endarea

.close
