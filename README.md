
# Installing CHR on VPS with Containerization Enabled

## Steps:

1. **Install CHR on Hyper-V**:
   - Enable containerization using the command:
     ```
     /system/device-mode/update container=yes
     ```
   - Perform a "hard" reboot of the VM.

2. **Verify that containerization is enabled**:
   - Execute the command:
     ```
     /system/device-mode/print
     ```

3. **Shutdown the VM and transfer the .vhdx image to the Ubuntu VPS**:
   - Use SCP for the transfer.

4. **Install necessary packages on the VPS**:
   - Run the command:
     ```
     apt install qemu-utils
     ```

5. **Convert the image**:
   - Execute the command:
     ```
     qemu-img convert -O raw /tmp/your_vhdx_file.vhdx /tmp/your_image.img
     ```

6. **Check the disk name**:
   - Run the command:
     ```
     lsblk
     ```

7. **Execute commands to write the image**:
   ```bash
   echo u > /proc/sysrq-trigger
   dd if=/tmp/your_image.img of=/dev/Xda bs=4M oflag=sync
   echo 1 > /proc/sys/kernel/sysrq
   echo b > /proc/sysrq-trigger

# Several useful scripts for RouterOS


## cert-update.rsc - script for obtaining/updating a LetsEncrypt certificate and applying it as the certificate for IKEv2






