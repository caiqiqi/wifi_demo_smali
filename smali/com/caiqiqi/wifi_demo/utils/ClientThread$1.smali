.class Lcom/caiqiqi/wifi_demo/utils/ClientThread$1;
.super Ljava/lang/Thread;
.source "ClientThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caiqiqi/wifi_demo/utils/ClientThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caiqiqi/wifi_demo/utils/ClientThread;


# direct methods
.method constructor <init>(Lcom/caiqiqi/wifi_demo/utils/ClientThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread$1;->this$0:Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 74
    const-string v3, "ClientThread"

    const-string v4, "\u5b50\u7ebf\u7a0b\u5f00\u542f"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread$1;->this$0:Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    invoke-static {v3}, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->access$000(Lcom/caiqiqi/wifi_demo/utils/ClientThread;)Ljava/io/BufferedReader;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 81
    :goto_0
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread$1;->this$0:Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    invoke-static {v3}, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->access$000(Lcom/caiqiqi/wifi_demo/utils/ClientThread;)Ljava/io/BufferedReader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 82
    const-string v3, "ClientThread"

    const-string v4, "\u5b50\u7ebf\u7a0b\u8bfb\u53d6\u5230\u6d88\u606f"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 85
    .local v2, "msg":Landroid/os/Message;
    sget v3, Lcom/caiqiqi/wifi_demo/utils/Constants;->MESSAGE_RECEIVED_FROM_SERVER:I

    iput v3, v2, Landroid/os/Message;->what:I

    .line 86
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread$1;->this$0:Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    invoke-static {v3}, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->access$100(Lcom/caiqiqi/wifi_demo/utils/ClientThread;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 90
    const-string v3, "ClientThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5b50\u7ebf\u7a0b\u7684mHandler\u5df2\u53d1\u9001\u6d88\u606f\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/caiqiqi/wifi_demo/utils/Constants;->MESSAGE_RECEIVED_FROM_SERVER:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method
