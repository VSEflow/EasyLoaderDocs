# Advanced Features

## :octicons-command-palette-16: Command Line Interface

### Description
The VSE EasyLoader 6.0.5 Headless Mode is a command-line program designed to facilitate the uploading of XML files to a device via a serial port. This program eliminates the need for a graphical user interface, allowing for automated and batch processing of file uploads.

![](img/cmd1.png)

### Usage
To use the VSE EasyLoader 6.0.5 Headless Mode, execute the program with the following command-line options:

``` batch
"VSE EasyLoader Reloaded.exe" [options]
```

### Options
The program supports the following command-line options:

- `--com <com>`: Specifies the COM port to use for communication. The `<com>` parameter should be replaced with the specific COM port number, such as COM23. This option is required for successful communication with the device.

- `--xml <xml>`: Specifies the path to the XML file containing the data to upload. The `<xml>` parameter should be replaced with the file path. It is necessary to provide a valid XML file for successful upload.

- `--version`: Displays the version information for the program.

- `-?, -h, --help`: Shows the help and usage information for the program.

### Example Usage
Here are a few examples of how to use the VSE EasyLoader 6.0.5 Headless Mode program:

**Uploading an XML file to a device on COM23:**

``` batch
"VSE EasyLoader Reloaded.exe" --com COM23 --xml "C:/path/to/file.xml"
```

Please ensure that you have the necessary privileges to access the specified COM port and that the XML file is correctly formatted to ensure a successful upload.

### Obtaining the result / success status of the program

Please note that when using the VSE EasyLoader 6.0.5 Headless Mode, the output or result may not be displayed on the console by default. To capture the output, it is recommended to use the `>` operator in the command line to redirect the output to a text file. For example:

```batch 
"VSE EasyLoader Reloaded.exe" --com COM23 --xml "C:/path/to/file.xml" > output.txt
```

By using the `>` operator and specifying a file name (`output.txt` in the example above), you can save the program's output to a text file for later reference. Without redirecting the output, the program will still function properly, but no output will be shown on the console.

#### Example batch file for uploading multiple files to multiple devices

This example batch file demonstrates how to automate the process of uploading multiple files to multiple devices using the VSE EasyLoader 6.0.5 Headless Mode. By leveraging the capabilities of a batch file, you can streamline and simplify the uploading process, saving time and effort.

To use this batch file, follow these steps:

1. Open Editor or a similiar text editing program to create a new file.

2. Paste the following code into the text editor:
``` batch
@echo off
echo VSE EasyLoader v6.0.5 Batch Upload (3x)
echo:

cd /D "%LOCALAPPDATA%\VSE EasyLoader"
REM === CUSTOMER INFO ===
REM === CHANGE THE COM PORTS AND PARAMETER FILE PATHS IN THE FOLLOWING 3 COMMANDS ===

echo Starting upload of first device...
START /B "" "VSE EasyLoader Reloaded.exe" --com "COM8" --xml "C:\tmp\upload.xml" > ezldr_log1.txt
echo Starting upload of second device...
START /B "" "VSE EasyLoader Reloaded.exe" --com "COM9" --xml "C:\tmp\upload.xml" > ezldr_log2.txt
echo Starting upload of third device...
START /B "" "VSE EasyLoader Reloaded.exe" --com "CO10" --xml "C:\tmp\upload.xml" > ezldr_log3.txt

REM Check process completion
echo Waiting for EasyLoader processes to finish...
:loop
tasklist /fi "imagename eq VSE EasyLoader Reloaded.exe" |find ":" > nul
if errorlevel 1 goto loop

echo Waiting for output logs to finish writing.
:chk
REM Wait for 1 second
timeout /T 1 /NOBREAK > nul

REM Check if all instances have finished
if not exist ezldr_log1.txt goto chk
if not exist ezldr_log2.txt goto chk
if not exist ezldr_log3.txt goto chk

REM Check return codes
set success=true
findstr /C:"Success! :)" ezldr_log1.txt > nul || set success=false 
findstr /C:"Success! :)" ezldr_log2.txt > nul || set success=false
findstr /C:"Success! :)" ezldr_log3.txt > nul || set success=false
 
if %success%==true (
  echo SUCCESS: All uploads successful.
) else (
  echo ERROR: At least one upload failed.
)

REM Clean up output files
del ezldr_log1.txt
del ezldr_log2.txt
del ezldr_log3.txt

REM Keep console window open
echo:
pause
```

2. Update the batch file with the necessary information:
   - Modify the 3 commands file to include the COM ports of the devices you wish to upload files to. Each COM port should be listed on a separate line.
   - Set the path to the XML files you want to upload into the specific devices.

3. Save the file to a location of your choice. Make sure the file ending is `*.bat`.

4. Execute the batch file by double clicking it.

#### Explaination what the batch file does

This batch file automates the upload process for three devices using VSE EasyLoader v6.0.5. Here's a description of what the batch file does:

1. The `@echo off` command ensures that the commands executed in the batch file are not echoed in the console.

2. The `echo` commands display information about the batch upload process, such as the version of VSE EasyLoader being used and the number of devices being uploaded.

3. The `cd /D "%LOCALAPPDATA%\VSE EasyLoader"` command changes the current directory to the location where VSE EasyLoader is installed.

4. The three `START /B` commands initiate the upload process for each device. Each command launches the "VSE EasyLoader Reloaded.exe" program with specific command-line parameters, including the COM port and the path to the XML file to be uploaded. The output logs for each upload are redirected to separate text files (`ezldr_log1.txt`, `ezldr_log2.txt`, `ezldr_log3.txt`).

5. The batch file then waits for all the EasyLoader processes to finish using a loop and the `tasklist` command. Once all processes have completed, the batch file proceeds to the next step.

6. The batch file waits for a short duration using the `timeout` command to ensure that the output logs finish writing.

7. It then checks if the output logs for all three devices exist. If any of the logs are missing, it returns to the previous step to continue waiting for them to be generated.

8. The batch file checks the return codes in the output logs to determine the success or failure of each upload. If any of the logs indicate a failure, the variable `success` is set to `false`.

9. Based on the value of the `success` variable, the batch file displays either a success message indicating that all uploads were successful or an error message indicating that at least one upload failed.

10. The output log files (`ezldr_log1.txt`, `ezldr_log2.txt`, `ezldr_log3.txt`) are then deleted to clean up the files generated during the upload process.

11. Finally, the `echo` and `pause` commands keep the console window open, allowing the user to view the output before closing it.

Please note that to use this batch file, you should make the necessary modifications to the COM ports and file paths in the three upload commands to match your specific configuration.

## :octicons-cloud-offline-16: Creating offline presets

EasyLoader can also be used to create a configuration file (`*.easyConf`-File) without a device connection. 

In order to do this, you first have to go to the **About EasyLoader** tab using the sidebar. Then click on the **SETTINGS MENU** to open a context menu where you select the option `Simulate device connection for *.easyConf creation`. 

![offline1](img/offline1.png)

![offline2](img/offline2.png)

Now select the device type that you want to create the Configuration for. The Easy Configuration tab then switches to the right layout for the device specific settings. 

![offline3](img/offline3.png)

You can now switch to the **Easy Configuration** tab and create your preset. Use the :material-content-save: Save button at the top to store your settings in a `*.easyConf` file.

![offline4](img/democonf.png)
