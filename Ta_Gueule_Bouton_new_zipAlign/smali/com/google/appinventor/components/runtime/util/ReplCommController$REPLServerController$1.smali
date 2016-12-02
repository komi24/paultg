.class Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;
.super Ljava/lang/Object;
.source "ReplCommController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->createServerThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, "mySocket":Ljava/net/ServerSocket;
    const/4 v4, 0x0

    .line 164
    .local v4, "myThread":Ljava/lang/Thread;
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3}, Ljava/net/ServerSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 165
    .end local v2    # "mySocket":Ljava/net/ServerSocket;
    .local v3, "mySocket":Ljava/net/ServerSocket;
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v3, v6}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 166
    new-instance v7, Ljava/net/InetSocketAddress;

    const/4 v6, 0x0

    check-cast v6, Ljava/net/InetAddress;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    # getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I
    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$000(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)I

    move-result v8

    invoke-direct {v7, v6, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v7}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 167
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    # getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->lock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$100(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 168
    :try_start_2
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    # setter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;
    invoke-static {v6, v3}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$202(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 169
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    :try_start_3
    const-string/jumbo v6, "REPL Controller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Starting a REPL Server thread on port "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    # getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I
    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$000(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 174
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    # getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$300(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/lang/Thread;

    move-result-object v6

    if-ne v6, v4, :cond_0

    .line 175
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    .line 176
    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 177
    .local v0, "clientSocket":Ljava/net/Socket;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    # getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->lock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$100(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 178
    :try_start_4
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    # getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$400(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    :try_start_5
    const-string/jumbo v6, "scheme"

    invoke-static {v6}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->serve(Lgnu/expr/Language;Ljava/net/Socket;)Ljava/lang/Thread;

    move-result-object v5

    .line 182
    .local v5, "telnetThread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 203
    .end local v0    # "clientSocket":Ljava/net/Socket;
    .end local v5    # "telnetThread":Ljava/lang/Thread;
    :cond_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->this$0:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    # getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController;->form:Lcom/google/appinventor/components/runtime/Form;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->access$600(Lcom/google/appinventor/components/runtime/util/ReplCommController;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 204
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    move-object v2, v3

    .line 206
    .end local v3    # "mySocket":Ljava/net/ServerSocket;
    .restart local v2    # "mySocket":Ljava/net/ServerSocket;
    :goto_0
    return-void

    .line 169
    .end local v2    # "mySocket":Ljava/net/ServerSocket;
    .restart local v3    # "mySocket":Ljava/net/ServerSocket;
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 184
    :catch_0
    move-exception v6

    move-object v2, v3

    .line 203
    .end local v3    # "mySocket":Ljava/net/ServerSocket;
    .restart local v2    # "mySocket":Ljava/net/ServerSocket;
    :goto_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->this$0:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    # getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController;->form:Lcom/google/appinventor/components/runtime/Form;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->access$600(Lcom/google/appinventor/components/runtime/util/ReplCommController;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 204
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 179
    .end local v2    # "mySocket":Ljava/net/ServerSocket;
    .restart local v0    # "clientSocket":Ljava/net/Socket;
    .restart local v3    # "mySocket":Ljava/net/ServerSocket;
    :catchall_1
    move-exception v6

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v6
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 186
    .end local v0    # "clientSocket":Ljava/net/Socket;
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 187
    .end local v3    # "mySocket":Ljava/net/ServerSocket;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "mySocket":Ljava/net/ServerSocket;
    :goto_2
    :try_start_a
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    # getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->lock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$100(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 188
    :try_start_b
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    # getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$200(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/net/ServerSocket;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    # getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$200(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/net/ServerSocket;

    move-result-object v6

    if-ne v6, v2, :cond_1

    .line 191
    const-string/jumbo v6, "REPL Controller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IOException with server socket on port "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    # getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I
    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$000(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", closing sockets"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string/jumbo v6, "REPL Controller"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    # invokes: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->closeSockets()V
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$500(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)V

    .line 195
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    # getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$300(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/lang/Thread;

    move-result-object v6

    if-ne v6, v4, :cond_1

    .line 196
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    const/4 v8, 0x0

    # setter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;
    invoke-static {v6, v8}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$302(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 199
    :cond_1
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 203
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->this$0:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    # getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController;->form:Lcom/google/appinventor/components/runtime/Form;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->access$600(Lcom/google/appinventor/components/runtime/util/ReplCommController;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 204
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 199
    :catchall_2
    move-exception v6

    :try_start_c
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 203
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v6

    :goto_3
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->this$0:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    # getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController;->form:Lcom/google/appinventor/components/runtime/Form;
    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->access$600(Lcom/google/appinventor/components/runtime/util/ReplCommController;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 204
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    throw v6

    .line 203
    .end local v2    # "mySocket":Ljava/net/ServerSocket;
    .restart local v3    # "mySocket":Ljava/net/ServerSocket;
    :catchall_4
    move-exception v6

    move-object v2, v3

    .end local v3    # "mySocket":Ljava/net/ServerSocket;
    .restart local v2    # "mySocket":Ljava/net/ServerSocket;
    goto :goto_3

    .line 186
    :catch_2
    move-exception v1

    goto/16 :goto_2

    .line 184
    :catch_3
    move-exception v6

    goto/16 :goto_1
.end method
