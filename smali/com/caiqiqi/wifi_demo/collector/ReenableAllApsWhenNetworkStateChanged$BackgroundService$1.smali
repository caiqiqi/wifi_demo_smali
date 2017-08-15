.class Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService$1;
.super Landroid/content/BroadcastReceiver;
.source "ReenableAllApsWhenNetworkStateChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;


# direct methods
.method constructor <init>(Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "str_action":Ljava/lang/String;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 56
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 57
    .local v0, "detailed":Landroid/net/NetworkInfo$DetailedState;
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v3, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v3, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;

    invoke-static {v3}, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->access$000(Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->access$002(Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;Z)Z

    .line 62
    invoke-static {p1}, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged;->access$100(Landroid/content/Context;)V

    .line 64
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;

    invoke-virtual {v3}, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->stopSelf()V

    .line 68
    .end local v0    # "detailed":Landroid/net/NetworkInfo$DetailedState;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method
