.class public Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;
.super Lcom/caiqiqi/wifi_demo/ui/Floating;
.source "FloatingActivity.java"


# static fields
.field public static final parce_ScanResult:Ljava/lang/String; = "ScanResult"


# instance fields
.field private mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

.field private mScanResult:Landroid/net/wifi/ScanResult;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/Floating;-><init>()V

    return-void
.end method

.method private constructNetworkContent()V
    .locals 5

    .prologue
    .line 115
    sget-object v2, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {v2, v3}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "str_security":Ljava/lang/String;
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-static {v2, v3, v1}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 119
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 120
    new-instance v2, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {v2, p0, v3, v4}, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;-><init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V

    iput-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->isCurrentNetwork()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->isCurrentConfigurationStatus(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    :cond_1
    new-instance v2, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {v2, p0, v3, v4}, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;-><init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V

    iput-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

    goto :goto_0

    .line 126
    :cond_2
    new-instance v2, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {v2, p0, v3, v4}, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;-><init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V

    iput-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

    goto :goto_0
.end method

.method private doNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    const-string v0, "ScanResult"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 82
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "No data in Intent!"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    invoke-virtual {p0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->finish()V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->constructNetworkContent()V

    .line 90
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

    invoke-virtual {p0, v0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->setContent(Lcom/caiqiqi/wifi_demo/ui/Floating$Content;)V

    goto :goto_0
.end method

.method private isCurrentConfigurationStatus(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "str_security"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 107
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private isCurrentNetwork()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 98
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 75
    invoke-virtual {p0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->doNewIntent(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->setIntent(Landroid/content/Intent;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->doNewIntent(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
