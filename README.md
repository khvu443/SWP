Có chỉnh sửa lại Route, Bill và Bill Detail
- Bill Detail thì sẽ bỏ extra time thành OrderOfRoute ( thứ tự của tuyến)
- Bill sẽ có 2 trường là Total và Date
+ Total là tổng giá tiền các tuyến
+ Date là ngày đi 
- Route thì bỏ trường esTime và sửa lại dữ liệu cũ thành mới 
+ Dữ liệu mới là tuyến lớn ko còn và sẽ là những tuyến nhỏ

Có liên kết giữa 2 bảng driver và route

----------------------------------------------------------------------------------

Có trang update tài khoản, drop down 

----------------------------------------------------------------------------------
- Tổng quan:
+ Có sửa lại vấn đề contains để check ID

- Driver Page:

![image](https://user-images.githubusercontent.com/83583888/199965668-cfec8664-6c0c-414e-9494-ec9c2c30ef77.png)

+ Driver page có thêm phần thay đổi vị trí hiện tại của driver -> fix ở topbar.jsp của driver
* Lưu ý: vẫn có lỗi hiển thị ở trang cho dù trong sql đã có thay đổi vị trí 


![image](https://user-images.githubusercontent.com/83583888/199964716-dba34003-d3a0-4243-aa04-af77f149914a.png)
+ Phần chart sẽ đc thay thế vấn đề load dữ liệu chậm bằng cách ko cho lưu ra thành 1 file .json mà thay vào đó dùng content type của servlet 


![image](https://user-images.githubusercontent.com/83583888/199965164-c54da1b3-8e13-4127-92ae-682fa85aedd0.png)
+ js của các chart là area và bar của  có sự thay đổi


![image](https://user-images.githubusercontent.com/83583888/199965303-006dac83-a1b1-49b3-873c-0d7cf48787e3.png)

-Admin Page:
+ Phần dashboard đã hoàn thiện nhưng detail bill ko làm do chưa có trang để hiển thị detail
![image](https://user-images.githubusercontent.com/83583888/199966263-b494108d-85a7-4e15-914d-c6be7ca33f36.png)
