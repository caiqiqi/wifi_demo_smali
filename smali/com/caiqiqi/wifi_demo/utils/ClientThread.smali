.class public Lcom/caiqiqi/wifi_demo/utils/ClientThread;
.super Ljava/lang/Object;
.source "ClientThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caiqiqi/wifi_demo/utils/ClientThread$MyHander;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ClientThread"


# instance fields
.field private br:Ljava/io/BufferedReader;

.field private mHandler:Landroid/os/Handler;

.field private oos:Ljava/io/ObjectOutputStream;

.field private os:Ljava/io/OutputStream;

.field public rcvHandler:Landroid/os/Handler;

.field private s:Ljava/net/Socket;

.field private server_ip:Ljava/lang/String;

.field private server_port:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->mHandler:Landroid/os/Handler;

    .line 49
    iput-object p2, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->server_ip:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->server_port:I

    .line 52
    new-instance v0, Lcom/caiqiqi/wifi_demo/utils/ClientThread$MyHander;

    invoke-direct {v0, p0}, Lcom/caiqiqi/wifi_demo/utils/ClientThread$MyHander;-><init>(Lcom/caiqiqi/wifi_demo/utils/ClientThread;)V

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->rcvHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/caiqiqi/wifi_demo/utils/ClientThread;)Ljava/io/BufferedReader;
    .locals 1
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->br:Ljava/io/BufferedReader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/caiqiqi/wifi_demo/utils/ClientThread;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/caiqiqi/wifi_demo/utils/ClientThread;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/utils/ClientThread;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->convertScanResult(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/caiqiqi/wifi_demo/utils/ClientThread;)Ljava/io/ObjectOutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->oos:Ljava/io/ObjectOutputStream;

    return-object v0
.end method

.method private convertScanResult(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v1, "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 135
    .local v0, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-virtual {v0}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "strScanResult":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    .end local v0    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v2    # "strScanResult":Ljava/lang/String;
    :cond_0
    const-string v3, "ClientThread"

    const-string v4, "ScanResult\u5bf9\u8c61\u8f6c\u6362\u6210\u529f"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-object v1
.end method

.method private initSocket()V
    .locals 4

    .prologue
    .line 113
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->server_ip:Ljava/lang/String;

    iget v3, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->server_port:I

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->s:Ljava/net/Socket;

    .line 114
    const-string v1, "ClientThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket \u521b\u5efa\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->s:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->br:Ljava/io/BufferedReader;

    .line 121
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->s:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->os:Ljava/io/OutputStream;

    .line 122
    new-instance v1, Ljava/io/ObjectOutputStream;

    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->os:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->oos:Ljava/io/ObjectOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ClientThread"

    const-string v2, "initSocket failed !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    const-string v1, "ClientThread"

    const-string v2, "ClientThread started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->initSocket()V

    .line 64
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 71
    new-instance v1, Lcom/caiqiqi/wifi_demo/utils/ClientThread$1;

    invoke-direct {v1, p0}, Lcom/caiqiqi/wifi_demo/utils/ClientThread$1;-><init>(Lcom/caiqiqi/wifi_demo/utils/ClientThread;)V

    .line 98
    invoke-virtual {v1}, Lcom/caiqiqi/wifi_demo/utils/ClientThread$1;->start()V

    .line 102
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
