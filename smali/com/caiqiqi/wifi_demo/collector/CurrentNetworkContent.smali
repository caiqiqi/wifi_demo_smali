.class public Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;
.super Lcom/caiqiqi/wifi_demo/collector/BaseContent;
.source "CurrentNetworkContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$GetCountTask;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field mConnectCount:I

.field private mForgetOnClick:Landroid/view/View$OnClickListener;

.field private mOnClickListeners:[Landroid/view/View$OnClickListener;

.field private mScanResult:Landroid/net/wifi/ScanResult;


# direct methods
.method public constructor <init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V
    .locals 6
    .param p1, "floating"    # Lcom/caiqiqi/wifi_demo/ui/Floating;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p3, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v5, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/caiqiqi/wifi_demo/collector/BaseContent;-><init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V

    .line 31
    const-string v2, "CurrentNetworkContent"

    iput-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->TAG:Ljava/lang/String;

    .line 138
    new-instance v2, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$1;

    invoke-direct {v2, p0}, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$1;-><init>(Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;)V

    iput-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mForgetOnClick:Landroid/view/View$OnClickListener;

    .line 158
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mForgetOnClick:Landroid/view/View$OnClickListener;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mChangePasswordOnClick:Landroid/view/View$OnClickListener;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mCancelOnClick:Landroid/view/View$OnClickListener;

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mOnClickListeners:[Landroid/view/View$OnClickListener;

    .line 38
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->findViewAndSetGone()V

    .line 40
    iput-object p3, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 41
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 42
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 45
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    new-instance v2, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$GetCountTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$GetCountTask;-><init>(Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$1;)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$GetCountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    invoke-direct {p0, v1, v0}, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->setText(Landroid/net/wifi/WifiInfo;Landroid/net/DhcpInfo;)V

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;)Landroid/net/wifi/ScanResult;
    .locals 1
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mScanResult:Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method private findViewAndSetGone()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    return-void
.end method

.method private findViewAndSetText(Landroid/net/wifi/WifiInfo;Landroid/net/DhcpInfo;)V
    .locals 3
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "dhcpInfo"    # Landroid/net/DhcpInfo;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Mbps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mScanResult:Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p2, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p2, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p2, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p2, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method private setText(Landroid/net/wifi/WifiInfo;Landroid/net/DhcpInfo;)V
    .locals 5
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "dhcpInfo"    # Landroid/net/DhcpInfo;

    .prologue
    .line 51
    if-nez p1, :cond_1

    .line 52
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v3, 0x7f07001c

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    .line 56
    .local v1, "state":Landroid/net/wifi/SupplicantState;
    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 57
    .local v0, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v2, :cond_2

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->findViewAndSetText(Landroid/net/wifi/WifiInfo;Landroid/net/DhcpInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mIsOpenNetwork:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getButtonOnClickListener(I)Landroid/view/View$OnClickListener;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mIsOpenNetwork:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mOnClickListeners:[Landroid/view/View$OnClickListener;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mOnClickListeners:[Landroid/view/View$OnClickListener;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getButtonText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 114
    packed-switch p1, :pswitch_data_0

    .line 127
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_1
    iget-boolean v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mIsOpenNetwork:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->getCancelString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :pswitch_2
    invoke-virtual {p0}, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->getCancelString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    return-object v0
.end method
