# Day 27 TCP port scanner

In Bash, you can check whether a TCP port is accessible by using the special /dev/tcp/HOST/PORT syntax. The timeout 1 command limits the connection attempt to one second, preventing the script from waiting indefinitely. The if ...; then statement allows the script to perform different actions depending on whether the connection succeeds or fails.

## Task

Write a Bash script that accepts a hostname or IP address as the first argument and checks the following TCP ports:
```
22, 23, 53, 80, 443, and 3389
```
For each port, the script should:
- attempt to establish a TCP connection,
- wait for a maximum of 1 second,
- display [OPEN] if the connection succeeds,
- display [CLOSED] if the connection fails.

## Expected Output
When the script is executed with a hostname, for example:
```
./scan.sh example.com
```
the output should look similar to:
```
[OPEN] 22
[CLOSED] 23
[CLOSED] 53
[OPEN] 80
[OPEN] 443
[CLOSED] 3389
```
[TCP port scanner](script.sh) 

## Bonus - Nmap

The script was extended with Nmap to provide more reliable and detailed port scanning than a basic Bash TCP connection test. Nmap allows the script to identify different port states, such as open, closed, and filtered, while Bash handles the automation and presentation of the results.

[Bash + Nmap](script-2.sh)