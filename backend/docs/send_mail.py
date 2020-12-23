

import smtplib

def prompt(prompt):
        return input(prompt).strip()

fromaddr = "From: niceice220@qq.com"
toaddrs  = ["To: niceice220@aliyun.com"]

msg = ("From: %s\r\nTo: %s\r\n\r\n"
               % (fromaddr, ", ".join(toaddrs)))
print("Message length is", len(msg))

mail_host="smtp.qq.com" 
mail_user="niceice220@qq.com"   
mail_pass="zapjcofhqdlubgef"   

server = smtplib.SMTP()
server.connect(mail_host, 25)  
server.login(mail_user,mail_pass)
server.set_debuglevel(1)
server.sendmail(fromaddr, toaddrs, msg)
server.quit()
