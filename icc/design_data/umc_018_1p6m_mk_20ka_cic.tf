
Technology	{
		name				= "umc_018_1p6m_mk.tf"
#                date                            = "Dec,10,2003"
                dielectric                      = 4.1e-05
                unitTimeName                    = "ns"
                timePrecision                   = 1000
                unitLengthName                  = "micron"
                lengthPrecision                 = 1000
                gridResolution                  = 10
                unitResistanceName              = "kohm"
                resistancePrecision             = 10000000
                unitCapacitanceName             = "pf"
                capacitancePrecision            = 1000000000
                unitInductanceName              = "nh"
                inductancePrecision             = 100
                unitPowerName                   = "pw"
                powerPrecision                  = 1000000000
                unitVoltageName                 = "V"
                voltagePrecision                = 10000000
                unitCurrentName                 = "mA"
                currentPrecision                = 10000000
}

Color		8 {
		name				= "8"
		rgbDefined			= 1
		redIntensity			= 0
		greenIntensity			= 175
		blueIntensity			= 0
}

Color		9 {
		name				= "9"
		rgbDefined			= 1
		redIntensity			= 0
		greenIntensity			= 175
		blueIntensity			= 100
}

Color		43 {
		name				= "43"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 175
		blueIntensity			= 255
}

Color		47 {
		name				= "47"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 255
		blueIntensity			= 255
}

Stipple		"rectangleX" {
		width			= 1
		height			= 1
		pattern			= (114) 
}

Stipple		"X" {
		width			= 8
		height			= 8
		pattern			= (127, 74, 4, 8, 8, 4, 74, 127, 
					   0, 0, 0, 0, 0, 0, 0, 0, 
					   0, 0, 0, 0, 0, 0, 0, 0, 
					   0, 0, 0, 0, 0, 0, 0, 0, 
					   0, 0, 0, 0, 0, 0, 0, 0, 
					   0, 0, 0, 0, 0, 0, 0, 0, 
					   0, 0, 0, 0, 0, 0, 0, 0, 
					   0, 0, 0, 0, 0, 0, 0, 0) 
}

Stipple         "dots" {
                width                   = 4
                height                  = 4
                pattern                 = (0, 1, 0, 1,
                                           0, 0, 0, 0,
                                           0, 1, 0, 1,
                                           0, 0, 0, 0)
}

Layer           "phyname" {
                layerNumber                     = 145
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "slate"
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer		"nwell" {
		layerNumber			= 3
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"active" {
		layerNumber			= 1
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "brown"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer           "nplus" {
                layerNumber                     = 12
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "orange"
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer		"poly" {
		layerNumber			= 41
		maskName			= "poly"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "8"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0
		defaultWidth			= 0.18
		minWidth			= 0.18
		minSpacing			= 0.24
}

Layer		"pplus" {
		layerNumber			= 11
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "brown"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"contact" {
		layerNumber			= 39
		maskName			= "polyCont"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "9"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0.56
		defaultWidth			= 0.24
		minWidth			= 0.24
		minSpacing			= 0.26
}

Layer		"metal1" {
		layerNumber			= 46
		maskName			= "metal1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0.56
		defaultWidth			= 0.24
		minWidth			= 0.24
		minSpacing			= 0.24
                minArea                         = 0.1764
		fatWireThreshold		= 10
		fatThinMinSpacing		= 0.28
		fatFatMinSpacing		= 0.28
		fatContactThreshold		= 10
                unitMinResistance               = 4.5e-05
                unitNomResistance               = 7.7e-05
                unitMaxResistance               = 1.15e-04
                unitMinCapacitance              = 3.614e-05
                unitNomCapacitance              = 3.614e-05
                unitMaxCapacitance              = 3.614e-05
                unitMinSideWallCap              = 7.648e-05
                unitNomSideWallCap              = 7.648e-05
                unitMaxSideWallCap              = 7.648e-05
                unitMinChannelCap               = 3.614e-05
                unitNomChannelCap               = 3.614e-05
                unitMaxChannelCap               = 3.614e-05
                unitMinChannelSideCap           = 7.648e-05
                unitNomChannelSideCap           = 7.648e-05
                unitMaxChannelSideCap           = 7.648e-05
		unitMinThickness		= 0.48
		unitNomThickness		= 0.48
		unitMaxThickness		= 0.48
}

Layer		"via" {
		layerNumber			= 47
		maskName			= "via1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "X"
		pitch				= 0
		defaultWidth			= 0.28
		minWidth			= 0.28
		minSpacing			= 0.28
}

Layer		"metal2" {
		layerNumber			= 48
		maskName			= "metal2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.62
		defaultWidth			= 0.28
		minWidth			= 0.28
		minSpacing			= 0.28
                minArea                         = 0.1936
                fatWireThreshold                = 10
                fatThinMinSpacing               = 0.32
                fatFatMinSpacing                = 0.32
                fatContactThreshold             = 10
                unitMinResistance               = 3.0e-05
                unitNomResistance               = 6.2e-05
                unitMaxResistance               = 9.5e-05
                unitMinCapacitance              = 1.47e-05
                unitNomCapacitance              = 1.47e-05
                unitMaxCapacitance              = 1.47e-05
                unitMinSideWallCap              = 8.166e-05
                unitNomSideWallCap              = 8.166e-05
                unitMaxSideWallCap              = 8.166e-05
                unitMinChannelCap               = 1.47e-05
                unitNomChannelCap               = 1.47e-05
                unitMaxChannelCap               = 1.47e-05
                unitMinChannelSideCap           = 8.166e-05
                unitNomChannelSideCap           = 8.166e-05
                unitMaxChannelSideCap           = 8.166e-05
		unitMinThickness		= 0.58
		unitNomThickness		= 0.58
		unitMaxThickness		= 0.58
}

Layer		"pass" {
		layerNumber			= 66
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "purple"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"via2" {
		layerNumber			= 49
		maskName			= "via2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "pink"
		lineStyle			= "solid"
		pattern				= "X"
		pitch				= 0
		defaultWidth			= 0.28
		minWidth			= 0.28
		minSpacing			= 0.28
}

Layer		"metal3" {
		layerNumber			= 50
		maskName			= "metal3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0.56
		defaultWidth			= 0.28
		minWidth			= 0.28
		minSpacing			= 0.28
                minArea                         = 0.1936
                fatWireThreshold                = 10
                fatThinMinSpacing               = 0.32
                fatFatMinSpacing                = 0.32
                fatContactThreshold             = 10
                unitMinResistance               = 3.0e-05
                unitNomResistance               = 6.2e-05
                unitMaxResistance               = 9.5e-05
                unitMinCapacitance              = 8.96e-06
                unitNomCapacitance              = 8.96e-06
                unitMaxCapacitance              = 8.96e-06
                unitMinSideWallCap              = 9.004e-05
                unitNomSideWallCap              = 9.004e-05
                unitMaxSideWallCap              = 9.004e-05
                unitMinChannelCap               = 8.96e-06
                unitNomChannelCap               = 8.96e-06
                unitMaxChannelCap               = 8.96e-06
                unitMinChannelSideCap           = 9.004e-05
                unitNomChannelSideCap           = 9.004e-05
                unitMaxChannelSideCap           = 9.004e-05
		unitMinThickness		= 0.58
		unitNomThickness		= 0.58
		unitMaxThickness		= 0.58
}

Layer		"via3" {
		layerNumber			= 51
		maskName			= "via3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "X"
		pitch				= 0
		defaultWidth			= 0.28
		minWidth			= 0.28
		minSpacing			= 0.28
}

Layer		"metal4" {
		layerNumber			= 52
		maskName			= "metal4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
                color                           = "green"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.62
		defaultWidth			= 0.28
		minWidth			= 0.28
		minSpacing			= 0.28
                minArea                         = 0.1936
                fatWireThreshold                = 10
                fatThinMinSpacing               = 0.32
                fatFatMinSpacing                = 0.32
                fatContactThreshold             = 10
                unitMinResistance               = 3.0e-05
                unitNomResistance               = 6.2e-05
                unitMaxResistance               = 9.5e-05
                unitMinCapacitance              = 6.44e-06
                unitNomCapacitance              = 6.44e-06
                unitMaxCapacitance              = 6.44e-06
                unitMinSideWallCap              = 8.185e-05
                unitNomSideWallCap              = 8.185e-05
                unitMaxSideWallCap              = 8.185e-05
                unitMinChannelCap               = 6.44e-06
                unitNomChannelCap               = 6.44e-06
                unitMaxChannelCap               = 6.44e-06
                unitMinChannelSideCap           = 8.185e-05
                unitNomChannelSideCap           = 8.185e-05
                unitMaxChannelSideCap           = 8.185e-05
		unitMinThickness		= 0.58
		unitNomThickness		= 0.58
		unitMaxThickness		= 0.58
}

Layer           "via4" {
                layerNumber                     = 53
                maskName                        = "via4"
                isDefaultLayer                  = 1
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "white"
                lineStyle                       = "solid"
                pattern                         = "X"
                pitch                           = 0
                defaultWidth                    = 0.28
                minWidth                        = 0.28
                minSpacing                      = 0.28
}

Layer           "metal5" {
                layerNumber                     = 54
                maskName                        = "metal5"
                isDefaultLayer                  = 1
                visible                         = 1
                selectable                      = 1
                blink                           = 0
#		 color                           = "pink"
                color                           = "43"
                lineStyle                       = "solid"
                pattern                         = "slash"
                pitch                           = 0.56
                defaultWidth                    = 0.28
                minWidth                        = 0.28
                minSpacing                      = 0.28
                minArea                         = 0.1936
                fatWireThreshold                = 10
                fatThinMinSpacing               = 0.32
                fatFatMinSpacing                = 0.32
                fatContactThreshold             = 10
                unitMinResistance               = 3.0e-05
                unitNomResistance               = 6.2e-05
                unitMaxResistance               = 9.5e-05
                unitMinCapacitance              = 5.03e-06
                unitNomCapacitance              = 5.03e-06
                unitMaxCapacitance              = 5.03e-06
                unitMinSideWallCap              = 7.197e-05
                unitNomSideWallCap              = 7.197e-05
                unitMaxSideWallCap              = 7.197e-05
                unitMinChannelCap               = 5.03e-06
                unitNomChannelCap               = 5.03e-06
                unitMaxChannelCap               = 5.03e-06
                unitMinChannelSideCap           = 7.197e-05
                unitNomChannelSideCap           = 7.197e-05
                unitMaxChannelSideCap           = 7.197e-05
		unitMinThickness		= 0.58
		unitNomThickness		= 0.58
		unitMaxThickness		= 0.58
}

Layer           "via5" {
                layerNumber                     = 55
                maskName                        = "via5"
                isDefaultLayer                  = 1
                visible                         = 1
                selectable                      = 1
                blink                           = 0
#                color                           = "lime"
		color                           = "47"
                lineStyle                       = "solid"
                pattern                         = "X"
                pitch                           = 0
                defaultWidth                    = 0.28
                minWidth                        = 0.28
                minSpacing                      = 0.28
}

Layer           "metal6" {
                layerNumber                     = 56
                maskName                        = "metal6"
                isDefaultLayer                  = 1
                visible                         = 1
                selectable                      = 1
                blink                           = 0
#                color                           = "violet"
		color                           = "47"
                lineStyle                       = "solid"
                pattern                         = "backSlash"
#		 pitch                           = 0.88
#		 defaultWidth                    = 0.44
#		 minWidth                        = 0.44
#		 minSpacing                      = 0.44
# 		 minArea                         = 0.4625
		pitch				= 2.4
		defaultWidth			= 1.2
		minWidth			= 1.2
		minSpacing			= 1
		minArea				= 9
                fatWireThreshold                = 10
#                fatThinMinSpacing               = 0.6
#                fatFatMinSpacing                = 0.6
		fatThinMinSpacing               = 1.5
		fatFatMinSpacing                = 1.5
                fatContactThreshold             = 10
#		 unitMinResistance               = 2.5e-05
#		 unitNomResistance               = 4.1e-05
#		 unitMaxResistance               = 5.5e-05
                unitMinResistance               = 7.5e-05
                unitNomResistance               = 1.2e-04
                unitMaxResistance               = 1.6e-04
#		 unitMinCapacitance              = 4.13e-06
#		 unitNomCapacitance              = 4.13e-06
#		 unitMaxCapacitance              = 4.13e-06
                unitMinCapacitance              = 1.21e-05
                unitNomCapacitance              = 1.21e-05
                unitMaxCapacitance              = 1.21e-05
# 		 unitMinSideWallCap              = 9.421e-05
#                unitNomSideWallCap              = 9.421e-05
#                unitMaxSideWallCap              = 9.421e-05
                unitMinSideWallCap              = 2.742e-04
                unitNomSideWallCap              = 2.742e-04
                unitMaxSideWallCap              = 2.742e-04
#                unitMinChannelCap               = 4.13e-06
#                unitNomChannelCap               = 4.13e-06
#                unitMaxChannelCap               = 4.13e-06
		unitMinChannelCap               = 1.21e-05
                unitNomChannelCap               = 1.21e-05
                unitMaxChannelCap               = 1.21e-05
#                unitMinChannelSideCap           = 9.421e-05
#                unitNomChannelSideCap           = 9.421e-05
#                unitMaxChannelSideCap           = 9.421e-05
		unitMinChannelSideCap           = 2.742e-04
                unitNomChannelSideCap           = 2.742e-04
                unitMaxChannelSideCap           = 2.742e-04
#		 unitMinThickness		= 0.86
#		 unitNomThickness		= 0.86
#		 unitMaxThickness		= 0.86
		unitMinThickness		= 2
		unitNomThickness		= 2
		unitMaxThickness		= 2
}

Layer		"outline" {
		layerNumber			= 149
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer           "nwres" {
                layerNumber                     = 40
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer           "undumy" {
                layerNumber                     = 113
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer		"tg" {
		layerNumber			= 37
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"sab" {
		layerNumber			= 36
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"special" {
		layerNumber			= 144
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"chiptxt" {
		layerNumber			= 85
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer           "dfopcbk" {
                layerNumber                     = 70
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "orange"
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer           "plopcbk" {
                layerNumber                     = 71
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "forest"
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer           "m1opcbk" {
                layerNumber                     = 72
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "cyan"
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer           "nesd" {
                layerNumber                     = 31
                maskName                        = ""
                visible                         = 0
                selectable                      = 0
                blink                           = 0
                color                           = "slate"
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer           "pesd" {
                layerNumber                     = 32
                maskName                        = ""
                visible                         = 0
                selectable                      = 0
                blink                           = 0
                color                           = "orange"
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer           "mmc" {
                layerNumber                     = 65
                maskName                        = ""
                visible                         = 0
                selectable                      = 0
                blink                           = 0
                lineStyle                       = "solid"
                color                           = "red"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer           "hr" {
                layerNumber                     = 38
                maskName                        = ""
                visible                         = 0
                selectable                      = 0
                blink                           = 0
                lineStyle                       = "solid"
                color                           = "pink"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer		"m1text" {
		layerNumber			= 101
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"m2text" {
		layerNumber			= 102
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"m3text" {
		layerNumber			= 103
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"m4text" {
		layerNumber			= 104
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"m5text" {
		layerNumber			= 105
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "59"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"m6text" {
		layerNumber			= 106
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "23"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}
Layer           "dmetal" {
                layerNumber                     = 115
                maskName                        = ""
                visible                         = 0
                selectable                      = 0
                blink                           = 0
                lineStyle                       = "solid"
                color                           = "yellow"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer           "d1metal" {
                layerNumber                     = 127
                maskName                        = ""
                visible                         = 0
                selectable                      = 0
                blink                           = 0
                lineStyle                       = "solid"
                color                           = "magenta"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer           "dvia" {
                layerNumber                     = 126
                maskName                        = ""
                visible                         = 0
                selectable                      = 0
                blink                           = 0
                lineStyle                       = "solid"
                color                           = "white"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer           "mfuse" {
                layerNumber                     = 117
                maskName                        = ""
                visible                         = 0
                selectable                      = 0
                blink                           = 0
                lineStyle                       = "solid"
                color                           = "magenta"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

ContactCode	"VIA12A" {
		contactCodeNumber		= 1
		cutLayer			= "via"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		isDefaultContact		= 1
		cutWidth			= 0.28
		cutHeight			= 0.28
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.08
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.08
		minCutSpacing			= 0.28
                unitMinResistance               = 0.002
                unitNomResistance               = 0.0065
                unitMaxResistance               = 0.015
}

ContactCode	"VIA12B" {
		contactCodeNumber		= 2
		cutLayer			= "via"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		isDefaultContact		= 0
		cutWidth			= 0.28
		cutHeight			= 0.28
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.08
		lowerLayerEncWidth		= 0.08
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.28
                unitMinResistance               = 0.002
                unitNomResistance               = 0.0065
                unitMaxResistance               = 0.015
}

ContactCode	"VIA23" {
		contactCodeNumber		= 3
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		isDefaultContact		= 1
		cutWidth			= 0.28
		cutHeight			= 0.28
		upperLayerEncWidth		= 0.08
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.08
		minCutSpacing			= 0.28
                unitMinResistance               = 0.002
                unitNomResistance               = 0.0065
                unitMaxResistance               = 0.015
}

ContactCode	"VIA34" {
		contactCodeNumber		= 4
		cutLayer			= "via3"
		lowerLayer			= "metal3"
		upperLayer			= "metal4"
		isDefaultContact		= 1
		cutWidth			= 0.28
		cutHeight			= 0.28
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.08
		lowerLayerEncWidth		= 0.08
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.28
                unitMinResistance               = 0.002
                unitNomResistance               = 0.0065
                unitMaxResistance               = 0.015
}

ContactCode     "VIA45" {
                contactCodeNumber               = 5
                cutLayer                        = "via4"
                lowerLayer                      = "metal4"
                upperLayer                      = "metal5"
                isDefaultContact                = 1
                cutWidth                        = 0.28
                cutHeight                       = 0.28
                upperLayerEncWidth              = 0.08
                upperLayerEncHeight             = 0
                lowerLayerEncWidth              = 0
                lowerLayerEncHeight             = 0.08
                minCutSpacing                   = 0.28
                unitMinResistance               = 0.002
                unitNomResistance               = 0.0065
                unitMaxResistance               = 0.015
}

ContactCode     "VIA56" {
                contactCodeNumber               = 11
                cutLayer                        = "via5"
                lowerLayer                      = "metal5"
                upperLayer                      = "metal6"
                isDefaultContact                = 1
                cutWidth                        = 0.28
                cutHeight                       = 0.28
#                upperLayerEncWidth              = 0.08
#                upperLayerEncHeight             = 0.12
		upperLayerEncWidth              = 0.4
		upperLayerEncHeight             = 0.4
                lowerLayerEncWidth              = 0.08
                lowerLayerEncHeight             = 0
                minCutSpacing                   = 0.28
                unitMinResistance               = 0.002
                unitNomResistance               = 0.0065
                unitMaxResistance               = 0.015
}

ContactCode	"FATVIA12" {
		contactCodeNumber		= 12
		cutLayer			= "via"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		isFatContact			= 1
		cutWidth			= 0.28
		cutHeight			= 0.28
		upperLayerEncWidth		= 0.2
		upperLayerEncHeight		= 0.2
		lowerLayerEncWidth		= 0.2
		lowerLayerEncHeight		= 0.2
		minCutSpacing			= 0.56
}

ContactCode	"FATVIA23" {
		contactCodeNumber		= 13
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		isFatContact			= 1
		cutWidth			= 0.28
		cutHeight			= 0.28
		upperLayerEncWidth		= 0.2
		upperLayerEncHeight		= 0.2
		lowerLayerEncWidth		= 0.2
		lowerLayerEncHeight		= 0.2
		minCutSpacing			= 0.56
}

ContactCode	"FATVIA34" {
		contactCodeNumber		= 14
		cutLayer			= "via3"
		lowerLayer			= "metal3"
		upperLayer			= "metal4"
		isFatContact			= 1
		cutWidth			= 0.28
		cutHeight			= 0.28
		upperLayerEncWidth		= 0.2
		upperLayerEncHeight		= 0.2
		lowerLayerEncWidth		= 0.2
		lowerLayerEncHeight		= 0.2
		minCutSpacing			= 0.56
}

ContactCode     "FATVIA45" {
                contactCodeNumber               = 15
                cutLayer                        = "via4"
                lowerLayer                      = "metal4"
                upperLayer                      = "metal5"
                isFatContact                    = 1
                cutWidth                        = 0.28
                cutHeight                       = 0.28
                upperLayerEncWidth              = 0.2
                upperLayerEncHeight             = 0.2
                lowerLayerEncWidth              = 0.2
                lowerLayerEncHeight             = 0.2
                minCutSpacing                   = 0.56
}

ContactCode     "FATVIA56" {
                contactCodeNumber               = 16
                cutLayer                        = "via5"
                lowerLayer                      = "metal5"
                upperLayer                      = "metal6"
                isFatContact                    = 1
                cutWidth                        = 0.28
                cutHeight                       = 0.28
#                upperLayerEncWidth              = 0
#                upperLayerEncHeight             = 0.2
		upperLayerEncWidth              = 0.4
		upperLayerEncHeight             = 0.4
                lowerLayerEncWidth              = 0.2
                lowerLayerEncHeight             = 0.2
                minCutSpacing                   = 0.56
}

FringeCap       1 {
                layer1                          = "poly"
                layer2                          = "metal1"
                minFringeCap                    = 4.538e-05
                nomFringeCap                    = 4.538e-05
                maxFringeCap                    = 4.538e-05
}

FringeCap       2 {
                layer1                          = "poly"
                layer2                          = "metal2"
                minFringeCap                    = 1.603e-05
                nomFringeCap                    = 1.603e-05
                maxFringeCap                    = 1.603e-05
}

FringeCap       3 {
                layer1                          = "poly"
                layer2                          = "metal3"
                minFringeCap                    = 9.44e-06
                nomFringeCap                    = 9.44e-06
                maxFringeCap                    = 9.44e-06
}

FringeCap       4 {
                layer1                          = "poly"
                layer2                          = "metal4"
                minFringeCap                    = 6.69e-06
                nomFringeCap                    = 6.69e-06
                maxFringeCap                    = 6.69e-06
}

FringeCap       5 {
                layer1                          = "poly"
                layer2                          = "metal5"
                minFringeCap                    = 5.18e-06
                nomFringeCap                    = 5.18e-06
                maxFringeCap                    = 5.18e-06
}

FringeCap       6 {
                layer1                          = "poly"
                layer2                          = "metal6"
                minFringeCap                    = 4.22e-06
                nomFringeCap                    = 4.22e-06
                maxFringeCap                    = 4.22e-06
}

FringeCap       7 {
                layer1                          = "metal1"
                layer2                          = "metal2"
                minFringeCap                    = 4.021e-05
                nomFringeCap                    = 4.021e-05
                maxFringeCap                    = 4.021e-05
}

FringeCap       8 {
                layer1                          = "metal1"
                layer2                          = "metal3"
                minFringeCap                    = 1.461e-05
                nomFringeCap                    = 1.461e-05
                maxFringeCap                    = 1.461e-05
}

FringeCap       9 {
                layer1                          = "metal1"
                layer2                          = "metal4"
                minFringeCap                    = 8.93e-06
                nomFringeCap                    = 8.93e-06
                maxFringeCap                    = 8.93e-06
}

FringeCap       10 {
                layer1                          = "metal1"
                layer2                          = "metal5"
                minFringeCap                    = 6.43e-06
                nomFringeCap                    = 6.43e-06
                maxFringeCap                    = 6.43e-06
}

FringeCap       11 {
                layer1                          = "metal1"
                layer2                          = "metal6"
                minFringeCap                    = 5.02e-06
                nomFringeCap                    = 5.02e-06
                maxFringeCap                    = 5.02e-06
}


FringeCap       12 {
                layer1                          = "metal2"
                layer2                          = "metal3"
                minFringeCap                    = 4.021e-05
                nomFringeCap                    = 4.021e-05
                maxFringeCap                    = 4.021e-05
}

FringeCap       13 {
                layer1                          = "metal2"
                layer2                          = "metal4"
                minFringeCap                    = 1.461e-05
                nomFringeCap                    = 1.461e-05
                maxFringeCap                    = 1.461e-05
}

FringeCap       14 {
                layer1                          = "metal2"
                layer2                          = "metal5"
                minFringeCap                    = 8.93e-06
                nomFringeCap                    = 8.93e-06
                maxFringeCap                    = 8.93e-06
}

FringeCap       15 {
                layer1                          = "metal2"
                layer2                          = "metal6"
                minFringeCap                    = 6.43e-06
                nomFringeCap                    = 6.43e-06
                maxFringeCap                    = 6.43e-06
}

FringeCap       16 {
                layer1                          = "metal3"
                layer2                          = "metal4"
                minFringeCap                    = 4.021e-05
                nomFringeCap                    = 4.021e-05
                maxFringeCap                    = 4.021e-05
}

FringeCap       17 {
                layer1                          = "metal3"
                layer2                          = "metal5"
                minFringeCap                    = 1.461e-05
                nomFringeCap                    = 1.461e-05
                maxFringeCap                    = 1.461e-05
}

FringeCap       18 {
                layer1                          = "metal3"
                layer2                          = "metal6"
                minFringeCap                    = 8.93e-06
                nomFringeCap                    = 8.93e-06
                maxFringeCap                    = 8.93e-06
}

FringeCap       19 {
                layer1                          = "metal4"
                layer2                          = "metal5"
                minFringeCap                    = 4.021e-05
                nomFringeCap                    = 4.021e-05
                maxFringeCap                    = 4.021e-05
}

FringeCap       20 {
                layer1                          = "metal4"
                layer2                          = "metal6"
                minFringeCap                    = 1.461e-05
                nomFringeCap                    = 1.461e-05
                maxFringeCap                    = 1.461e-05
}

FringeCap       21 {
                layer1                          = "metal5"
                layer2                          = "metal6"
                minFringeCap                    = 4.021e-05
                nomFringeCap                    = 4.021e-05
                maxFringeCap                    = 4.021e-05
}

FringeCap       22 {
                layer1                          = "metal1"
                layer2                          = "metal1"
                minFringeCap                    = 1.4321e-04
                nomFringeCap                    = 1.4321e-04
                maxFringeCap                    = 1.4321e-04
}

FringeCap       23 {
                layer1                          = "metal2"
                layer2                          = "metal2"
                minFringeCap                    = 1.3114e-04
                nomFringeCap                    = 1.3114e-04
                maxFringeCap                    = 1.3114e-04
}

FringeCap       24 {
                layer1                          = "metal3"
                layer2                          = "metal3"
                minFringeCap                    = 1.022e-04
                nomFringeCap                    = 1.022e-04
                maxFringeCap                    = 1.022e-04
}

FringeCap       25 {
                layer1                          = "metal4"
                layer2                          = "metal4"
                minFringeCap                    = 1.3335e-04
                nomFringeCap                    = 1.3335e-04
                maxFringeCap                    = 1.3335e-04
}

FringeCap       26 {
                layer1                          = "metal5"
                layer2                          = "metal5"
                minFringeCap                    = 1.033e-04
                nomFringeCap                    = 1.033e-04
                maxFringeCap                    = 1.033e-04
}

FringeCap       27 {
                layer1                          = "metal6"
                layer2                          = "metal6"
                minFringeCap                    = 1.1289e-04
                nomFringeCap                    = 1.1289e-04
                maxFringeCap                    = 1.1289e-04
}

DesignRule	{
		layer1				= "contact"
		layer2				= "via"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "via2"
		layer2				= "via"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "via3"
		layer2				= "via2"
		minSpacing			= 0
		stackable			= 1
}

DesignRule      {
                layer1                          = "via4"
                layer2                          = "via3"
                minSpacing                      = 0
                stackable                       = 1
}

DesignRule      {
                layer1                          = "via5"
                layer2                          = "via4"
                minSpacing                      = 0
                stackable                       = 1
}

DesignRule      {
                layer1                          = "via1Blockage"
                layer2                          = "via"
                minSpacing                      = 0.28
                stackable                       = 0
}


DesignRule	{
		layer1				= "via2Blockage"
		layer2				= "via2"
                minSpacing                      = 0.28
                stackable                       = 0
}

DesignRule      {
                layer1                          = "via3Blockage"
                layer2                          = "via3"
                minSpacing                      = 0.28
                stackable                       = 0
}


DesignRule	{
		layer1				= "via4Blockage"
		layer2				= "via4"
                minSpacing                      = 0.28
                stackable                       = 0
}

DesignRule      {
                layer1                          = "via5Blockage"
                layer2                          = "via5"
                minSpacing                      = 0.28
                stackable                       = 0
}


PRRule		{
		rowSpacingTopTop		= 1.02
		rowSpacingTopBot		= 1.02
		rowSpacingBotBot		= 1.02
		abuttableTopTop			= 1
		abuttableTopBot			= 0
		abuttableBotBot			= 1
}

Tile     "unit" {
                width                           = 0.62
                height                          = 5.04 
}

