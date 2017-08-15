.class public abstract Lcom/caiqiqi/wifi_demo/collector/BaseContent;
.super Ljava/lang/Object;
.source "BaseContent.java"

# interfaces
.implements Lcom/caiqiqi/wifi_demo/ui/Floating$Content;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field protected mCancelOnClick:Landroid/view/View$OnClickListener;

.field public mChangePasswordOnClick:Landroid/view/View$OnClickListener;

.field protected final mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

.field protected final mIsOpenNetwork:Z

.field protected mNumOpenNetworksKept:I

.field protected final mScanResult:Landroid/net/wifi/ScanResult;

.field protected final mScanResultSecurity:Ljava/lang/String;

.field protected mView:Landroid/view/View;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V
    .locals 5
    .param p1, "floating"    # Lcom/caiqiqi/wifi_demo/ui/Floating;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p3, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v2, Lcom/caiqiqi/wifi_demo/collector/BaseContent$1;

    invoke-direct {v2, p0}, Lcom/caiqiqi/wifi_demo/collector/BaseContent$1;-><init>(Lcom/caiqiqi/wifi_demo/collector/BaseContent;)V

    iput-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mCancelOnClick:Landroid/view/View$OnClickListener;

    .line 85
    new-instance v2, Lcom/caiqiqi/wifi_demo/collector/BaseContent$2;

    invoke-direct {v2, p0}, Lcom/caiqiqi/wifi_demo/collector/BaseContent$2;-><init>(Lcom/caiqiqi/wifi_demo/collector/BaseContent;)V

    iput-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mChangePasswordOnClick:Landroid/view/View$OnClickListener;

    .line 48
    iput-object p2, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 49
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    .line 50
    iput-object p3, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 51
    sget-object v2, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {v2, v3}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mScanResultSecurity:Ljava/lang/String;

    .line 52
    sget-object v2, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mScanResultSecurity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->isOpenNetwork(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mIsOpenNetwork:Z

    .line 54
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const/high16 v3, 0x7f040000

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mView:Landroid/view/View;

    .line 56
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mView:Landroid/view/View;

    const v3, 0x7f0a0007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mScanResult:Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dbm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mView:Landroid/view/View;

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mScanResult:Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MHz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    sget-object v2, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {v2, v3}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->getDisplaySecirityString(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "rawSecurity":Ljava/lang/String;
    sget-object v2, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    invoke-virtual {v2, v0}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->isOpenNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v3, 0x7f07002c

    invoke-virtual {v2, v3}, Lcom/caiqiqi/wifi_demo/ui/Floating;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "readableSecurity":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mView:Landroid/view/View;

    const v3, 0x7f0a0009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mView:Landroid/view/View;

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    invoke-virtual {p1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_num_open_networks_kept"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mNumOpenNetworksKept:I

    .line 68
    return-void

    .end local v1    # "readableSecurity":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 60
    goto :goto_0
.end method


# virtual methods
.method public changePassword()V
    .locals 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    new-instance v1, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;

    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {v1, v2, v3, v4}, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;-><init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v0, v1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->setContent(Lcom/caiqiqi/wifi_demo/ui/Floating$Content;)V

    .line 96
    return-void
.end method

.method protected getCancelString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->mView:Landroid/view/View;

    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz p2, :cond_0

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 82
    return-void

    .line 78
    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method
