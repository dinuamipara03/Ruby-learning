require 'fcntl'

fd = IO.sysopen('tempfile',
                Fcntl::O_WRONLY | Fcntl::O_EXCL | Fcntl::O_CREAT)
f = IO.open(fd)
f.syswrite("TEMP DATA")
f.close