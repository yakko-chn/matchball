wd = ["日", "月", "火", "水", "木", "金", "土"]
Time::DATE_FORMATS[:datetime] = "%Y/%m/%d(#{wd[Time.now.wday]})%H:%M"