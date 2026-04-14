import subprocess

# Step 1: Download
subprocess.run(["curl", "-O", "https://sshx.io/get"], check=True)

# Step 2: Inspect (optional)
subprocess.run(["head", "-n", "20", "get"], check=True)

# Step 3: Run
subprocess.run(["sh", "get", "run"], check=True)
