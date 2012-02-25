#-*- coding: gbk -*-
smsfile = open('newsms.txt','r')
export = open('export.txt','w')
i = 0
str = ''
for line in smsfile:
    strline = line[0:-1]
    strs = strline.split(',')
    id = strs[0]
    phone = strs[1]
    content = strs[2]
    if phone.startswith('+86'):
        phone = phone[3:]
    
    if content.startswith('lid:'):
        content = content[4:9]
    else:
        tmpstrs = content.split('@')
        tmpstr = tmpstrs[1]
        content = tmpstr[:5]
    i = i + 1
    print content + '----' + phone
    export.write('update sms set lid=' + content + ",mobile='" + phone + "' where id=" + id +";\n")
    str = str + ",'" + phone + "'"
print str
print i
export.close()
smsfile.close()
    
    
