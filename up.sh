#!/bin/bash
echo "--- Đang bắt đầu quá trình cập nhật web ---"
git add .

# Cho phép bạn nhập nội dung ghi chú, nếu không nhập sẽ lấy mặc định
read -p "Nhập nội dung cập nhật (hoặc nhấn Enter): " msg
if [ -z "$msg" ]; then
  msg="Cập nhật sản phẩm định kỳ"
fi

git commit -m "$msg"
git push origin main
echo "--- Đã đẩy lên GitHub thành công! ---"
