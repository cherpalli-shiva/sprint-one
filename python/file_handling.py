# Open a file for reading 
with open("sample.txt", "r") as f:
    content = f.read()
    print(content)

# Write (overwrite file)
with open("sample.txt", "w") as f:
    f.write("Hello Devops!\n")

# Append
with open("sample.txt", "a") as f:
    f.write("Hey Another Devops Line.\n")
    f.write("Hey one more line for Devops")

# Read lines into a list 
with open("sample.txt","r") as f:
    lines = f.readlines()
    for line in lines:
        print(line.strip())