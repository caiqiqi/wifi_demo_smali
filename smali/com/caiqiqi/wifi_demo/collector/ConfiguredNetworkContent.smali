.class public Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;
.super Lcom/caiqiqi/wifi_demo/collector/BaseContent;
.source "ConfiguredNetworkContent.java"


# instance fields
.field private mConnectOnClick:Landroid/view/View$OnClickListener;

.field private mForgetOnClick:Landroid/view/View$OnClickListener;

.field private mOpOnClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V
    .locals 1
    .param p1, "floating"    # Lcom/caiqiqi/wifi_demo/ui/Floating;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p3, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/caiqiqi/wifi_demo/collector/BaseContent;-><init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V

    .line 91
    new-instance v0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$1;

    invoke-direct {v0, p0}, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$1;-><init>(Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;)V

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mConnectOnClick:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$2;

    invoke-direct {v0, p0}, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$2;-><init>(Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;)V

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mOpOnClick:Landroid/view/View$OnClickListener;

    .line 121
    new-instance v0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$3;

    invoke-direct {v0, p0}, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$3;-><init>(Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;)V

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mForgetOnClick:Landroid/view/View$OnClickListener;

    .line 23
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->findViewAndSetGone()V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;)V
    .locals 0
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->forget()V

    return-void
.end method

.method private findViewAndSetGone()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 27
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mView:Landroid/view/View;

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    return-void
.end method

.method private forget()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 133
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v5, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mScanResultSecurity:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 134
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v0, 0x0

    .line 136
    .local v0, "b_result":Z
    if-eqz v1, :cond_0

    .line 138
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 139
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 141
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 142
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v4, 0x7f07001c

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    invoke-virtual {v2}, Lcom/caiqiqi/wifi_demo/ui/Floating;->finish()V

    .line 146
    return-void

    .line 139
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x3

    return v0
.end method

.method public getButtonOnClickListener(I)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 60
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mConnectOnClick:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 52
    :pswitch_1
    iget-boolean v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mIsOpenNetwork:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mForgetOnClick:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mOpOnClick:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 58
    :pswitch_2
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mCancelOnClick:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getButtonText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 66
    packed-switch p1, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :pswitch_1
    iget-boolean v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mIsOpenNetwork:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_2
    invoke-virtual {p0}, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->getCancelString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v1, 0x7f07001e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/caiqiqi/wifi_demo/ui/Floating;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
