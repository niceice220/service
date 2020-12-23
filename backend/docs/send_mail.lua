
local smtp = require("socket.smtp")
from = "niceice220@qq.com" --发件人
mesgt = {
        headers = {
                to = "niceice220@aliyun.com", --收件人
                subject = "This is Mail Title" --主题
        },
        body = "This is Mail Content."
}
r, e = smtp.send{
        from = from,
        source = smtp.message(mesgt),
        server = "smtp.qq.com",
        user = "niceice220@qq.com",
        password = "zapjcofhqdlubgef"
}
if not r then
        print(e)
else
        print("send ok!")
end
