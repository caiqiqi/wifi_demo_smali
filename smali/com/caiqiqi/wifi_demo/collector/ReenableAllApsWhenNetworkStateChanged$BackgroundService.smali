.class public Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;
.super Landroid/app/Service;
.source "ReenableAllApsWhenNetworkStateChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundService"
.end annotation


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReenabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService$1;

    invoke-direct {v0, p0}, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService$1;-><init>(Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;)V

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->mReenabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->mReenabled:Z

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->mReenabled:Z

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 84
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    return-void
.end method
