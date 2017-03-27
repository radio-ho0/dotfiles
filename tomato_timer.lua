#!/usr/bin/lua

-- mins
work_time = 30 
rest_time = 5 
work_string = "flow"
rest_string = "zz"

function sleep(n)
    os.execute("sleep " .. tonumber(n) )
end

while true do
    os.execute("notify-send " .. work_string );
    print("goto flow " .. os.date());
    sleep( work_time * 60);
    os.execute("notify-send " .. rest_string );
    print("goto rest " .. os.date());
    sleep( rest_time * 60);
end
