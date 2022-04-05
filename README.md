# Installwinlogbeat-sysmon
Install winlogbeat and sysmon via powershell simply

Các file chạy powershell đơn giản để máy tự chạy cài đặt winlogbeat và sysmon. Phục vụ cho cài đặt trên cái memberserver cần theo dõi, giám sát an toàn thông tin 

# Cài đặt winlogbeat
Cần quyền admin
1. Di chuyển folder winlogbeat từ desktop đến Program Files
2. Chạy các lệnh cài đặt
3. Kết thúc chương trình

# Cài đặt Sysmon
Cần quyền admin
1. Mở folder chứa sysmon.exe 
2. Chạy file cài đặt (tuỳ thuộc vào OS 64-bit hay 32-bit mà dùng sysmon64.exe hay sysmon.exe)
3. Kết thúc chương trình

#Sysmon configuration file | Sysmon-config
Đây là 1 file đã được sửa đổi để cho phù hợp với những gì mình muốn config từ file gốc @SwiftOnSecurity's [sysmon config](https://github.com/SwiftOnSecurity/sysmon-config).
