#!/system/bin/sh

echo "[🚀] Đang kích hoạt Boost CPU & GPU (90–100%)..."

# Fake workload CPU 8 nhân
for i in $(seq 1 8); do
  while true; do
    dd if=/dev/zero of=/dev/null bs=1M count=1024
    sleep 0.5
  done &
done

# Fake workload GPU: mở trang shader nặng
am start -a android.intent.action.VIEW -d "https://www.babylonjs-playground.com/frame.html"

# Chờ GPU “nóng” rồi mở app chính
sleep 5

echo "[✓] Mở game WuWa..."
am start -n com.wuwa.game/.MainActivity
