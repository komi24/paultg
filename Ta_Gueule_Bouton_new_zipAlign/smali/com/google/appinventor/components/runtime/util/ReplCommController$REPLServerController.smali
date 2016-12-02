.class Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;
.super Ljava/lang/Object;
.source "ReplCommController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/ReplCommController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "REPLServerController"
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private openClientSockets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private port:I

.field private serverThread:Ljava/lang/Thread;

.field private socket:Ljava/net/ServerSocket;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ReplCommController;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/ReplCommController;I)V
    .locals 2
    .param p2, "port"    # I

    .prologue
    const/4 v1, 0x0

    .line 129
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->this$0:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->lock:Ljava/lang/Object;

    .line 130
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    .line 131
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    .line 132
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    .line 133
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    .prologue
    .line 119
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/net/ServerSocket;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;
    .param p1, "x1"    # Ljava/net/ServerSocket;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->closeSockets()V

    return-void
.end method

.method private closeSockets()V
    .locals 8

    .prologue
    .line 212
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 213
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_1

    .line 214
    const-string/jumbo v3, "REPL Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Trying to close server sockets for port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :try_start_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 221
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    .line 222
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    .local v2, "openClientSocket":Ljava/net/Socket;
    :try_start_3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 229
    :try_start_4
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    goto :goto_0

    .line 234
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "openClientSocket":Ljava/net/Socket;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 225
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "openClientSocket":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v3, "REPL Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException closing client socket on port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string/jumbo v3, "REPL Controller"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 229
    :try_start_6
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 217
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "openClientSocket":Ljava/net/Socket;
    :catch_1
    move-exception v0

    .line 218
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v3, "REPL Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException closing server socket on port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string/jumbo v3, "REPL Controller"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 221
    const/4 v3, 0x0

    :try_start_8
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    .line 222
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 224
    .restart local v2    # "openClientSocket":Ljava/net/Socket;
    :try_start_9
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 229
    :try_start_a
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 225
    :catch_2
    move-exception v0

    .line 226
    :try_start_b
    const-string/jumbo v3, "REPL Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException closing client socket on port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string/jumbo v3, "REPL Controller"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 229
    :try_start_c
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    goto :goto_1

    :catchall_2
    move-exception v3

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    throw v3

    .line 221
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "openClientSocket":Ljava/net/Socket;
    :catchall_3
    move-exception v3

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    .line 222
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 224
    .restart local v2    # "openClientSocket":Ljava/net/Socket;
    :try_start_d
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 229
    :try_start_e
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    .line 225
    :catch_3
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_f
    const-string/jumbo v5, "REPL Controller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IOException closing client socket on port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string/jumbo v5, "REPL Controller"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 229
    :try_start_10
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v3

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    throw v3

    .line 231
    .end local v2    # "openClientSocket":Ljava/net/Socket;
    :cond_0
    throw v3

    .line 234
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 235
    return-void
.end method

.method private createServerThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;-><init>(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public ServerRunning()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public StartServer()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->closeSockets()V

    .line 140
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->createServerThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    :cond_0
    return-void
.end method

.method public StopServer()V
    .locals 3

    .prologue
    .line 147
    const-string/jumbo v0, "REPL Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stopping server on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    .line 149
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->closeSockets()V

    .line 150
    return-void
.end method
