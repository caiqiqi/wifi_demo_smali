.class public Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;
.super Lcom/caiqiqi/wifi_demo/collector/BaseContent;
.source "NewNetworkContent.java"


# instance fields
.field private mConnectOnClick:Landroid/view/View$OnClickListener;

.field private mIsOpenNetwork:Z

.field private mOnClickListeners:[Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "floating"    # Lcom/caiqiqi/wifi_demo/ui/Floating;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p3, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/caiqiqi/wifi_demo/collector/BaseContent;-><init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V

    .line 19
    iput-boolean v2, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mIsOpenNetwork:Z

    .line 53
    new-instance v0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;

    invoke-direct {v0, p0}, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;-><init>(Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;)V

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mConnectOnClick:Landroid/view/View$OnClickListener;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mConnectOnClick:Landroid/view/View$OnClickListener;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mCancelOnClick:Landroid/view/View$OnClickListener;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mOnClickListeners:[Landroid/view/View$OnClickListener;

    .line 24
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->findViewAndSetGone()V

    .line 27
    sget-object v0, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mScanResultSecurity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->isOpenNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iput-boolean v3, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mIsOpenNetwork:Z

    .line 29
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mIsOpenNetwork:Z

    return v0
.end method

.method private findViewAndSetGone()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 36
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mView:Landroid/view/View;

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x2

    return v0
.end method

.method public getButtonOnClickListener(I)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mOnClickListeners:[Landroid/view/View$OnClickListener;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getButtonText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 95
    packed-switch p1, :pswitch_data_0

    .line 101
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-virtual {p0}, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->getCancelString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 107
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v1, 0x7f07001e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/caiqiqi/wifi_demo/ui/Floating;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
