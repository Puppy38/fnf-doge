function onCreate()

    makeAnimatedLuaSprite('grave', ('grave'), 500, 500);

    luaSpriteAddAnimationByPrefix('grave', 'grave', 'grave', 0, false);

    luaSpriteAddAnimationByPrefix('grave', 'graveleft', 'graveleft', 0, false);

    luaSpriteAddAnimationByPrefix('grave', 'gravedown', 'gravedown', 0, false);

    luaSpriteAddAnimationByPrefix('grave', 'graveup', 'graveup', 0, false);

    luaSpriteAddAnimationByPrefix('grave', 'graveright', 'graveright', 0, false);

    luaSpritePlayAnimation('grave', 'grave');

    addLuaSprite('grave', false);

end

function onBeatHit()
    -- triggered 4 times per section
    if curBeat % 2 == 0 then
        luaSpritePlayAnimation('grave', 'grave');

    end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
    if noteData == 0 then
        luaSpritePlayAnimation('grave', 'graveleft');
    end
    if noteData == 1 then
        luaSpritePlayAnimation('grave', 'gravedown');
    end
    if noteData == 2 then
        luaSpritePlayAnimation('grave', 'graveup');
    end
    if noteData == 3 then
        luaSpritePlayAnimation('grave', 'graveright');
    end
end