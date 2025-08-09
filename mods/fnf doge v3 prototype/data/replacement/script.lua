function opponentNoteHit()
    local health = getProperty('health')
    
    -- Check the difficulty and adjust health loss accordingly
    local difficulty = getProperty('difficulty')

    if difficulty == 0 then  -- Easy
        -- Do nothing, health stays the same
        return
    elseif difficulty == 1 then  -- Normal
        if health > 0.1 then
            setProperty('health', health - 0.02)
        end
    elseif difficulty == 2 then  -- Hard
        if health > 0.1 then
            setProperty('health', health - 0.06)
        end
    end
end
