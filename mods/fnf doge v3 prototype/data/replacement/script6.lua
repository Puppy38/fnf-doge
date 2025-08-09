function onCreatePost()
    -- Ensure the new images are loaded and replace the existing ones
    setProperty('sickIcon.visible', true)
    setProperty('goodIcon.visible', true)
    setProperty('badIcon.visible', true)

    -- Replace the sprite images
    setProperty('sickIcon.sprite', 'sick1.png')   -- Replace Sick image
    setProperty('goodIcon.sprite', 'good1.png')   -- Replace Good image
    setProperty('badIcon.sprite', 'bad1.png')     -- Replace Bad image
end
