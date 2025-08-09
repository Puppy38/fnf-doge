function onCreatePost()
    -- Set downScroll preference
    local dS = getPropertyFromClass("ClientPrefs", "downScroll")
    local gAA = getPropertyFromClass("ClientPrefs", "globalAntialiasing")
    
    -- Adjust cY based on downScroll
    local cY
    if dS then
        cY = (720 * avZoom) + (26 * 6)
    else
        cY = (720 * avZoom) + (26 * 3)
    end

    -- Create score counter (new score, combo breaks, and accuracy)
    -- Score
    makeLuaText("scoreCounter", "Score: 0", 0, 500, cY - (26 * 3))
    setTextAlignment("scoreCounter", "left")
    setTextFont("scoreCounter", dFont)
    setTextSize("scoreCounter", 22)
    
    -- Combo Breaks (Misses)
    makeLuaText("comboBreaksCounter", "Combo Breaks: 0", 0, 500, cY - (26 * 2))
    setTextAlignment("comboBreaksCounter", "left")
    setTextFont("comboBreaksCounter", dFont)
    setTextSize("comboBreaksCounter", 22)
    
    -- Accuracy
    makeLuaText("accuracyCounter", "Accuracy: 0%", 0, 500, cY - (26))
    setTextAlignment("accuracyCounter", "left")
    setTextFont("accuracyCounter", dFont)
    setTextSize("accuracyCounter", 22)
    
    -- Apply word wrapping and auto-size properties
    setProperty("scoreCounter.wordWrap", false)
    setProperty("scoreCounter.autoSize", true)
    setProperty("comboBreaksCounter.wordWrap", false)
    setProperty("comboBreaksCounter.autoSize", true)
    setProperty("accuracyCounter.wordWrap", false)
    setProperty("accuracyCounter.autoSize", true)
    
    -- Apply antialiasing settings to each text element
    setProperty("scoreCounter.antialiasing", gAA)
    setProperty("comboBreaksCounter.antialiasing", gAA)
    setProperty("accuracyCounter.antialiasing", gAA)
    
    -- Set scroll factor and object camera for each element (necessary for HUD elements)
    setScrollFactor("scoreCounter", 0, 0)
    setObjectCamera("scoreCounter", "hud")
    
    setScrollFactor("comboBreaksCounter", 0, 0)
    setObjectCamera("comboBreaksCounter", "hud")
    
    setScrollFactor("accuracyCounter", 0, 0)
    setObjectCamera("accuracyCounter", "hud")
    
    -- Add the new elements to the screen
    addLuaText("scoreCounter", true)
    addLuaText("comboBreaksCounter", true)
    addLuaText("accuracyCounter", true)
    
    -- Hide default score, misses, and rating
    setProperty("scoreTxt.visible", false)
    setProperty("missesTxt.visible", false)
    setProperty("ratingTxt.visible", false)
end

function onUpdate(elapsed)
    -- Update the score counter dynamically
    local score = getProperty('score')
    setTextString("scoreCounter", "Score: " .. score)
    
    -- Update the combo breaks counter (misses)
    local misses = getProperty('misses')
    setTextString("comboBreaksCounter", "Combo Breaks: " .. misses)
    
    -- Update the accuracy counter (rating)
    local accuracy = getProperty('rating')
    setTextString("accuracyCounter", "Accuracy: " .. accuracy .. "%")  -- Assuming rating is percentage-based
end
