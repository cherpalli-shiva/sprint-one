import subprocess

result = subprocess.run(["ls", "-l"], capture_output=True, text=True)
print(result.stdout)

cmd = ["kubectl", "get", "pods"]
result = subprocess.run(cmd, capture_output=True, text=True)

if result.returncode == 0:
    with open("pod_status.txt", "w") as f:
        f.write(result.stdout)
    print("pods:\n", result.stdout)
else:
    with open("pod_status.txt","w") as f:
        f.write(result.stderr)
    print("Error:\n", result.stderr)
