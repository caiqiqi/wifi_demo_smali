.class public Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;
.super Landroid/preference/PreferenceActivity;
.source "WifiScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;
    }
.end annotation


# static fields
.field private static final NETWORK_OK:Ljava/lang/String; = "\u7f51\u7edc\u8fde\u63a5\u7545\u901a"

.field private static final NOTICE_CHECK_NETWORK:Ljava/lang/String; = "\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

.field public static final TAG:Ljava/lang/String; = "WifiScanActivity"

.field private static final TIME_INTERVAL:I = 0xa

.field public static final parce_ScanResult:Ljava/lang/String; = "ScanResult"


# instance fields
.field private mAdapter:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;

.field private mClientThread:Lcom/caiqiqi/wifi_demo/utils/ClientThread;

.field private mContext:Landroid/content/Context;

.field public mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public mHandler:Landroid/os/Handler;

.field private mItemOnClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mList_Results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mServerIp:Ljava/lang/String;

.field private mServerPort:I

.field private mThread:Ljava/lang/Thread;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 52
    iput-object p0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$1;

    invoke-direct {v0, p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$1;-><init>(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)V

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 399
    new-instance v0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$4;

    invoke-direct {v0, p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$4;-><init>(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)V

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mItemOnClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mList_Results:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mList_Results:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mAdapter:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->sendMessage(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->getBSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->startFloatingActivity(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method private getBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initAdapter()V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;

    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mList_Results:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;-><init>(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mAdapter:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;

    .line 187
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mAdapter:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;

    invoke-virtual {p0, v0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    return-void
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$3;

    invoke-direct {v0, p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$3;-><init>(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)V

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mHandler:Landroid/os/Handler;

    .line 211
    return-void
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mListView:Landroid/widget/ListView;

    .line 192
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mItemOnClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 193
    return-void
.end method

.method private initPrefs()V
    .locals 4

    .prologue
    .line 111
    const-string v2, "IP"

    const-string v3, "server-ip-port"

    invoke-static {p0, v2, v3}, Lcom/caiqiqi/wifi_demo/utils/SharedPrefsUtil;->getStringPrefrences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "ip":Ljava/lang/String;
    const-string v2, "PORT"

    const-string v3, "server-ip-port"

    invoke-static {p0, v2, v3}, Lcom/caiqiqi/wifi_demo/utils/SharedPrefsUtil;->getIntPrefrences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, "port":I
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 115
    :cond_0
    sget-object v2, Lcom/caiqiqi/wifi_demo/utils/Constants;->SERVER_IP:Ljava/lang/String;

    iput-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mServerIp:Ljava/lang/String;

    .line 116
    sget v2, Lcom/caiqiqi/wifi_demo/utils/Constants;->SERVER_PORT:I

    iput v2, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mServerPort:I

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_1
    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mServerIp:Ljava/lang/String;

    .line 119
    iput v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mServerPort:I

    goto :goto_0
.end method

.method private initWifiManager()V
    .locals 1

    .prologue
    .line 125
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 126
    return-void
.end method

.method private isOnline()Z
    .locals 3

    .prologue
    .line 251
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 252
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 254
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 2

    .prologue
    .line 242
    const-string v0, "connectivity"

    .line 243
    invoke-virtual {p0, v0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 244
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 242
    return v0
.end method

.method private sendMessage(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const-string v1, "WifiScanActivity"

    const-string v2, "sendMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 161
    .local v0, "msg":Landroid/os/Message;
    sget v1, Lcom/caiqiqi/wifi_demo/utils/Constants;->MESSAGE_TO_BE_SENT:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 163
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mClientThread:Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    iget-object v1, v1, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->rcvHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "WifiScanActivity"

    const-string v2, "rcvHandler\u4e0d\u4e3anull"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mClientThread:Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    iget-object v1, v1, Lcom/caiqiqi/wifi_demo/utils/ClientThread;->rcvHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    :cond_0
    return-void
.end method

.method private sendToServer()V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "WifiScanActivity"

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u7545\u901a"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mList_Results:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "WifiScanActivity"

    const-string v1, "mList_Results\u4e0d\u4e3anull"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mList_Results:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->sendUsingThreadPool(Ljava/util/List;)V

    .line 139
    :cond_0
    return-void
.end method

.method private sendUsingThreadPool(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const-string v0, "WifiScanActivity"

    const-string v1, "sendUsingThreadPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 146
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$2;-><init>(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;Ljava/util/List;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 153
    return-void
.end method

.method private setServer()V
    .locals 2

    .prologue
    .line 490
    const-string v1, "Set Server"

    .line 491
    .local v1, "setServer":Ljava/lang/String;
    const-string v0, "Set IP and Port"

    .line 492
    .local v0, "message":Ljava/lang/String;
    invoke-static {p0, v1, v0}, Lcom/caiqiqi/wifi_demo/utils/DialogUtil;->showAlertWithTextDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method private startFloatingActivity(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scanResult_hotspot"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 421
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ScanResult"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 423
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 424
    return-void
.end method

.method private startNewThread()V
    .locals 4

    .prologue
    .line 177
    new-instance v0, Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mServerIp:Ljava/lang/String;

    iget v3, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mServerPort:I

    invoke-direct {v0, v1, v2, v3}, Lcom/caiqiqi/wifi_demo/utils/ClientThread;-><init>(Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mClientThread:Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    .line 179
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mClientThread:Lcom/caiqiqi/wifi_demo/utils/ClientThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mThread:Ljava/lang/Thread;

    .line 180
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    return-void
.end method

.method private stopSync()V
    .locals 3

    .prologue
    .line 501
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 510
    :cond_1
    const-string v0, "WifiScanActivity"

    const-string v1, "Sync stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f07001b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 512
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->initWifiManager()V

    .line 102
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->initAdapter()V

    .line 103
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->initListView()V

    .line 106
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->initHandler()V

    .line 107
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 437
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 480
    :cond_0
    :goto_0
    return v2

    .line 441
    :pswitch_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 444
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "WifiScanActivity"

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u7545\u901a"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->initPrefs()V

    .line 449
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->startNewThread()V

    .line 450
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->sendToServer()V

    .line 452
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 459
    :pswitch_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 460
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const-string v0, "WifiScanActivity"

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u7545\u901a"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->stopSync()V

    .line 465
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 472
    :pswitch_2
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    const-string v0, "WifiScanActivity"

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u7545\u901a"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->setServer()V

    goto :goto_0

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a002b
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 235
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 236
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 227
    return-void
.end method
