#!/system/bin/sh

echo "[⚖️] Đang kích hoạt Chế độ Cân Bằng CPU & GPU (~60%)..."

# Fake workload nhẹ cho CPU 8 nhân
for i in $(seq 1 8); do
  while true; do
    dd if=/dev/zero of=/dev/null bs=1M count=256
    sleep 2
  done &
done

# Fake workload nhẹ cho GPU: trang shader nhẹ
am start -a android.intent.action.VIEW -d "https://playcanvas.com/viewer"

# Chờ ổn định rồi mở app
sleep 4


