# Terrascan

* Install Terrascan

```bash
$sudo curl -L "$(curl -s https://api.github.com/repos/tenable/terrascan/releases/latest | grep -o -E "https://.+?_Linux_x86_64.tar.gz")" > terrascan.tar.gz
$sudo tar -xf terrascan.tar.gz terrascan && rm terrascan.tar.gz
$sudo install terrascan /usr/local/bin && rm terrascan
$terrascan
```
* Step 1: Change Directory

```bash
cd /terraform-evaluation/lab2
```
* Step 2: Run terrascan tool 

```bash
$ terrascan scan
```
* Step 4: Comment line number 8 and Uncomment line number 9

  - publicly_accessible   = false    
  #publicly_accessible   = true 

* Check for the scanned result and fix the code and re run step 2

# Checkov


* Install Checkov tool

```bash
    $pip3 install checkov
```
* Step 1: Change Directory

```bash
cd /terraform-evaluation/lab1
```
* Step 2: Run Checkov tool 

```bash
$ checkov -d .
```

* Step 4: Comment line number 10 and Uncomment line number 11

  -minimum_password_length = 1
  #minimum_password_length = 14

* Step 5: Re-run Checkov
```bash
checkov -d .
```
* You can now see that we have CKV_AWS_10th check of ensuring Password lenght to be min 14 or greater characters being PASSED
  
* Step 6: You will see that the check is cleared 

* By this you can secure your code even before deploying the resources 
