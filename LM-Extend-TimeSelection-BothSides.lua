--[[
 * ReaScript Name: LM-Extend-TimeSelection-BothSides
 * Description: Adjust Time Selection according to edit cursor position
 * Instructions: Make a Time Selection, move edit cursor, run the script
 * Screenshot: 
 * Author: Luis Marques
 * Author URI: 
 * Repository: 
 * Repository URI: 
 * File URI:
 * Licence: GPL v3
 * Forum Thread: 
 * Forum Thread URI: 
 * REAPER: 
 * Extensions: None
 * Version: 1.0
]]
 
 
--[[
 * v1.0 (16-06-2020)
	+ Initial Release
]]

local start_time, end_time = reaper.GetSet_LoopTimeRange2(0, false, false, 0, 0, false)


	mean = (start_time + end_time ) / 2
  
    cursor = reaper.GetCursorPosition()

  
  if cursor > end_time or cursor > mean then
    
    reaper.GetSet_LoopTimeRange2(0, true, false, start_time, cursor, false)

else

  if cursor < start_time or cursor < mean then

    reaper.GetSet_LoopTimeRange2(0, true, false, cursor, end_time, false)

end
end