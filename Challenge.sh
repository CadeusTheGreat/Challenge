#! /bin/bash

# Create group.
sudo addgroup challenge

# Create user.
sudo adduser temp

#Add user to group.
sudo usermod -aG challenge temp

# Create run.sh.
touch /.run.sh

# File permission.
chmod 774 /.run.sh

# Define language as bash.
echo "#! /bin/bash" >> /.run.sh

# Echo "Hello world!" to console.
echo "echo Hello world!" >> /.run.sh

# Login as temp.
echo "su temp" >> /.run.sh

# Run.
sudo /.run.sh
