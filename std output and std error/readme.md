# standard output and standard error in linux

### there are two types of output

- standard output ( 1> )
- standard error  ( 2> )


### example

- With 2> you redirect standard error messages. Example: 2>/dev/null or 2>/home/user/error.log.
- With 1> you redirect standard output.
- With &> you redirect both standard error and standard output.

### Why do we need ?

Since there are two types of output, **standard output** and **standard error**, the first use case is to filter out one type or the other. It’s easier to understand through a practical example. Let’s say we’re looking for a string in **/sys** to find files that refer to power settings.

    grep -r power /sys/

There will be a lot of files that a regular, non-root user cannot read. This will result in many **Permission denied** errors.

These clutter the output and make it harder to spot the results that we’re looking for. Since **Permission denied** errors are part of **stderr**, we can redirect them to **/dev/null.**

    grep -r power /sys/ 2>/dev/null
    
    
After running this, we can see, this is much easier to read.

In other cases, it might be useful to do the reverse: filter out **standard output** so we can only see errors.

    ping google.com 1>/dev/null
    
    
We can redirect both stdout and stderr to two different locations.

    ping google.com 1>/dev/null 2>error.log

In this case, stdout messages won’t be displayed at all, and error messages will be saved to the **error.log** file.

### Redirect All Output to **/dev/null**
Sometimes it’s useful to get rid of all output. There are two ways to do this.

    grep -r power /sys/ >/dev/null 2>&1

The string **>/dev/null** means **send stdout to /dev/null**, and the second part, **2>&1**, means send **stderr to stdout**. In this case we have to refer to stdout as **&1** instead of simply **1.** Writing **2>1** would just redirect **stdout** to a file named *1.*

What’s important to note here is that the order is important. If we reverse the redirect parameters like this:
    
    grep -r power /sys/ 2>&1 >/dev/null
    
it won’t work as intended. That’s because as soon as 2>&1 is interpreted, stderr is sent to stdout and displayed on screen. Next, stdout is supressed when sent to “/dev/null.” The final result is that you will see errors on the screen instead of suppressing all output. 
If you can’t remember the correct order, there’s a simpler redirect that is much easier to type:

    grep -r power /sys/ &>/dev/null





In some scenarios, we may want to see how fast we can download from a server. But we don’t want to write to our disk unnecessarily. Simply enough, don’t write to a regular file, write to “/dev/null.”

    wget -O /dev/null http://ftp.halifax.rwth-aachen.de/ubuntu-releases/18.04/ubuntu-18.04.2-desktop-amd64.iso


[credit maketecheasier](https://www.maketecheasier.com)
    
    
    
    
    
    
    
