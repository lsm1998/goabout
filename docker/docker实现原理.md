## 1.使用namespace完成资源隔离

````C
int clone(int (*child_func)(void *), void *child_stack, int flags, void *arg);
````

namespace 隔离的类型
1.UTS namespace
UTS(UNIX Time-sharing System)namespace提供了主机名与域名的隔离，这样每个docke容器就可以拥有独立的主机名和域名了，在网络上可以被视为一个独立的节点，而非宿主机上的一个进程。

2.IPC namespace
进程间通信(Inter-Process Communication，IPC)涉及的IPC资源包括常见的信号量、消息队列和共享内存。在同一个IPC namespace下的进程彼此可见，不同IPC namespace下的进程则互相不可见。

3.PID namespace
PID namespace隔离非常实用，它对进程PID重新标号，即两个不同namespace下的进程可以有相同的PID。每个PID namespace都有自己的计数程序。内核为所有的PID namespace维护了一个树状结构，最顶层的是系统初始时创建的，被称为root namespace，它创建的心PID namespace被称为child namespace(树的子节点)。
通过这种方式，不同的PID namespace会形成一个层级体系。所属的父节点可以看到子节点中的进程，并可以通过信号等方式对子节点中的进程产生影响。反过来，子节点却不能看到父节点PID namespace中的任何内容。

通过unshare()在原先进程上进行namespace隔离
unshare()与clone()很像，不同的是，unshare()运行在原先的进程上，不需要启动一个新进程，docker使用的clone()
sudo unshare --fork --pid --mount-proc bash
ps aux


## 2.使用CGroups完成资源的配额管理
cgroups(Control Groups) 是 linux 内核提供的一种机制，这种机制可以根据需求把一系列系统任务及其子任务整合(或分隔)到按资源划分等级
的不同组内，从而为系统资源管理提供一个统一的框架。简单说，cgroups 可以限制、记录任务组所使用的物理资源。本质上来说，cgroups 是内核
附加在程序上的一系列钩子(hook)，通过程序运行时对资源的调度触发相应的钩子以达到资源追踪和限制的目的。
