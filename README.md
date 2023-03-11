# UILibrary
# Hello there! i think you need help, with the ui lib welp, the ui lib is in beta so only expect 3 features witch are
# Loader, Working Buttons, Toggles.
# Here is an Example
   library:Load() -- optional loader
 local Window = library:CreateWindow("DIRT")-- creates a new window
 library:AddToggle("Example Toggle", function(state) -- creates a toggle
   print(state)
end)
 library:CreateButton("e", function() -- creates a button
   print("EA SPORTS")
 end)
