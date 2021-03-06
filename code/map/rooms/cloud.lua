-- This controls the randomness aspect of distribution.
local function randomness()
    return 0.1 + 0.5*math.random()
end

-- This controls the chances of a given ground type appearing.
local function randomcloud()
    local roll = math.random(1,4)
    if roll == 1 then
        return GROUND.CLOUDLAND
    elseif roll == 2 then 
        return GROUND.CLOUDSWIRL
    else
        return GROUND.POOPCLOUD
    end
end	

local function randomaurora()
    local roll = math.random(1,4)
    if not roll == 1 then
        return GROUND.AURORA
    else 
        return GROUND.AURORATWO
    end
end	

local function randomsnow()
    local roll = math.random(1,4)
    if roll == 1 then
        return GROUND.SNOW
    else 
        return GROUND.SNOWTWO
    end
end	

local function randomrainbow()
    local roll = math.random(1,4)
    if roll == 1 then
        return GROUND.RAINBOW
    else 
        return GROUND.RAINBOWTWO
    end
end

BindGlobal()

-------------------------------------------------------------------------------

--Generic Biome Rooms

--Generic BG
TheMod:AddRoom("BGCloud", {
    colour={r=.5,g=.5,b=.5,a=1},
    value = randomcloud(),
    contents = {
        distributepercent = randomness(),
        distributeprefabs = {
            skyflower = 1,
        },
        countprefabs = {
            tea_bush = 1,
            thunder_tree = math.random(2,3),
            sheepherd = math.random(2,4),
            sheep = math.random(3,4),
            crystal_light = math.random(2,3),
            golden_sunflower = 2,
        }		
    }
})

-------------------------------------------------------------------------------

--Generic Spawnzone
TheMod:AddRoom("BeanstalkSpawn", {
    colour={r=.2,g=.2,b=.2,a=1},
    value = randomcloud(),
    contents =  {
        distributepercent = 0.4,
        distributeprefabs = {
            skeleton = 0.01,
            skyflower = 1.1,
        },
        countprefabs = {
            tea_bush = math.random(2,5),
            thunder_tree = math.random(2,3),
            sheepherd = math.random(1,4),
            crystal_light = math.random(2,3),
        }
    }
})

-------------------------------------------------------------------------------

--Skyflowers
TheMod:AddRoom("SkyflowerGarden", {
    colour={r=.2,g=.2,b=.2,a=1},
    value = randomcloud(),
    contents = {
        custom_tiles={
            GeneratorFunction = RUNCA.GeneratorFunction,
            data = {
                iterations=6, 
                seed_mode=CA_SEED_MODE.SEED_WALLS, 
                num_random_points=1,
                translate={	
                    {tile=GROUND.CLOUDSWIRL, items={"sheep"}, item_count=3},
                    {tile=GROUND.CLOUDSWIRL, items={"cloud_bush"}, item_count=5},
                    {tile=GROUND.CLOUDSWIRL, items={"skytrap"}, item_count=1},
                },
            },
        },	
        distributepercent = randomness(),
        distributeprefabs = {
            skyflower = 0.1,
            cloud_bush = 0.02,
        },
        countprefabs= {
            weavernest = 3,
            sheepherd = 3,
            skytrap = 1,
            golden_rose = 3,
        }			
    },
})

-------------------------------------------------------------------------------

--Sheep
TheMod:AddRoom("SheepHerd", {
    colour={r=.2,g=.2,b=.2,a=1},
    value = randomcloud(),
    contents = {
        distributepercent = randomness(),
        distributeprefabs = {
            sheep = 0.1,
            sheepherd = 0.07,
            skyflower = 0.6,
        },
        countprefabs= {
            sheepherd = 4,
            crystal_relic = 1,
            weavernest = 1,
        }	
    },
})

-------------------------------------------------------------------------------

--Cloudbushes
TheMod:AddRoom("BushGarden", {
    colour={r=.2,g=.2,b=.2,a=1},
    value = randomcloud(),
    contents = {
        distributepercent = randomness(),
        distributeprefabs = {
            cloud_bush = 0.04,
            tea_bush = 0.02,
            skyflower = 0.5,
            frog = 0.01,
        },
        countprefabs= {
            weavernest = 1,
        }		
    },
})

-------------------------------------------------------------------------------

--Sunflowers
TheMod:AddRoom("SunflowerGarden", {
    colour={r=.2,g=.2,b=.2,a=1},
    value = randomcloud(),
    contents = {
        distributepercent = randomness(),
        distributeprefabs = {
            skyflower = 0.5,
            golden_sunflower = 0.5,
        },
        countprefabs= {
            golden_rose = 1,
            golden_sunflower = math.random(15,30),
        }       
    },
})

-------------------------------------------------------------------------------
    
--Snow Biome Rooms

--Snow BG
TheMod:AddRoom("BGSnow", {
    colour={r=1,g=1,b=1,a=1},
    value = randomsnow(),
    contents = {
        distributepercent = randomness(),
        distributeprefabs = {
            thunder_tree = 0.02,
            ball_lightning = 0.001,
            frog = 0.002,
            skyflower = 0.1,
        },
    }
})

-------------------------------------------------------------------------------

--Thunder Trees
TheMod:AddRoom("Thunder_Forest", {
    colour={r=.2,g=.2,b=.2,a=1},
    value = randomsnow(),
    contents = {
        distributepercent = randomness(),
        distributeprefabs = {
            thunder_tree = 0.8,
            skyflower = 0.2,
        },
        countprefabs= {
            thunder_tree = 50,
            weavernest = 4,
            crystal_black = 4,
            crystal_quartz = math.random(4,6),
            live_gnome = 2,
        }
    }
})

-------------------------------------------------------------------------------

--Live gnomes.
TheMod:AddRoom("Gnome_Forest", {
    colour={r=.2,g=.2,b=.2,a=1},
    value = randomsnow(),
    contents = {
        distributepercent = randomness(),
        distributeprefabs = {
            thunder_tree = 0.8,
            skyflower = 0.2,
        },
        countprefabs= {
            thunder_tree = 50,
            crystal_black = 1,
            crystal_quartz = 4,
            live_gnome = 4,
            gnome_plot = 1,
        }
    }
})

-------------------------------------------------------------------------------

TheMod:AddRoom("Sea_Mimic", {
    colour={r=.2,g=.2,b=.2,a=1},
    value = randomsnow(),
    contents = {
        distributepercent = randomness(),
        distributeprefabs = {
            cloud_algae = 0.15,
            cloud_coral = 0.15,
            thunder_tree = 0.09,
        },
        countprefabs = {
            crystal_water = math.random(1,2),
        }
    },
})

-------------------------------------------------------------------------------

TheMod:AddRoom("Blob_Room", {
    colour={r=.2,g=.2,b=.2,a=1},
    value = randomsnow(),
    contents = {
        distributepercent = randomness(),
        distributeprefabs = {
            cloud_fruit_tree = 0.025,
            jellyshroom_blue = 0.08,
        },
        countprefabs = {
            cloud_blob = math.random(1,4),
        }
    },
})

-------------------------------------------------------------------------------

--Aurora Biome Rooms

--Aurora BG
TheMod:AddRoom("BGAurora", {
    colour={r=1,g=1,b=1,a=1},
    value = randomaurora(),
    contents =  {
        custom_tiles={
            GeneratorFunction = RUNCA.GeneratorFunction,
            data = {iterations=1, seed_mode=CA_SEED_MODE.SEED_CENTROID, num_random_points=1,
                        translate={	{tile=randomaurora(), items={"alien"}, item_count=3},
                                    {tile=randomaurora(), items={"skeleton"}, item_count=5},
                                    {tile=randomaurora(), items={"cloudcrag"}, item_count=17},
                                    {tile=GROUND.AURORATWO, items={"dragonblood_tree"}, item_count=6},
                                    {tile=randomaurora(), items={"skyflower"}, item_count=30},
                            },
                    centroid= 	{tile=GROUND.SNOW, items={"scarecrow"}, item_count=1},
            },
        },
        distributepercent = randomness(),
        distributeprefabs = {
            alien = 0.017,		
            skeleton = 0.0007,
            gustflower = 0.03,
            dragonblood_tree = 0.07,
            cloudcrag = 0.04,
        },
        countprefabs = {
            cloud_blob = math.random(1,4),
        }
    }
})

-------------------------------------------------------------------------------

--Vine Introduction
TheMod:AddRoom("Vine_Room", {
    colour={r=.5,g=.5,b=.5,a=1},
    value = randomaurora(),
    contents = {
        distributepercent = randomness(),
        distributeprefabs = {
            dragonblood_tree = 0.3,
            beanlet = 0.07,
            gustflower = 0.2,
            skeleton = 0.07,
        },
        countprefabs = {
            beanstalk_vine = math.random(1,2),
        }
    },
})

-------------------------------------------------------------------------------

--Cloudcrags
TheMod:AddRoom("CragLanding", {
    colour={r=.3,g=.3,b=.8,a=1},
    value = randomcloud(),
    contents = {
        distributepercent = randomness(),
        countprefabs = {
            goose = math.random(1,3),
            cloud_fruit_tree = math.random(2,6),
            cloudcrag = math.random(16,20),
        }	
    },
})

-------------------------------------------------------------------------------

--Longbills
TheMod:AddRoom("Bigbird_Nest", {
    coulour={r=.7,g=.5,b=.5,a=1},
    value = randomaurora(),
    contents = {
        distributepercent = randomness(),
        distributeprefabs = {
            dragonblood_tree = 0.0001,
            skyflower = 0.1,
        },
        countprefabs = {
            goose = 6,
        }		
    },
})

-------------------------------------------------------------------------------

--Beanlets
TheMod:AddRoom("Beanlet_Den", {
    coulour={r=.2,g=.2,b=.2,a=1},
    value = randomaurora(),
    contents = {
        distributepercent = 0.6*randomness(),
        distributeprefabs = {
            skyflower = 0.1,
            dragonblood_tree = 0.01,
        },
        countprefabs = {
            goose = 1,
            beanlet_hut = math.random(4,6),
            beanlet = math.random(4,10),
            bean_giant = 1,
        }
    },
})


-------------------------------------------------------------------------------

--Rainbow Biome Rooms

--Rainbow BG
TheMod:AddRoom("BGRainbow", {
    colour={r=1,g=1,b=1,a=1},
    value = randomrainbow(),
    contents = {
        distributepercent = randomness(),
        distributeprefabs = {
            jellyshroom_red = 0.02,
            jellyshroom_blue = 0.03,
            jellyshroom_green = 0.04,
        },
        countprefabs= {
            gummybear_den = math.random(2,4),
            crystal_relic = 1,
        }
    },
})

-------------------------------------------------------------------------------

--Marshmallows
TheMod:AddRoom("Rainbow_Room", {
    colour={r=.2,g=.2,b=.2,a=1},
    value = randomrainbow(),
    contents = {
        distributepercent = randomness(),
        distributeprefabs = {
            hive_marshmallow = 0.03,
            jellyshroom_red = 0.02,
            bee_marshmallow = 0.1,
            skyflower = 0.1,		
        },
        countprefabs= {
            crystal_white = 4,
            crystal_relic = 1,
        }
    },
})

-------------------------------------------------------------------------------

--Crystals
TheMod:AddRoom("Crystal_Fields", {
    colour={r=.2,g=.2,b=.2,a=1},
    value = randomrainbow(),
    contents = {
        custom_tiles={
            GeneratorFunction = RUNCA.GeneratorFunction,
            data = {iterations=12, seed_mode=CA_SEED_MODE.SEED_RANDOM, num_random_points=2,
                        translate={	{tile=GROUND.RAINBOW, items={"crystal_spire"}, item_count=4},
                                    {tile=GROUND.RAINBOW, items={"crystal_black"},	item_count=1},
                                    {tile=GROUND.RAINBOW, items={"crystal_white"}, item_count=1},
                                },
            },
        },
        distributepercent = randomness(),
        distributeprefabs = {
            jellyshroom_green = 0.05,
            owl = 0.007,
        },
        countprefabs= {
            crystal_black = 4,
            crystal_relic = 1,
            crystal_light = 5,
            crystal_spire = 5,
            semiconductor = 1,
        }
    },
})

-------------------------------------------------------------------------------

--Flying Fish
TheMod:AddRoom("Fish_Fields", {
    colour={r=.2,g=.2,b=.2,a=1},
    value = randomcloud(),
    contents = {
        distributepercent = randomness(),
        distributeprefabs = {
            cloudcrag = 0.4,
            jellyshroom_blue = 0.05,
        },
        countprefabs= {
            crystal_water = 4,
        }
    },
})

-------------------------------------------------------------------------------