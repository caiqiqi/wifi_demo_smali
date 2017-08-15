.class public Lcom/caiqiqi/wifi_demo/utils/ClientThread$MyHander;
.super Landroid/os/Handler;
.source "ClientThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caiqiqi/wifi_demo/utils/ClientThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caiqiqi/wifi_demo/utils/ClientThread;


# direct methods
.method public constructor <init>(Lcom/caiqiqi/wifi_demo/utils/ClientThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread$MyHander;->this$0:Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    iget v3, p1, Landroid/os/Message;->what:I

    sget v4, Lcom/caiqiqi/wifi_demo/utils/Constants;->MESSAGE_TO_BE_SENT:I

    if-ne v3, v4, :cond_0

    .line 148
    const-string v3, "ClientThread"

    const-string v4, "rcvHandler\u6536\u5230\u6d88\u606f"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 150
    .local v1, "list_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread$MyHander;->this$0:Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    invoke-static {v3, v1}, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->access$200(Lcom/caiqiqi/wifi_demo/utils/ClientThread;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 154
    .local v2, "list_string":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread$MyHander;->this$0:Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    invoke-static {v3}, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->access$300(Lcom/caiqiqi/wifi_demo/utils/ClientThread;)Ljava/io/ObjectOutputStream;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread$MyHander;->this$0:Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    invoke-static {v3}, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->access$300(Lcom/caiqiqi/wifi_demo/utils/ClientThread;)Ljava/io/ObjectOutputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 156
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread$MyHander;->this$0:Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    invoke-static {v3}, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->access$300(Lcom/caiqiqi/wifi_demo/utils/ClientThread;)Ljava/io/ObjectOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    .end local v1    # "list_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v2    # "list_string":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local v1    # "list_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v2    # "list_string":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
