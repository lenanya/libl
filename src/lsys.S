# access to syscalls so i can call them from C
# dont use any that have >2 arguments, because C and assembly use different
# registers for the third one (C: %rcx, asm: %r10) (fixed in _mmap)
.global _read
.global _write
.global _open
.global _close
.global _stat
.global _fstat
.global _lstat
.global _poll
.global _lseek
.global _mmap
.global _mprotect
.global _munmap
.global _brk
.global _rt_sigaction
.global _rt_sigprocmask
.global _rt_sigreturn
.global _ioctl
.global _pread64
.global _pwrite64
.global _readv
.global _writev
.global _access
.global _pipe
.global _select
.global _sched_yield
.global _mremap
.global _msync
.global _mincore
.global _madvise
.global _shmget
.global _shmat
.global _shmctl
.global _dup
.global _dup2
.global _pause
.global _nanosleep
.global _getitimer
.global _alarm
.global _setitimer
.global _getpid
.global _sendfile
.global _socket
.global _connect
.global _accept
.global _sendto
.global _recvfrom
.global _sendmsg
.global _recvmsg
.global _shutdown
.global _bind
.global _listen
.global _getsockname
.global _getpeername
.global _socketpair
.global _setsockopt
.global _getsockopt
.global _clone
.global _fork
.global _vfork
.global _execve
.global _exit
.global _wait4
.global _kill
.global _uname
.global _semget
.global _semop
.global _semctl
.global _shmdt
.global _msgget
.global _msgsnd
.global _msgrcv
.global _msgctl
.global _fcntl
.global _flock
.global _fsync
.global _fdatasync
.global _truncate
.global _ftruncate
.global _getdents
.global _getcwd
.global _chdir
.global _fchdir
.global _rename
.global _mkdir
.global _rmdir
.global _creat
.global _link
.global _unlink
.global _symlink
.global _readlink
.global _chmod
.global _fchmod
.global _chown
.global _fchown
.global _lchown
.global _umask
.global _gettimeofday
.global _getrlimit
.global _getrusage
.global _sysinfo
.global _times
.global _ptrace
.global _getuid
.global _syslog
.global _getgid
.global _setuid
.global _setgid
.global _geteuid
.global _getegid
.global _setpgid
.global _getppid
.global _getpgrp
.global _setsid
.global _setreuid
.global _setregid
.global _getgroups
.global _setgroups
.global _setresuid
.global _getresuid
.global _setresgid
.global _getresgid
.global _getpgid
.global _setfsuid
.global _setfsgid
.global _getsid
.global _capget
.global _capset
.global _rt_sigpending
.global _rt_sigtimedwait
.global _rt_sigqueueinfo
.global _rt_sigsuspend
.global _sigaltstack
.global _utime
.global _mknod
.global _uselib
.global _personality
.global _ustat
.global _statfs
.global _fstatfs
.global _sysfs
.global _getpriority
.global _setpriority
.global _sched_setparam
.global _sched_getparam
.global _sched_setscheduler
.global _sched_getscheduler
.global _sched_get_priority_max
.global _sched_get_priority_min
.global _sched_rr_get_interval
.global _mlock
.global _munlock
.global _mlockall
.global _munlockall
.global _vhangup
.global _modify_ldt
.global _pivot_root
.global __sysctl
.global _prctl
.global _arch_prctl
.global _adjtimex
.global _setrlimit
.global _chroot
.global _sync
.global _acct
.global _settimeofday
.global _mount
.global _umount2
.global _swapon
.global _swapoff
.global _reboot
.global _sethostname
.global _setdomainname
.global _iopl
.global _ioperm
.global _create_module
.global _init_module
.global _delete_module
.global _get_kernel_syms
.global _query_module
.global _quotactl
.global _nfsservctl
.global _getpmsg
.global _putpmsg
.global _afs_syscall
.global _tuxcall
.global _security
.global _gettid
.global _readahead
.global _setxattr
.global _lsetxattr
.global _fsetxattr
.global _getxattr
.global _lgetxattr
.global _fgetxattr
.global _listxattr
.global _llistxattr
.global _flistxattr
.global _removexattr
.global _lremovexattr
.global _fremovexattr
.global _tkill
.global _time
.global _futex
.global _sched_setaffinity
.global _sched_getaffinity
.global _set_thread_area
.global _io_setup
.global _io_destroy
.global _io_getevents
.global _io_submit
.global _io_cancel
.global _get_thread_area
.global _lookup_dcookie
.global _epoll_create
.global _epoll_ctl_old
.global _epoll_wait_old
.global _remap_file_pages
.global _getdents64
.global _set_tid_address
.global _restart_syscall
.global _semtimedop
.global _fadvise64
.global _timer_create
.global _timer_settime
.global _timer_gettime
.global _timer_getoverrun
.global _timer_delete
.global _clock_settime
.global _clock_gettime
.global _clock_getres
.global _clock_nanosleep
.global _exit_group
.global _epoll_wait
.global _epoll_ctl
.global _tgkill
.global _utimes
.global _vserver
.global _mbind
.global _set_mempolicy
.global _get_mempolicy
.global _mq_open
.global _mq_unlink
.global _mq_timedsend
.global _mq_timedreceive
.global _mq_notify
.global _mq_getsetattr
.global _kexec_load
.global _waitid
.global _add_key
.global _request_key
.global _keyctl
.global _ioprio_set
.global _ioprio_get
.global _inotify_init
.global _inotify_add_watch
.global _inotify_rm_watch
.global _migrate_pages
.global _openat
.global _mkdirat
.global _mknodat
.global _fchownat
.global _futimesat
.global _newfstatat
.global _unlinkat
.global _renameat
.global _linkat
.global _symlinkat
.global _readlinkat
.global _fchmodat
.global _faccessat
.global _pselect6
.global _ppoll
.global _unshare
.global _set_robust_list
.global _get_robust_list
.global _splice
.global _tee
.global _sync_file_range
.global _vmsplice
.global _move_pages
.global _utimensat
.global _epoll_pwait
.global _signalfd
.global _timerfd_create
.global _eventfd
.global _fallocate
.global _timerfd_settime
.global _timerfd_gettime
.global _accept4
.global _signalfd4
.global _eventfd2
.global _epoll_create1
.global _dup3
.global _pipe2
.global _inotify_init1
.global _preadv
.global _pwritev
.global _rt_tgsigqueueinfo
.global _perf_event_open
.global _recvmmsg
.global _fanotify_init
.global _fanotify_mark
.global _prlimit64
.global _name_to_handle_at
.global _open_by_handle_at
.global _clock_adjtime
.global _syncfs
.global _sendmmsg
.global _setns
.global _getcpu
.global _process_vm_readv
.global _process_vm_writev
.global _kcmp
.global _finit_module
.global _sched_setattr
.global _sched_getattr
.global _renameat2
.global _seccomp
.global _getrandom
.global _memfd_create
.global _kexec_file_load
.global _bpf

.global _start 
_start:
    call main
    call _exit

_read:
    movq $0, %rax 
    syscall 
    ret
_write:
    movq $1, %rax 
    syscall 
    ret
_open:
    movq $2, %rax 
    syscall 
    ret
_close:
    movq $3, %rax 
    syscall 
    ret
_stat:
    movq $4, %rax 
    syscall 
    ret
_fstat:
    movq $5, %rax 
    syscall 
    ret
_lstat:
    movq $6, %rax 
    syscall 
    ret
_poll:
    movq $7, %rax 
    syscall 
    ret
_lseek:
    movq $8, %rax 
    syscall 
    ret
_mmap:
    movq $9, %rax 
	movq %rcx, %r10
    syscall 
    ret
_mprotect:
    movq $10, %rax 
    movq %rcx, %r10
    syscall 
    ret
_munmap:
    movq $11, %rax 
    syscall 
    ret
_brk:
    movq $12, %rax 
    syscall 
    ret
_rt_sigaction:
    movq $13, %rax 
    syscall 
    ret
_rt_sigprocmask:
    movq $14, %rax 
    syscall 
    ret
_rt_sigreturn:
    movq $15, %rax 
    syscall 
    ret
_ioctl:
    movq $16, %rax 
    syscall 
    ret
_pread64:
    movq $17, %rax 
    syscall 
    ret
_pwrite64:
    movq $18, %rax 
    syscall 
    ret
_readv:
    movq $19, %rax 
    syscall 
    ret
_writev:
    movq $20, %rax 
    syscall 
    ret
_access:
    movq $21, %rax 
    syscall 
    ret
_pipe:
    movq $22, %rax 
    syscall 
    ret
_select:
    movq $23, %rax 
    syscall 
    ret
_sched_yield:
    movq $24, %rax 
    syscall 
    ret
_mremap:
    movq $25, %rax 
    syscall 
    ret
_msync:
    movq $26, %rax 
    syscall 
    ret
_mincore:
    movq $27, %rax 
    syscall 
    ret
_madvise:
    movq $28, %rax 
    syscall 
    ret
_shmget:
    movq $29, %rax 
    syscall 
    ret
_shmat:
    movq $30, %rax 
    syscall 
    ret
_shmctl:
    movq $31, %rax 
    syscall 
    ret
_dup:
    movq $32, %rax 
    syscall 
    ret
_dup2:
    movq $33, %rax 
    syscall 
    ret
_pause:
    movq $34, %rax 
    syscall 
    ret
_nanosleep:
    movq $35, %rax 
    syscall 
    ret
_getitimer:
    movq $36, %rax 
    syscall 
    ret
_alarm:
    movq $37, %rax 
    syscall 
    ret
_setitimer:
    movq $38, %rax 
    syscall 
    ret
_getpid:
    movq $39, %rax 
    syscall 
    ret
_sendfile:
    movq $40, %rax 
    syscall 
    ret
_socket:
    movq $41, %rax 
    syscall 
    ret
_connect:
    movq $42, %rax 
    syscall 
    ret
_accept:
    movq $43, %rax 
    syscall 
    ret
_sendto:
    movq $44, %rax 
    syscall 
    ret
_recvfrom:
    movq $45, %rax 
    syscall 
    ret
_sendmsg:
    movq $46, %rax 
    syscall 
    ret
_recvmsg:
    movq $47, %rax 
    syscall 
    ret
_shutdown:
    movq $48, %rax 
    syscall 
    ret
_bind:
    movq $49, %rax 
    syscall 
    ret
_listen:
    movq $50, %rax 
    syscall 
    ret
_getsockname:
    movq $51, %rax 
    syscall 
    ret
_getpeername:
    movq $52, %rax 
    syscall 
    ret
_socketpair:
    movq $53, %rax 
    syscall 
    ret
_setsockopt:
    movq $54, %rax 
    syscall 
    ret
_getsockopt:
    movq $55, %rax 
    syscall 
    ret
_clone:
    movq $56, %rax 
    syscall 
    ret
_fork:
    movq $57, %rax 
    syscall 
    ret
_vfork:
    movq $58, %rax 
    syscall 
    ret
_execve:
    movq $59, %rax 
    syscall 
    ret
_exit:
    movq $60, %rax 
    syscall 
    ret
_wait4:
    movq $61, %rax 
    syscall 
    ret
_kill:
    movq $62, %rax 
    syscall 
    ret
_uname:
    movq $63, %rax 
    syscall 
    ret
_semget:
    movq $64, %rax 
    syscall 
    ret
_semop:
    movq $65, %rax 
    syscall 
    ret
_semctl:
    movq $66, %rax 
    syscall 
    ret
_shmdt:
    movq $67, %rax 
    syscall 
    ret
_msgget:
    movq $68, %rax 
    syscall 
    ret
_msgsnd:
    movq $69, %rax 
    syscall 
    ret
_msgrcv:
    movq $70, %rax 
    syscall 
    ret
_msgctl:
    movq $71, %rax 
    syscall 
    ret
_fcntl:
    movq $72, %rax 
    syscall 
    ret
_flock:
    movq $73, %rax 
    syscall 
    ret
_fsync:
    movq $74, %rax 
    syscall 
    ret
_fdatasync:
    movq $75, %rax 
    syscall 
    ret
_truncate:
    movq $76, %rax 
    syscall 
    ret
_ftruncate:
    movq $77, %rax 
    syscall 
    ret
_getdents:
    movq $78, %rax 
    syscall 
    ret
_getcwd:
    movq $79, %rax 
    syscall 
    ret
_chdir:
    movq $80, %rax 
    syscall 
    ret
_fchdir:
    movq $81, %rax 
    syscall 
    ret
_rename:
    movq $82, %rax 
    syscall 
    ret
_mkdir:
    movq $83, %rax 
    syscall 
    ret
_rmdir:
    movq $84, %rax 
    syscall 
    ret
_creat:
    movq $85, %rax 
    syscall 
    ret
_link:
    movq $86, %rax 
    syscall 
    ret
_unlink:
    movq $87, %rax 
    syscall 
    ret
_symlink:
    movq $88, %rax 
    syscall 
    ret
_readlink:
    movq $89, %rax 
    syscall 
    ret
_chmod:
    movq $90, %rax 
    syscall 
    ret
_fchmod:
    movq $91, %rax 
    syscall 
    ret
_chown:
    movq $92, %rax 
    syscall 
    ret
_fchown:
    movq $93, %rax 
    syscall 
    ret
_lchown:
    movq $94, %rax 
    syscall 
    ret
_umask:
    movq $95, %rax 
    syscall 
    ret
_gettimeofday:
    movq $96, %rax 
    syscall 
    ret
_getrlimit:
    movq $97, %rax 
    syscall 
    ret
_getrusage:
    movq $98, %rax 
    syscall 
    ret
_sysinfo:
    movq $99, %rax 
    syscall 
    ret
_times:
    movq $100, %rax 
    syscall 
    ret
_ptrace:
    movq $101, %rax 
    syscall 
    ret
_getuid:
    movq $102, %rax 
    syscall 
    ret
_syslog:
    movq $103, %rax 
    syscall 
    ret
_getgid:
    movq $104, %rax 
    syscall 
    ret
_setuid:
    movq $105, %rax 
    syscall 
    ret
_setgid:
    movq $106, %rax 
    syscall 
    ret
_geteuid:
    movq $107, %rax 
    syscall 
    ret
_getegid:
    movq $108, %rax 
    syscall 
    ret
_setpgid:
    movq $109, %rax 
    syscall 
    ret
_getppid:
    movq $110, %rax 
    syscall 
    ret
_getpgrp:
    movq $111, %rax 
    syscall 
    ret
_setsid:
    movq $112, %rax 
    syscall 
    ret
_setreuid:
    movq $113, %rax 
    syscall 
    ret
_setregid:
    movq $114, %rax 
    syscall 
    ret
_getgroups:
    movq $115, %rax 
    syscall 
    ret
_setgroups:
    movq $116, %rax 
    syscall 
    ret
_setresuid:
    movq $117, %rax 
    syscall 
    ret
_getresuid:
    movq $118, %rax 
    syscall 
    ret
_setresgid:
    movq $119, %rax 
    syscall 
    ret
_getresgid:
    movq $120, %rax 
    syscall 
    ret
_getpgid:
    movq $121, %rax 
    syscall 
    ret
_setfsuid:
    movq $122, %rax 
    syscall 
    ret
_setfsgid:
    movq $123, %rax 
    syscall 
    ret
_getsid:
    movq $124, %rax 
    syscall 
    ret
_capget:
    movq $125, %rax 
    syscall 
    ret
_capset:
    movq $126, %rax 
    syscall 
    ret
_rt_sigpending:
    movq $127, %rax 
    syscall 
    ret
_rt_sigtimedwait:
    movq $128, %rax 
    syscall 
    ret
_rt_sigqueueinfo:
    movq $129, %rax 
    syscall 
    ret
_rt_sigsuspend:
    movq $130, %rax 
    syscall 
    ret
_sigaltstack:
    movq $131, %rax 
    syscall 
    ret
_utime:
    movq $132, %rax 
    syscall 
    ret
_mknod:
    movq $133, %rax 
    syscall 
    ret
_uselib:
    movq $134, %rax 
    syscall 
    ret
_personality:
    movq $135, %rax 
    syscall 
    ret
_ustat:
    movq $136, %rax 
    syscall 
    ret
_statfs:
    movq $137, %rax 
    syscall 
    ret
_fstatfs:
    movq $138, %rax 
    syscall 
    ret
_sysfs:
    movq $139, %rax 
    syscall 
    ret
_getpriority:
    movq $140, %rax 
    syscall 
    ret
_setpriority:
    movq $141, %rax 
    syscall 
    ret
_sched_setparam:
    movq $142, %rax 
    syscall 
    ret
_sched_getparam:
    movq $143, %rax 
    syscall 
    ret
_sched_setscheduler:
    movq $144, %rax 
    syscall 
    ret
_sched_getscheduler:
    movq $145, %rax 
    syscall 
    ret
_sched_get_priority_max:
    movq $146, %rax 
    syscall 
    ret
_sched_get_priority_min:
    movq $147, %rax 
    syscall 
    ret
_sched_rr_get_interval:
    movq $148, %rax 
    syscall 
    ret
_mlock:
    movq $149, %rax 
    syscall 
    ret
_munlock:
    movq $150, %rax 
    syscall 
    ret
_mlockall:
    movq $151, %rax 
    syscall 
    ret
_munlockall:
    movq $152, %rax 
    syscall 
    ret
_vhangup:
    movq $153, %rax 
    syscall 
    ret
_modify_ldt:
    movq $154, %rax 
    syscall 
    ret
_pivot_root:
    movq $155, %rax 
    syscall 
    ret
__sysctl:
    movq $156, %rax 
    syscall 
    ret
_prctl:
    movq $157, %rax 
    syscall 
    ret
_arch_prctl:
    movq $158, %rax 
    syscall 
    ret
_adjtimex:
    movq $159, %rax 
    syscall 
    ret
_setrlimit:
    movq $160, %rax 
    syscall 
    ret
_chroot:
    movq $161, %rax 
    syscall 
    ret
_sync:
    movq $162, %rax 
    syscall 
    ret
_acct:
    movq $163, %rax 
    syscall 
    ret
_settimeofday:
    movq $164, %rax 
    syscall 
    ret
_mount:
    movq $165, %rax 
    syscall 
    ret
_umount2:
    movq $166, %rax 
    syscall 
    ret
_swapon:
    movq $167, %rax 
    syscall 
    ret
_swapoff:
    movq $168, %rax 
    syscall 
    ret
_reboot:
    movq $169, %rax 
    syscall 
    ret
_sethostname:
    movq $170, %rax 
    syscall 
    ret
_setdomainname:
    movq $171, %rax 
    syscall 
    ret
_iopl:
    movq $172, %rax 
    syscall 
    ret
_ioperm:
    movq $173, %rax 
    syscall 
    ret
_create_module:
    movq $174, %rax 
    syscall 
    ret
_init_module:
    movq $175, %rax 
    syscall 
    ret
_delete_module:
    movq $176, %rax 
    syscall 
    ret
_get_kernel_syms:
    movq $177, %rax 
    syscall 
    ret
_query_module:
    movq $178, %rax 
    syscall 
    ret
_quotactl:
    movq $179, %rax 
    syscall 
    ret
_nfsservctl:
    movq $180, %rax 
    syscall 
    ret
_getpmsg:
    movq $181, %rax 
    syscall 
    ret
_putpmsg:
    movq $182, %rax 
    syscall 
    ret
_afs_syscall:
    movq $183, %rax 
    syscall 
    ret
_tuxcall:
    movq $184, %rax 
    syscall 
    ret
_security:
    movq $185, %rax 
    syscall 
    ret
_gettid:
    movq $186, %rax 
    syscall 
    ret
_readahead:
    movq $187, %rax 
    syscall 
    ret
_setxattr:
    movq $188, %rax 
    syscall 
    ret
_lsetxattr:
    movq $189, %rax 
    syscall 
    ret
_fsetxattr:
    movq $190, %rax 
    syscall 
    ret
_getxattr:
    movq $191, %rax 
    syscall 
    ret
_lgetxattr:
    movq $192, %rax 
    syscall 
    ret
_fgetxattr:
    movq $193, %rax 
    syscall 
    ret
_listxattr:
    movq $194, %rax 
    syscall 
    ret
_llistxattr:
    movq $195, %rax 
    syscall 
    ret
_flistxattr:
    movq $196, %rax 
    syscall 
    ret
_removexattr:
    movq $197, %rax 
    syscall 
    ret
_lremovexattr:
    movq $198, %rax 
    syscall 
    ret
_fremovexattr:
    movq $199, %rax 
    syscall 
    ret
_tkill:
    movq $200, %rax 
    syscall 
    ret
_time:
    movq $201, %rax 
    syscall 
    ret
_futex:
    movq $202, %rax 
    syscall 
    ret
_sched_setaffinity:
    movq $203, %rax 
    syscall 
    ret
_sched_getaffinity:
    movq $204, %rax 
    syscall 
    ret
_set_thread_area:
    movq $205, %rax 
    syscall 
    ret
_io_setup:
    movq $206, %rax 
    syscall 
    ret
_io_destroy:
    movq $207, %rax 
    syscall 
    ret
_io_getevents:
    movq $208, %rax 
    syscall 
    ret
_io_submit:
    movq $209, %rax 
    syscall 
    ret
_io_cancel:
    movq $210, %rax 
    syscall 
    ret
_get_thread_area:
    movq $211, %rax 
    syscall 
    ret
_lookup_dcookie:
    movq $212, %rax 
    syscall 
    ret
_epoll_create:
    movq $213, %rax 
    syscall 
    ret
_epoll_ctl_old:
    movq $214, %rax 
    syscall 
    ret
_epoll_wait_old:
    movq $215, %rax 
    syscall 
    ret
_remap_file_pages:
    movq $216, %rax 
    syscall 
    ret
_getdents64:
    movq $217, %rax 
    syscall 
    ret
_set_tid_address:
    movq $218, %rax 
    syscall 
    ret
_restart_syscall:
    movq $219, %rax 
    syscall 
    ret
_semtimedop:
    movq $220, %rax 
    syscall 
    ret
_fadvise64:
    movq $221, %rax 
    syscall 
    ret
_timer_create:
    movq $222, %rax 
    syscall 
    ret
_timer_settime:
    movq $223, %rax 
    syscall 
    ret
_timer_gettime:
    movq $224, %rax 
    syscall 
    ret
_timer_getoverrun:
    movq $225, %rax 
    syscall 
    ret
_timer_delete:
    movq $226, %rax 
    syscall 
    ret
_clock_settime:
    movq $227, %rax 
    syscall 
    ret
_clock_gettime:
    movq $228, %rax 
    syscall 
    ret
_clock_getres:
    movq $229, %rax 
    syscall 
    ret
_clock_nanosleep:
    movq $230, %rax 
    syscall 
    ret
_exit_group:
    movq $231, %rax 
    syscall 
    ret
_epoll_wait:
    movq $232, %rax 
    syscall 
    ret
_epoll_ctl:
    movq $233, %rax 
    syscall 
    ret
_tgkill:
    movq $234, %rax 
    syscall 
    ret
_utimes:
    movq $235, %rax 
    syscall 
    ret
_vserver: 
    movq $236, %rax 
    syscall 
    ret
_mbind:
    movq $237, %rax 
    syscall 
    ret
_set_mempolicy:
    movq $238, %rax 
    syscall 
    ret
_get_mempolicy:
    movq $239, %rax 
    syscall 
    ret
_mq_open:
    movq $240, %rax 
    syscall 
    ret
_mq_unlink:
    movq $241, %rax 
    syscall 
    ret
_mq_timedsend:
    movq $242, %rax 
    syscall 
    ret
_mq_timedreceive:
    movq $243, %rax 
    syscall 
    ret
_mq_notify:
    movq $244, %rax 
    syscall 
    ret
_mq_getsetattr:
    movq $245, %rax 
    syscall 
    ret
_kexec_load:
    movq $246, %rax 
    syscall 
    ret
_waitid:
    movq $247, %rax 
    syscall 
    ret
_add_key:
    movq $248, %rax 
    syscall 
    ret
_request_key:
    movq $249, %rax 
    syscall 
    ret
_keyctl:
    movq $250, %rax 
    syscall 
    ret
_ioprio_set:
    movq $251, %rax 
    syscall 
    ret
_ioprio_get:
    movq $252, %rax 
    syscall 
    ret
_inotify_init:
    movq $253, %rax 
    syscall 
    ret
_inotify_add_watch:
    movq $254, %rax 
    syscall 
    ret
_inotify_rm_watch:
    movq $255, %rax 
    syscall 
    ret
_migrate_pages:
    movq $256, %rax 
    syscall 
    ret
_openat:
    movq $257, %rax 
    syscall 
    ret
_mkdirat:
    movq $258, %rax 
    syscall 
    ret
_mknodat:
    movq $259, %rax 
    syscall 
    ret
_fchownat:
    movq $260, %rax 
    syscall 
    ret
_futimesat:
    movq $261, %rax 
    syscall 
    ret
_newfstatat:
    movq $262, %rax 
    syscall 
    ret
_unlinkat:
    movq $263, %rax 
    syscall 
    ret
_renameat:
    movq $264, %rax 
    syscall 
    ret
_linkat:
    movq $265, %rax 
    syscall 
    ret
_symlinkat:
    movq $266, %rax 
    syscall 
    ret
_readlinkat:
    movq $267, %rax 
    syscall 
    ret
_fchmodat:
    movq $268, %rax 
    syscall 
    ret
_faccessat:
    movq $269, %rax 
    syscall 
    ret
_pselect6:
    movq $270, %rax 
    syscall 
    ret
_ppoll:
    movq $271, %rax 
    syscall 
    ret
_unshare:
    movq $272, %rax 
    syscall 
    ret
_set_robust_list:
    movq $273, %rax 
    syscall 
    ret
_get_robust_list:
    movq $274, %rax 
    syscall 
    ret
_splice:
    movq $275, %rax 
    syscall 
    ret
_tee:
    movq $276, %rax 
    syscall 
    ret
_sync_file_range:
    movq $277, %rax 
    syscall 
    ret
_vmsplice:
    movq $278, %rax 
    syscall 
    ret
_move_pages:
    movq $279, %rax 
    syscall 
    ret
_utimensat:
    movq $280, %rax 
    syscall 
    ret
_epoll_pwait:
    movq $281, %rax 
    syscall 
    ret
_signalfd:
    movq $282, %rax 
    syscall 
    ret
_timerfd_create:
    movq $283, %rax 
    syscall 
    ret
_eventfd:
    movq $284, %rax 
    syscall 
    ret
_fallocate:
    movq $285, %rax 
    syscall 
    ret
_timerfd_settime:
    movq $286, %rax 
    syscall 
    ret
_timerfd_gettime:
    movq $287, %rax 
    syscall 
    ret
_accept4:
    movq $288, %rax 
    syscall 
    ret
_signalfd4:
    movq $289, %rax 
    syscall 
    ret
_eventfd2:
    movq $290, %rax 
    syscall 
    ret
_epoll_create1:
    movq $291, %rax 
    syscall 
    ret
_dup3:
    movq $292, %rax 
    syscall 
    ret
_pipe2:
    movq $293, %rax 
    syscall 
    ret
_inotify_init1:
    movq $294, %rax 
    syscall 
    ret
_preadv:
    movq $295, %rax 
    syscall 
    ret
_pwritev:
    movq $296, %rax 
    syscall 
    ret
_rt_tgsigqueueinfo:
    movq $297, %rax 
    syscall 
    ret
_perf_event_open:
    movq $298, %rax 
    syscall 
    ret
_recvmmsg:
    movq $299, %rax 
    syscall 
    ret
_fanotify_init:
    movq $300, %rax 
    syscall 
    ret
_fanotify_mark:
    movq $301, %rax 
    syscall 
    ret
_prlimit64:
    movq $302, %rax 
    syscall 
    ret
_name_to_handle_at:
    movq $303, %rax 
    syscall 
    ret
_open_by_handle_at:
    movq $304, %rax 
    syscall 
    ret
_clock_adjtime:
    movq $305, %rax 
    syscall 
    ret
_syncfs:
    movq $306, %rax 
    syscall 
    ret
_sendmmsg:
    movq $307, %rax 
    syscall 
    ret
_setns:
    movq $308, %rax 
    syscall 
    ret
_getcpu:
    movq $309, %rax 
    syscall 
    ret
_process_vm_readv:
    movq $310, %rax 
    syscall 
    ret
_process_vm_writev:
    movq $311, %rax 
    syscall 
    ret
_kcmp:
    movq $312, %rax 
    syscall 
    ret
_finit_module:
    movq $313, %rax 
    syscall 
    ret
_sched_setattr:
    movq $314, %rax 
    syscall 
    ret
_sched_getattr:
    movq $315, %rax 
    syscall 
    ret
_renameat2:
    movq $316, %rax 
    syscall 
    ret
_seccomp:
    movq $317, %rax 
    syscall 
    ret
_getrandom:
    movq $318, %rax 
    syscall 
    ret
_memfd_create:
    movq $319, %rax 
    syscall 
    ret
_kexec_file_load:
    movq $320, %rax 
    syscall 
    ret
_bpf:
    movq $321, %rax 
    syscall 
    ret

